#!/usr/bin/env python3
"""Build the numbered tables and figures in the undergraduate thesis."""

from __future__ import annotations

from pathlib import Path

import matplotlib

matplotlib.use("Agg")

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd


ROOT = Path(__file__).resolve().parents[1]
DATA = ROOT / "ALL" / "all_atus.dta"
TABLE_DIR = ROOT / "outputs" / "tables"
FIGURE_DIR = ROOT / "outputs" / "figures"
TABLE_DIR.mkdir(parents=True, exist_ok=True)
FIGURE_DIR.mkdir(parents=True, exist_ok=True)

COLORS = {"all": "#1f4e79", "men": "#d97706", "women": "#7c3aed"}
GROUPS = {"all": None, "men": 1, "women": 0}

CATEGORIES = [
    ("Other income-generating activities", "worka_paper"),
    ("Job search", "worku_paper"),
    ("Childcare", "childcare_paper"),
    ("Non-market work", "home_paper"),
    ("Core home production", "homeproduction_paper"),
    ("Home ownership activities", "homeown_paper"),
    ("Obtaining goods and services", "shopping_paper"),
    ("Others care", "othercare_paper"),
    ("Leisure", "leisure_paper"),
    ("TV watching", "tv_paper"),
    ("Socializing", "socializing_paper"),
    ("Sleeping", "sleeping_paper"),
    ("Eating and personal care", "ep_paper"),
    ("Other leisure", "otherleisure_paper"),
    ("Other", "other_paper"),
    ("Education", "education_paper"),
    ("Civic and religious activities", "civic_paper"),
    ("Own medical care", "ownmedical_paper"),
]
CATEGORY_NAMES = dict(CATEGORIES)
VARIABLE_NAMES = {variable: label for label, variable in CATEGORIES}


def weighted_mean(frame: pd.DataFrame, column: str) -> float:
    valid = frame[column].notna() & frame["weight_adj"].notna()
    return float(np.average(frame.loc[valid, column], weights=frame.loc[valid, "weight_adj"]))


def stars(pvalue: float) -> str:
    if pvalue < 0.01:
        return "***"
    if pvalue < 0.05:
        return "**"
    if pvalue < 0.10:
        return "*"
    return ""


def finish_figure(fig: plt.Figure, stem: str) -> None:
    fig.tight_layout()
    fig.savefig(FIGURE_DIR / f"{stem}.pdf")
    fig.savefig(FIGURE_DIR / f"{stem}.png", dpi=180)
    plt.close(fig)


def analysis_sample(data: pd.DataFrame) -> pd.DataFrame:
    sample = data[(data["age"] >= 18) & (data["age"] <= 65) & (data["other"] == 0)].copy()
    sample["date"] = pd.to_datetime(sample["interview_date"])
    sample["month"] = sample["date"].dt.month
    sample["quarter"] = sample["date"].dt.quarter
    return sample


def build_descriptive_tables(data: pd.DataFrame) -> None:
    sample = analysis_sample(data)
    periods = {
        "Average 2006-2008": sample["year"].between(2006, 2008),
        "Average 2009-2010": sample["year"].between(2009, 2010),
        "Average 2017-March 2020": (sample["year"] >= 2017)
        & (sample["date"] <= pd.Timestamp("2020-04-01")),
        "Average pandemic 2020": (sample["year"] == 2020)
        & (sample["date"] >= pd.Timestamp("2020-04-01")),
    }

    for number, (group, male_value) in enumerate(GROUPS.items(), start=1):
        group_sample = sample if male_value is None else sample[sample["male"] == male_value]
        rows = []
        for label, variable in [("Market work", "work_paper"), *CATEGORIES]:
            values = {
                period: weighted_mean(group_sample[mask.loc[group_sample.index]], variable)
                for period, mask in periods.items()
            }
            rows.append(
                {
                    "Category": label,
                    "Average 2006-2008": values["Average 2006-2008"],
                    "Average 2009-2010": values["Average 2009-2010"],
                    "Difference (2009-2010 minus 2006-2008)": values["Average 2009-2010"]
                    - values["Average 2006-2008"],
                    "Average 2017-March 2020": values["Average 2017-March 2020"],
                    "Average pandemic 2020": values["Average pandemic 2020"],
                    "Difference (pandemic minus pre-pandemic)": values["Average pandemic 2020"]
                    - values["Average 2017-March 2020"],
                }
            )
        output = pd.DataFrame(rows)
        output.to_csv(TABLE_DIR / f"table-{number:02d}-time-use-{group}.csv", index=False, float_format="%.3f")


