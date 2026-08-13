version 18
clear all
set more off

capture mkdir "${PROJECT_ROOT}/derived"
use "${PROJECT_ROOT}/ALL/all_atus.dta", clear

capture drop month qtr time qtryr work_paper_agg idn level_1 coeff
generate int month = month(interview_date)
generate byte qtr = quarter(interview_date)
generate long time = real(string(month) + string(year))
generate long qtryr = real(string(qtr) + string(year))
save "${PROJECT_ROOT}/derived/all_atus_qtr.dta", replace

* The thesis instrument is the ATUS-weighted quarterly mean of market work
* for respondents age 18-65 with classified labor-force status.
generate byte aggregation_sample = inrange(age, 18, 65) & other == 0
generate double weighted_work = cond(aggregation_sample, work_paper * weight_adj, 0)
generate double aggregation_weight = cond(aggregation_sample, weight_adj, 0)

bysort time: egen double month_work_total = total(weighted_work)
bysort time: egen double month_weight_total = total(aggregation_weight)
generate double coeff = month_work_total / month_weight_total
save "${PROJECT_ROOT}/derived/robust_pandemic.dta", replace
drop month_work_total month_weight_total coeff

bysort qtryr: egen double quarter_work_total = total(weighted_work)
bysort qtryr: egen double quarter_weight_total = total(aggregation_weight)
generate double work_paper_agg = quarter_work_total / quarter_weight_total
egen long idn = group(qtryr)
bysort idn: generate long level_1 = _n - 1
drop aggregation_sample weighted_work aggregation_weight quarter_work_total quarter_weight_total
compress
save "${PROJECT_ROOT}/derived/all_atus_qtr_temp.dta", replace
