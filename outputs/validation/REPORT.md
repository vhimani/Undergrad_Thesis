# Thesis output validation

The submitted thesis PDF is the comparison source. Descriptive means, coefficients, and standard errors are checked at the precision printed in the thesis.

- Directly comparable descriptive cells checked: 338
- Directly comparable descriptive cells matching printed rounding: 338
- Confirmed descriptive discrepancies reported separately: 4
- Directly comparable regression cells checked: 303
- Directly comparable cells matching printed rounding: 303
- Corrected Table 7 subgroup cells reported separately: 36
- Confirmed printed errata reported separately: 3
- Correctly labeled Table 10 mean checks with unexpected differences: 0

## Confirmed thesis errata

- Table 2, Non-market work reports the 2009–2010 average as `35.10` and the corresponding change as `21.32`. The underlying data give `14.05` and `0.26`; the latter is also consistent with the neighboring period values.
- Table 3, TV watching reports the 2017–March 2020 mean as `16.56` and its pandemic change as `1.10`. Direct weighted reconstruction from the master data gives `16.585` (printed as `16.59`) and `1.071` (printed as `1.07`). All other Table 3 cells reproduce at printed precision.
- Table 4, Other, Beta + Delta prints a negative standard error, `(-7.118)`. Standard errors cannot be negative; the regression produces `(27.118)`.
- Table 4, Own medical care, Beta + Delta prints `6.615*`. The displayed components sum to `-6.615*`, which is also what the regression produces.
- Table 7, Civic and religious activities, Singles prints `-18.691`; the archived regression export and the regenerated model both give `-18.961` (SE `9.347`).
- Table 10 labels the complements of the constructed indicators: its row labeled Male reports the female share, and its row labeled Married reports the single share. The regenerated table uses the stated labels (Male and Married), so its values are the complements of the submitted table's first two rows.

## Corrected subgroup definition

The legacy code behind Table 7 did not consistently implement the labels for women with young children. Missing child ages were converted to zero in one branch, and the published fourth column came from a spouse-employment restriction. The reorganized analysis defines a young child as `hv_child == 1` and age of youngest child below 8, separately for single and married women. The first two Table 7 columns remain directly comparable; the corrected last two columns are intentionally expected to differ from the submitted thesis.

## Remaining direct mismatches

None. All directly comparable cells reproduce at the thesis's printed precision.
