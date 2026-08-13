version 18
clear all
set more off

capture mkdir "${PROJECT_ROOT}/outputs"
capture mkdir "${PROJECT_ROOT}/outputs/tables"

local outcomes worka_paper worku_paper childcare_paper home_paper ///
    homeproduction_paper homeown_paper shopping_paper othercare_paper ///
    leisure_paper tv_paper socializing_paper sleeping_paper ep_paper ///
    otherleisure_paper other_paper education_paper civic_paper ownmedical_paper

program define prepare_controls
    capture drop female single pandemic age_sq educ1 educ2 educ3 educ4
    replace age_youngest = 0 if missing(age_youngest)
    generate byte female = male == 0
    generate byte single = married == 0
    generate byte pandemic = year >= 2017
    generate double age_sq = age^2
    generate byte educ1 = grade < 12
    generate byte educ2 = grade == 12
    generate byte educ3 = grade > 12 & grade < 16
    generate byte educ4 = grade >= 16
end

tempname results
postfile `results' str8 table str32 outcome str32 column ///
    double estimate se pvalue n using "${PROJECT_ROOT}/outputs/tables/regression-results.dta", replace

* Table 4: Great Recession versus pandemic.
use "${PROJECT_ROOT}/derived/all_atus_qtr_temp.dta", clear
drop if inrange(year, 2011, 2016)
prepare_controls
generate double pandemic_workpaper = pandemic * work_paper
generate double pandemic_workpaper_agg = pandemic * work_paper_agg
local controls i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 ///
    i.educ3 i.hv_child num_child age_youngest i.male#i.married ///
    i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest
foreach y of local outcomes {
    quietly ivregress 2sls `y' `controls' ///
        (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) ///
        [pw=weight_adj], vce(cluster idn)
    post `results' ("table04") ("`y'") ("beta") ///
        (-100 * _b[work_paper]) (100 * _se[work_paper]) ///
        (2 * normal(-abs(_b[work_paper] / _se[work_paper]))) (e(N))
    post `results' ("table04") ("`y'") ("delta") ///
        (-100 * _b[pandemic_workpaper]) (100 * _se[pandemic_workpaper]) ///
        (2 * normal(-abs(_b[pandemic_workpaper] / _se[pandemic_workpaper]))) (e(N))
    quietly lincom work_paper + pandemic_workpaper
    post `results' ("table04") ("`y'") ("beta_plus_delta") ///
        (-100 * r(estimate)) (100 * r(se)) (r(p)) (e(N))
}

* Table 5: female interaction, 2017-2020.
use "${PROJECT_ROOT}/derived/all_atus_qtr_temp.dta", clear
keep if year >= 2017
prepare_controls
generate double female_workpaper = female * work_paper
generate double female_workpaper_agg = female * work_paper_agg
local controls i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 ///
    i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child ///
    i.female#c.num_child i.female#c.age_youngest
foreach y of local outcomes {
    quietly ivregress 2sls `y' `controls' ///
        (work_paper female_workpaper = work_paper_agg female_workpaper_agg) ///
        [pw=weight_adj], vce(cluster idn)
    post `results' ("table05") ("`y'") ("beta") ///
        (-100 * _b[work_paper]) (100 * _se[work_paper]) ///
        (2 * normal(-abs(_b[work_paper] / _se[work_paper]))) (e(N))
    post `results' ("table05") ("`y'") ("delta") ///
        (-100 * _b[female_workpaper]) (100 * _se[female_workpaper]) ///
        (2 * normal(-abs(_b[female_workpaper] / _se[female_workpaper]))) (e(N))
    quietly lincom work_paper + female_workpaper
    post `results' ("table05") ("`y'") ("beta_plus_delta") ///
        (-100 * r(estimate)) (100 * r(se)) (r(p)) (e(N))
}

* Table 6: female and married interactions, 2017-2020.
use "${PROJECT_ROOT}/derived/all_atus_qtr_temp.dta", clear
keep if year >= 2017
prepare_controls
generate double female_workpaper = female * work_paper
generate double married_workpaper = married * work_paper
generate double female_married_workpaper = female * married * work_paper
generate double female_workpaper_agg = female * work_paper_agg
generate double married_workpaper_agg = married * work_paper_agg
generate double female_married_workpaper_agg = female * married * work_paper_agg
local controls i.female i.married i.female#i.married i.black age age_sq ///
    i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest ///
    i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest
