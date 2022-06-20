clear
use all_atus_qtr_temp

drop if year < 2017
gen educ1=0
replace educ1=1 if grade<12
gen educ2=0
replace educ2=1 if grade==12
gen educ3=0
replace educ3=1 if grade>12 & grade<16
gen educ4=0
replace educ4=1 if grade>=16
gen age_sq = age^2
sum ibn.male ibn.married ibn.black age age_sq educ1 educ2 educ3 educ4 ibn.hv_child num_child age_youngest
tab male
tab married
tab black
tab hv_child
tab educ1
tab educ2
tab educ3
tab educ4
