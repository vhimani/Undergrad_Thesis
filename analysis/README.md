# Canonical analysis

The analysis has one linear execution path:

1. `prepare_data.do` creates the monthly and quarterly identifiers and the
   quarterly weighted market-work instrument.
2. `regression_tables.do` estimates Tables 4–9 and exports one tidy result file.
3. `generate_outputs.py` creates Tables 1–10 and Figures 1–6 with stable,
   thesis-numbered filenames.
4. `validate_outputs.py` parses the submitted thesis, compares every eligible
   coefficient and standard error, records known corrections, and exits with an
   error if an unexpected difference remains.

Use `make all` from the repository root instead of invoking these by hand.
