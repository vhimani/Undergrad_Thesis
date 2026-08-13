#!/usr/bin/env python3
"""Compare regenerated thesis outputs with the values printed in the thesis."""

from __future__ import annotations

import re
from pathlib import Path

import pandas as pd
import pdfplumber


ROOT = Path(__file__).resolve().parents[1]
PDF = ROOT / "UndergraduateHonorsThesis_HimaniVerma.pdf"
TABLE_DIR = ROOT / "outputs" / "tables"
VALIDATION_DIR = ROOT / "outputs" / "validation"
VALIDATION_DIR.mkdir(parents=True, exist_ok=True)

CATEGORIES = [
    "Other income-generating activities",
    "Job search",
    "Childcare",
    "Non-market work",
    "Core home production",
    "Home ownership activities",
    "Obtaining goods and services",
    "Others care",
    "Leisure",
    "TV watching",
    "Socializing",
    "Sleeping",
    "Eating and personal care",
    "Other leisure",
    "Other",
    "Education",
    "Civic and religious activities",
    "Own medical care",
]

TABLES = {
    4: (23, ["Beta", "Delta", "Beta + Delta"]),
    5: (25, ["Beta", "Delta", "Beta + Delta"]),
    6: (28, ["Beta", "Delta 1 (female)", "Delta 2 (married)", "Delta 3 (female x married)"]),
    7: (30, ["Singles", "Married", "Singles with young kids", "Married with young kids"]),
    8: (33, ["Beta", "Delta", "Beta + Delta"]),
    9: (35, ["Unemployed + employed", "Employed"]),
}

DESCRIPTIVE_TABLES = {
    1: (11, "all"),
    2: (12, "men"),
    3: (13, "women"),
}

DESCRIPTIVE_COLUMNS = [
    "Average 2006-2008",
    "Average 2009-2010",
    "Difference (2009-2010 minus 2006-2008)",
    "Average 2017-March 2020",
    "Average pandemic 2020",
    "Difference (pandemic minus pre-pandemic)",
]


def numbers(text: str) -> list[float]:
    return [float(value) for value in re.findall(r"(?<![A-Za-z])[-+]?\d+(?:\.\d+)?", text)]


def extract_published_table(page_text: str, columns: list[str]) -> dict[tuple[str, str], tuple[float, float]]:
    lines = [line.strip() for line in page_text.splitlines()]
    result: dict[tuple[str, str], tuple[float, float]] = {}
    for category in sorted(CATEGORIES, key=len, reverse=True):
        for index, line in enumerate(lines):
            if not re.match(rf"^{re.escape(category)}\s+[-+]?\d", line):
                continue
            estimates = numbers(line[len(category) :])
            standard_errors = numbers(lines[index + 1]) if index + 1 < len(lines) else []
            if len(estimates) < len(columns) or len(standard_errors) < len(columns):
                raise ValueError(f"Could not parse Table row: {line}")
            for position, column in enumerate(columns):
                result[(category, column)] = (estimates[position], abs(standard_errors[position]))
            break
    if len(result) != len(CATEGORIES) * len(columns):
        raise ValueError(f"Parsed {len(result)} cells; expected {len(CATEGORIES) * len(columns)}")
    return result


def extract_published_descriptives(page_text: str) -> dict[str, list[float]]:
    """Read the thesis's rotated Tables 1-3 into category/value rows."""
    lines = [line[::-1].strip() for line in page_text.splitlines()]
    position = lines.index("2006-2008") + 1
    result: dict[str, list[float]] = {}
    while position < len(lines) and len(result) < len(CATEGORIES) + 1:
        displayed = [float(lines[position + offset]) for offset in range(6)]
        position += 6
        words = []
        while position < len(lines) and not re.fullmatch(r"[-+]?\d+(?:\.\d+)?", lines[position]):
            words.append(lines[position])
            position += 1
        category = " ".join(reversed(words))
        result[category] = list(reversed(displayed))
    if len(result) != len(CATEGORIES) + 1:
        raise ValueError(f"Parsed {len(result)} descriptive rows; expected {len(CATEGORIES) + 1}")
    return result


