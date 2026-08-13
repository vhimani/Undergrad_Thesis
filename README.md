# Time Use During the Pandemic

Reproducible code and American Time Use Survey (ATUS) data for Himani Verma's
undergraduate honors thesis. The canonical workflow covers 2003–2020, builds a
single master dataset, estimates the thesis models, and writes numbered tables
and figures that correspond directly to the submitted thesis.

The submitted document, `UndergraduateHonorsThesis_HimaniVerma.pdf`, is the
reference used by the automated validation step.

## Run the thesis

From the repository root:

```sh
make all
```

This runs the complete workflow in dependency order:

1. Merge the 18 yearly ATUS subsets into `ALL/all_atus.dta`.
2. Create the monthly and quarterly analysis variables in `derived/`.
3. Estimate Tables 4–9 in Stata.
4. Generate Tables 1–10 and Figures 1–6.
5. Compare the regenerated results with the values printed in the thesis.

Requirements are Stata 18 (or StataNow) and Python 3. The runner creates
`.venv/` and installs the small Python environment automatically. To use a
nonstandard Stata installation, set `STATA_BIN` to its command-line executable.

Focused commands are also available:

```sh
make data       # master and derived datasets
make tables     # regression results and all numbered tables
make figures    # all six numbered figures
make validate   # thesis comparison report
make clean      # local caches, logs, derived data, and virtual environment
```

## Repository layout

- `2003/`–`2020/`: raw inputs, ATUS import programs, transformed yearly data,
  and one standardized yearly transformation per year
- `ALL/`: yearly analysis subsets and the cross-year merge script
- `analysis/`: the three canonical analysis and validation programs
- `scripts/`: portable Stata and end-to-end runners
- `outputs/tables/`: Tables 1–10 plus machine-readable regression results
- `outputs/figures/`: Figures 1–6 in PDF and PNG formats
- `outputs/validation/`: cell-level comparison data and a readable audit report
- `legacy/matlab/`: preserved MATLAB figure/table programs; intentionally not
  part of the current workflow

Generated master/derived datasets, Stata logs, caches, and local environments
are ignored by Git. The numbered tables, figures, and validation report are the
only presentation outputs retained in the repository.

## Reproducibility notes

- All file references are relative to `PROJECT_ROOT`; no machine-specific
  Windows or macOS paths remain in the executable workflow.
- Tables 1–3 and Figures 1–6 use ATUS weights and the thesis analysis sample
  (ages 18–65 with classified labor-force status).
- Tables 4–9 use the quarterly ATUS-weighted market-work instrument described
  in the thesis and clustered standard errors.
- Table 7 now implements “young kids” literally: the respondent must have a
  child and the youngest child must be under age 8. The old code did not apply
  that definition consistently, so those two corrected columns intentionally
  differ from the submitted table.
- The validator documents six confirmed presentation/coding issues in the
  submitted thesis while requiring every otherwise comparable result to match
  its printed precision. See `outputs/validation/REPORT.md` for details.

The retired exploratory notebooks, duplicate spreadsheets, temporary Stata
datasets, old generated PDFs, and superseded result scripts remain available in
Git history but are not part of the organized replication package.