foreach y of local outcomes {
    quietly ivregress 2sls `y' `controls' ///
        (work_paper female_workpaper married_workpaper female_married_workpaper = ///
        work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) ///
        [pw=weight_adj], vce(cluster idn)
    foreach term in work_paper female_workpaper married_workpaper female_married_workpaper {
        post `results' ("table06") ("`y'") ("`term'") ///
            (-100 * _b[`term']) (100 * _se[`term']) ///
            (2 * normal(-abs(_b[`term'] / _se[`term']))) (e(N))
    }
}

* Table 7: female subgroups. Young children are explicitly age 0-7 and
* respondents must report having a child. This corrects the legacy filters.
use "${PROJECT_ROOT}/derived/all_atus_qtr_temp.dta", clear
keep if year >= 2017 & male == 0
prepare_controls
generate double single_workpaper = single * work_paper
generate double single_workpaper_agg = single * work_paper_agg
local controls i.single i.black age age_sq i.educ1 i.educ2 i.educ3 ///
    i.hv_child num_child age_youngest
foreach y of local outcomes {
    quietly ivregress 2sls `y' `controls' ///
        (work_paper single_workpaper = work_paper_agg single_workpaper_agg) ///
        [pw=weight_adj], vce(cluster idn)
    post `results' ("table07") ("`y'") ("married") ///
        (-100 * _b[work_paper]) (100 * _se[work_paper]) ///
        (2 * normal(-abs(_b[work_paper] / _se[work_paper]))) (e(N))
    quietly lincom work_paper + single_workpaper
    post `results' ("table07") ("`y'") ("single") ///
        (-100 * r(estimate)) (100 * r(se)) (r(p)) (e(N))
}

foreach status in single married {
    use "${PROJECT_ROOT}/derived/all_atus_qtr_temp.dta", clear
    keep if year >= 2017 & male == 0
    if "`status'" == "single" keep if married == 0
    if "`status'" == "married" keep if married == 1
    prepare_controls
    generate byte young_child = hv_child == 1 & age_youngest < 8
    generate double young_workpaper = young_child * work_paper
    generate double young_workpaper_agg = young_child * work_paper_agg
    local controls i.young_child i.black age age_sq i.educ1 i.educ2 i.educ3 ///
        num_child age_youngest
    foreach y of local outcomes {
        quietly ivregress 2sls `y' `controls' ///
            (work_paper young_workpaper = work_paper_agg young_workpaper_agg) ///
            [pw=weight_adj], vce(cluster idn)
        quietly lincom work_paper + young_workpaper
        post `results' ("table07") ("`y'") ("`status'_young") ///
            (-100 * r(estimate)) (100 * r(se)) (r(p)) (e(N))
    }
}

* Table 8: employed respondents in both recession periods.
use "${PROJECT_ROOT}/derived/all_atus_qtr_temp.dta", clear
drop if inrange(year, 2011, 2016) | unemp == 1
prepare_controls
generate double pandemic_workpaper = pandemic * work_paper
generate double pandemic_workpaper_agg = pandemic * work_paper_agg
local controls i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 ///
    i.educ3 i.hv_child num_child age_youngest i.male#i.married ///
    i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest
foreach y of local outcomes {
    quietly ivregress 2sls `y' `controls' ///
        (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) ///
        [pw=weight_adj], vce(cluster idn)
    post `results' ("table08") ("`y'") ("beta") ///
        (-100 * _b[work_paper]) (100 * _se[work_paper]) ///
        (2 * normal(-abs(_b[work_paper] / _se[work_paper]))) (e(N))
    post `results' ("table08") ("`y'") ("delta") ///
        (-100 * _b[pandemic_workpaper]) (100 * _se[pandemic_workpaper]) ///
        (2 * normal(-abs(_b[pandemic_workpaper] / _se[pandemic_workpaper]))) (e(N))
    quietly lincom work_paper + pandemic_workpaper
    post `results' ("table08") ("`y'") ("beta_plus_delta") ///
        (-100 * r(estimate)) (100 * r(se)) (r(p)) (e(N))
}

* Table 9: all respondents and employed respondents, 2017-2020.
foreach sample in all employed {
    use "${PROJECT_ROOT}/derived/all_atus_qtr_temp.dta", clear
    keep if year >= 2017
    if "`sample'" == "employed" drop if unemp == 1
    prepare_controls
    local controls i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 ///
        i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child ///
        i.male#c.num_child i.male#c.age_youngest
    foreach y of local outcomes {
        quietly ivregress 2sls `y' `controls' (work_paper = work_paper_agg) ///
            [pw=weight_adj], vce(cluster idn)
        post `results' ("table09") ("`y'") ("`sample'") ///
            (-100 * _b[work_paper]) (100 * _se[work_paper]) ///
            (2 * normal(-abs(_b[work_paper] / _se[work_paper]))) (e(N))
    }
}

postclose `results'
use "${PROJECT_ROOT}/outputs/tables/regression-results.dta", clear
export delimited using "${PROJECT_ROOT}/outputs/tables/regression-results.csv", replace