def build_regression_tables() -> None:
    source = TABLE_DIR / "regression-results.csv"
    if not source.exists():
        raise FileNotFoundError(f"Run analysis/regression_tables.do first: {source}")
    results = pd.read_csv(source)

    specs = {
        "table04": (4, ["beta", "delta", "beta_plus_delta"]),
        "table05": (5, ["beta", "delta", "beta_plus_delta"]),
        "table06": (6, ["work_paper", "female_workpaper", "married_workpaper", "female_married_workpaper"]),
        "table07": (7, ["single", "married", "single_young", "married_young"]),
        "table08": (8, ["beta", "delta", "beta_plus_delta"]),
        "table09": (9, ["all", "employed"]),
    }
    headings = {
        "beta": "Beta",
        "delta": "Delta",
        "beta_plus_delta": "Beta + Delta",
        "work_paper": "Beta",
        "female_workpaper": "Delta 1 (female)",
        "married_workpaper": "Delta 2 (married)",
        "female_married_workpaper": "Delta 3 (female x married)",
        "single": "Singles",
        "married": "Married",
        "single_young": "Singles with young kids",
        "married_young": "Married with young kids",
        "all": "Unemployed + employed",
        "employed": "Employed",
    }

    for table, (number, columns) in specs.items():
        subset = results[results["table"] == table].copy()
        rows = []
        for label, outcome in CATEGORIES:
            row: dict[str, object] = {"Category": label}
            for column in columns:
                match = subset[(subset["outcome"] == outcome) & (subset["column"] == column)].iloc[0]
                prefix = headings[column]
                row[prefix] = match["estimate"]
                row[f"{prefix} SE"] = match["se"]
                row[f"{prefix} p-value"] = match["pvalue"]
                row[f"{prefix} formatted"] = (
                    f"{match['estimate']:.3f}{stars(match['pvalue'])} ({match['se']:.3f})"
                )
            rows.append(row)
        pd.DataFrame(rows).to_csv(TABLE_DIR / f"table-{number:02d}.csv", index=False, float_format="%.6f")


def build_appendix_table(data: pd.DataFrame) -> None:
    frame = data.copy()
    frame["educ1"] = frame["grade"] < 12
    frame["educ2"] = frame["grade"] == 12
    frame["educ3"] = (frame["grade"] > 12) & (frame["grade"] < 16)
    frame["educ4"] = frame["grade"] >= 16
    variables = [
        ("Male", "male"),
        ("Married", "married"),
        ("Black", "black"),
        ("Age", "age"),
        ("Some school education", "educ1"),
        ("High school graduates", "educ2"),
        ("Bachelor's degree", "educ3"),
        ("Bachelor's and higher", "educ4"),
        ("Have child", "hv_child"),
        ("Number of children", "num_child"),
        ("Age of youngest child", "age_youngest"),
    ]
    periods = {"2003-2010": frame["year"].between(2003, 2010), "2017-2020": frame["year"] >= 2017}
    rows = []
    for label, variable in variables:
        row: dict[str, object] = {"Variable": label}
        for period, mask in periods.items():
            values = pd.to_numeric(frame.loc[mask, variable], errors="coerce").dropna()
            row[f"{period} mean"] = values.mean()
            row[f"{period} SD"] = values.std(ddof=1)
            row[f"{period} nonzero N"] = int((values != 0).sum())
            row[f"{period} observed N"] = int(values.size)
        rows.append(row)
    rows.append(
        {
            "Variable": "Total sample size",
            "2003-2010 observed N": int(periods["2003-2010"].sum()),
            "2017-2020 observed N": int(periods["2017-2020"].sum()),
        }
    )
    pd.DataFrame(rows).to_csv(TABLE_DIR / "table-10-control-descriptives.csv", index=False, float_format="%.4f")


def annual_figure(annual: pd.DataFrame, variable: str, title: str, stem: str) -> None:
    fig, ax = plt.subplots(figsize=(8.5, 4.8))
    for group in GROUPS:
        subset = annual[annual["group"] == group]
        ax.plot(
            subset["year"],
            subset[variable],
            label=f"ATUS ({group})",
            color=COLORS[group],
            linewidth=2,
            linestyle="-" if group == "all" else "--",
        )
    ax.set(title=title, xlabel="Year", ylabel="Weekly hours")
    ax.set_xticks(sorted(annual["year"].unique()))
    ax.tick_params(axis="x", rotation=90)
    ax.grid(axis="y", alpha=0.25)
    ax.legend(frameon=False)
    finish_figure(fig, stem)


