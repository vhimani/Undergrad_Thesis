#!/bin/sh
set -eu

repo_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$repo_root"

run_stata() {
    printf '\n==> %s\n' "$1"
    ./scripts/run-stata.sh "$1"
}

python_bin=$repo_root/.venv/bin/python
if [ ! -x "$python_bin" ]; then
    python3 -m venv .venv
fi
"$python_bin" -c 'import matplotlib, numpy, pandas, pdfplumber' 2>/dev/null || \
    "$python_bin" -m pip install -r requirements.txt

# Canonical dependency order: master data, derived instruments, regressions,
# presentation-ready outputs, then comparison with the submitted thesis.
run_stata ALL/merge.do
run_stata analysis/prepare_data.do
run_stata analysis/regression_tables.do

printf '\n==> Numbered tables and figures\n'
"$python_bin" analysis/generate_outputs.py

printf '\n==> Thesis validation\n'
"$python_bin" analysis/validate_outputs.py

printf '\nCanonical thesis pipeline completed successfully.\n'