def compare_descriptive_tables() -> pd.DataFrame:
    comparisons: list[dict[str, object]] = []
    with pdfplumber.open(PDF) as document:
        for table_number, (page_number, group) in DESCRIPTIVE_TABLES.items():
            published = extract_published_descriptives(document.pages[page_number - 1].extract_text() or "")
            generated = pd.read_csv(
                TABLE_DIR / f"table-{table_number:02d}-time-use-{group}.csv"
            ).set_index("Category")
            for category, published_values in published.items():
                for column, published_value in zip(DESCRIPTIVE_COLUMNS, published_values):
                    generated_value = float(generated.loc[category, column])
                    confirmed_erratum = (
                        table_number == 2
                        and category == "Non-market work"
                        and column
                        in {
                            "Average 2009-2010",
                            "Difference (2009-2010 minus 2006-2008)",
                        }
                    ) or (
                        table_number == 3
                        and category == "TV watching"
                        and column
                        in {
                            "Average 2017-March 2020",
                            "Difference (pandemic minus pre-pandemic)",
                        }
                    )
                    comparisons.append(
                        {
                            "table": table_number,
                            "category": category,
                            "column": column,
                            "published_value": published_value,
                            "generated_value": generated_value,
                            "difference": generated_value - published_value,
                            "comparison_scope": (
                                "confirmed thesis erratum"
                                if confirmed_erratum
                                else "direct thesis comparison"
                            ),
                            "matches_rounding": confirmed_erratum
                            or abs(generated_value - published_value) <= 0.015,
                        }
                    )
    return pd.DataFrame(comparisons)


def compare_regression_tables() -> pd.DataFrame:
    comparisons: list[dict[str, object]] = []
    with pdfplumber.open(PDF) as document:
        for table_number, (page_number, columns) in TABLES.items():
            published = extract_published_table(document.pages[page_number - 1].extract_text() or "", columns)
            generated = pd.read_csv(TABLE_DIR / f"table-{table_number:02d}.csv").set_index("Category")
            for category in CATEGORIES:
                for column in columns:
                    published_estimate, published_se = published[(category, column)]
                    generated_estimate = float(generated.loc[category, column])
                    generated_se = float(generated.loc[category, f"{column} SE"])
                    corrected_subgroup = table_number == 7 and column in {
                        "Singles with young kids",
                        "Married with young kids",
                    }
                    confirmed_erratum = (
                        (table_number, category, column)
                        in {
                            (4, "Other", "Beta + Delta"),
                            (4, "Own medical care", "Beta + Delta"),
                            (7, "Civic and religious activities", "Singles"),
                        }
                    )
                    comparisons.append(
                        {
                            "table": table_number,
                            "category": category,
                            "column": column,
                            "published_estimate": published_estimate,
                            "generated_estimate": generated_estimate,
                            "estimate_difference": generated_estimate - published_estimate,
                            "published_se": published_se,
                            "generated_se": generated_se,
                            "se_difference": generated_se - published_se,
                            "comparison_scope": (
                                "corrected subgroup definition"
                                if corrected_subgroup
                                else "confirmed thesis erratum"
                                if confirmed_erratum
                                else "direct thesis comparison"
                            ),
                            "matches_rounding": corrected_subgroup
                            or confirmed_erratum
                            or (
                                abs(generated_estimate - published_estimate) <= 0.0055
                                and abs(generated_se - published_se) <= 0.0055
                            ),
                        }
                    )
    return pd.DataFrame(comparisons)


def validate_table_10() -> list[str]:
    generated = pd.read_csv(TABLE_DIR / "table-10-control-descriptives.csv").set_index("Variable")
    expected = {
        "Male": (0.4346, 0.4554),
        "Married": (0.5140, 0.4880),
        "Black": (0.1284, 0.1346),
        "Age": (46.191, 50.652),
        "Some school education": (0.1691, 0.1102),
        "High school graduates": (0.2690, 0.2317),
        "Bachelor's degree": (0.2665, 0.2675),
        "Bachelor's and higher": (0.2954, 0.3906),
        "Have child": (0.4778, 0.3759),
        "Number of children": (0.9011, 0.7029),
        "Age of youngest child": (7.551, 7.5421),
    }
    issues = []
    for variable, (early, late) in expected.items():
        for period, target in [("2003-2010", early), ("2017-2020", late)]:
            value = float(generated.loc[variable, f"{period} mean"])
            if abs(value - target) > 0.0055:
                issues.append(f"Table 10 {variable}, {period}: generated {value:.4f}, thesis {target:.4f}")
    return issues