def build_figures(data: pd.DataFrame) -> None:
    sample = analysis_sample(data)
    annual_rows = []
    for group, male_value in GROUPS.items():
        grouped = sample if male_value is None else sample[sample["male"] == male_value]
        for year, year_data in grouped.groupby("year"):
            annual_rows.append(
                {
                    "group": group,
                    "year": int(year),
                    "work": weighted_mean(year_data, "work_paper"),
                    "leisure": weighted_mean(year_data, "leisure_paper"),
                    "home": weighted_mean(year_data, "home_paper"),
                    "childcare": weighted_mean(year_data, "childcare_paper"),
                }
            )
    annual = pd.DataFrame(annual_rows)
    annual_figure(annual, "work", "Market Work", "thesis-figure-01-market-work")
    annual_figure(annual, "leisure", "Leisure", "thesis-figure-03-leisure")
    annual_figure(annual, "home", "Nonmarket Work", "thesis-figure-04-nonmarket-work")
    annual_figure(annual, "childcare", "Childcare", "thesis-figure-05-childcare")

    monthly = sample[sample["year"].between(2019, 2020)].copy()
    month_keys = [
        (int(year), int(month))
        for year, month in sorted(
            monthly[["year", "month"]].drop_duplicates().itertuples(index=False, name=None)
        )
    ]
    labels = [pd.Timestamp(year, month, 1).strftime("%b'%y") for year, month in month_keys]
    x = np.arange(len(month_keys))
    fig, ax = plt.subplots(figsize=(10.5, 5.2))
    for group, male_value in GROUPS.items():
        grouped = monthly if male_value is None else monthly[monthly["male"] == male_value]
        means = [weighted_mean(grouped[(grouped["year"] == year) & (grouped["month"] == month)], "work_paper") for year, month in month_keys]
        ax.plot(x, means, label=f"ATUS ({group})", color=COLORS[group], linewidth=2)
        pre = grouped[(grouped["date"] <= pd.Timestamp("2020-04-01"))]
        post = grouped[(grouped["date"] >= pd.Timestamp("2020-04-01"))]
        pre_mean = weighted_mean(pre, "work_paper")
        post_mean = weighted_mean(post, "work_paper")
        split = month_keys.index((2020, 3))
        ax.hlines(pre_mean, 0, split, color=COLORS[group], linestyle="--", linewidth=1.4)
        ax.hlines(post_mean, split + 1, len(x) - 1, color=COLORS[group], linestyle="--", linewidth=1.4)
    split = month_keys.index((2020, 3))
    ax.axvline(split, color="black", linewidth=1, linestyle=":")
    ax.set(title="Market Work: January 2019 - December 2020", xlabel="Month", ylabel="Weekly hours")
    ax.set_xticks(x, labels, rotation=90)
    ax.grid(axis="y", alpha=0.25)
    ax.legend(frameon=False, ncol=3)
    finish_figure(fig, "thesis-figure-02-monthly-market-work")

    quarterly_rows = []
    for (year, quarter), group in sample.groupby(["year", "quarter"]):
        quarterly_rows.append({"year": int(year), "quarter": int(quarter), "hours": weighted_mean(group, "work_paper")})
    quarterly = pd.DataFrame(quarterly_rows).sort_values(["year", "quarter"]).reset_index(drop=True)
    fig, ax = plt.subplots(figsize=(10.5, 4.8))
    qx = np.arange(len(quarterly))
    ax.plot(qx, quarterly["hours"], color=COLORS["all"], linewidth=1.6, marker="o", markersize=2.8)
    year_starts = quarterly.groupby("year", sort=True).head(1)
    ax.set_xticks(year_starts.index, year_starts["year"].astype(str), rotation=90)
    ax.set(title="Quarterly Average of Market Hours", xlabel="Quarter", ylabel="Weekly hours")
    ax.grid(axis="y", alpha=0.25)
    finish_figure(fig, "thesis-figure-06-quarterly-market-work")


def main() -> None:
    data = pd.read_stata(DATA, convert_categoricals=False)
    build_descriptive_tables(data)
    build_regression_tables()
    build_appendix_table(data)
    build_figures(data)
    print(f"Wrote numbered thesis outputs to {TABLE_DIR} and {FIGURE_DIR}")


if __name__ == "__main__":
    main()