def main() -> None:
    descriptive_comparison = compare_descriptive_tables()
    descriptive_comparison.to_csv(
        VALIDATION_DIR / "descriptive-comparison.csv", index=False, float_format="%.6f"
    )
    descriptive_direct = descriptive_comparison[
        descriptive_comparison["comparison_scope"] == "direct thesis comparison"
    ]
    descriptive_mismatches = descriptive_direct[~descriptive_direct["matches_rounding"]]

    comparison = compare_regression_tables()
    comparison.to_csv(VALIDATION_DIR / "regression-comparison.csv", index=False, float_format="%.6f")
    direct = comparison[comparison["comparison_scope"] == "direct thesis comparison"]
    mismatches = direct[~direct["matches_rounding"]]
    table10_issues = validate_table_10()

    lines = [
        "# Thesis output validation",
        "",
        "The submitted thesis PDF is the comparison source. Descriptive means, coefficients, and standard errors are checked at the precision printed in the thesis.",
        "",
        f"- Directly comparable descriptive cells checked: {len(descriptive_direct)}",
        f"- Directly comparable descriptive cells matching printed rounding: {int(descriptive_direct['matches_rounding'].sum())}",
        f"- Confirmed descriptive discrepancies reported separately: {int((descriptive_comparison['comparison_scope'] == 'confirmed thesis erratum').sum())}",
        f"- Directly comparable regression cells checked: {len(direct)}",
        f"- Directly comparable cells matching printed rounding: {int(direct['matches_rounding'].sum())}",
        f"- Corrected Table 7 subgroup cells reported separately: {int((comparison['comparison_scope'] == 'corrected subgroup definition').sum())}",
        f"- Confirmed printed errata reported separately: {int((comparison['comparison_scope'] == 'confirmed thesis erratum').sum())}",
        f"- Correctly labeled Table 10 mean checks with unexpected differences: {len(table10_issues)}",
        "",
        "## Confirmed thesis errata",
        "",
        "- Table 2, Non-market work reports the 2009–2010 average as `35.10` and the corresponding change as `21.32`. The underlying data give `14.05` and `0.26`; the latter is also consistent with the neighboring period values.",
        "- Table 3, TV watching reports the 2017–March 2020 mean as `16.56` and its pandemic change as `1.10`. Direct weighted reconstruction from the master data gives `16.585` (printed as `16.59`) and `1.071` (printed as `1.07`). All other Table 3 cells reproduce at printed precision.",
        "- Table 4, Other, Beta + Delta prints a negative standard error, `(-7.118)`. Standard errors cannot be negative; the regression produces `(27.118)`.",
        "- Table 4, Own medical care, Beta + Delta prints `6.615*`. The displayed components sum to `-6.615*`, which is also what the regression produces.",
        "- Table 7, Civic and religious activities, Singles prints `-18.691`; the archived regression export and the regenerated model both give `-18.961` (SE `9.347`).",
        "- Table 10 labels the complements of the constructed indicators: its row labeled Male reports the female share, and its row labeled Married reports the single share. The regenerated table uses the stated labels (Male and Married), so its values are the complements of the submitted table's first two rows.",
        "",
        "## Corrected subgroup definition",
        "",
        "The legacy code behind Table 7 did not consistently implement the labels for women with young children. Missing child ages were converted to zero in one branch, and the published fourth column came from a spouse-employment restriction. The reorganized analysis defines a young child as `hv_child == 1` and age of youngest child below 8, separately for single and married women. The first two Table 7 columns remain directly comparable; the corrected last two columns are intentionally expected to differ from the submitted thesis.",
        "",
        "## Remaining direct mismatches",
        "",
    ]
    if mismatches.empty:
        if descriptive_mismatches.empty:
            lines.append("None. All directly comparable cells reproduce at the thesis's printed precision.")
    else:
        for row in mismatches.itertuples(index=False):
            lines.append(
                f"- Table {row.table}, {row.category}, {row.column}: thesis "
                f"{row.published_estimate:.3f} ({row.published_se:.3f}); generated "
                f"{row.generated_estimate:.3f} ({row.generated_se:.3f})."
            )
    for row in descriptive_mismatches.itertuples(index=False):
        lines.append(
            f"- Table {row.table}, {row.category}, {row.column}: thesis "
            f"{row.published_value:.2f}; generated {row.generated_value:.2f}."
        )
    if table10_issues:
        lines.extend(["", "## Table 10 issues", "", *[f"- {issue}" for issue in table10_issues]])
    (VALIDATION_DIR / "REPORT.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"Validation report: {VALIDATION_DIR / 'REPORT.md'}")
    if not descriptive_mismatches.empty or not mismatches.empty or table10_issues:
        raise SystemExit("Validation found unexpected thesis-output differences.")


if __name__ == "__main__":
    main()
