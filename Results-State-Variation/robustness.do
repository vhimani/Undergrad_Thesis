* Robustness check 2003-2010, 2017-2020
clear all
use all_atus_qtr_temp
drop if year == 2011 | year == 2012 | year == 2013 | year == 2014| year == 2015 | year == 2016 | unemp == 1
gen pandemic = 0
replace pandemic = 1 if year >= 2017
gen female = 0
replace female = 1 if male == 0
gen single = 0
replace single = 1 if married == 0
replace age_youngest = 0 if missing(age_youngest)
gen educ1=0
replace educ1=1 if grade<12
gen educ2=0
replace educ2=1 if grade==12
gen educ3=0
replace educ3=1 if grade>12 & grade<16
gen educ4=0
replace educ4=1 if grade>=16
gen age_sq = age^2
gen pandemic_workpaper = pandemic*work_paper 
gen pandemic_workpaper_agg = pandemic*work_paper_agg
ivregress 2sls worka_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m1
lincomest work_paper + pandemic_workpaper
eststo l1
ivregress 2sls worku_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m2
lincomest work_paper + pandemic_workpaper
eststo l2
ivregress 2sls childcare_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m3
lincomest work_paper + pandemic_workpaper
eststo l3
ivregress 2sls home_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m4
lincomest work_paper + pandemic_workpaper
eststo l4
ivregress 2sls homeproduction_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn) 
eststo m5
lincomest work_paper + pandemic_workpaper
eststo l5
ivregress 2sls homeown_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m6
lincomest work_paper + pandemic_workpaper
eststo l6
ivregress 2sls shopping_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m7
lincomest work_paper + pandemic_workpaper
eststo l7
ivregress 2sls othercare_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m8
lincomest work_paper + pandemic_workpaper
eststo l8
ivregress 2sls leisure_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m9
lincomest work_paper + pandemic_workpaper
eststo l9
ivregress 2sls tv_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m10
lincomest work_paper + pandemic_workpaper
eststo l10
ivregress 2sls socializing_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m11
lincomest work_paper + pandemic_workpaper
eststo l11
ivregress 2sls sleeping_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m12
lincomest work_paper + pandemic_workpaper
eststo l12
ivregress 2sls ep_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m13
lincomest work_paper + pandemic_workpaper
eststo l13
ivregress 2sls otherleisure_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m14
lincomest work_paper + pandemic_workpaper
eststo l14
ivregress 2sls other_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m15
lincomest work_paper + pandemic_workpaper
eststo l15
ivregress 2sls education_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m16
lincomest work_paper + pandemic_workpaper
eststo l16
ivregress 2sls civic_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m17
lincomest work_paper + pandemic_workpaper
eststo l17
ivregress 2sls ownmedical_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m18
lincomest work_paper + pandemic_workpaper
eststo l18
estout m*, cells(b(star) se)
estout l*, cells(b(star) se)
esttab m* using emp_pandemic1.csv, cells(b(star fmt(5)) se) plain
esttab l* using emp_pandemic2.csv, cells(b(star fmt(5)) se) plain


* Robustness check 2017-2020
clear all
use all_atus_qtr_temp
drop if year < 2017 | unemp==1
gen female = 0
replace female = 1 if male == 0
gen single = 0
replace single = 1 if married == 0
replace age_youngest = 0 if missing(age_youngest)
gen educ1=0
replace educ1=1 if grade<12
gen educ2=0
replace educ2=1 if grade==12
gen educ3=0
replace educ3=1 if grade>12 & grade<16
gen educ4=0
replace educ4=1 if grade>=16
gen age_sq = age^2
ivregress 2sls worka_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m1
ivregress 2sls worku_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m2
ivregress 2sls childcare_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m3
ivregress 2sls home_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m4
ivregress 2sls homeproduction_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn) 
eststo m5
ivregress 2sls homeown_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m6
ivregress 2sls shopping_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m7
ivregress 2sls othercare_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m8
ivregress 2sls leisure_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m9
ivregress 2sls tv_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m10
ivregress 2sls socializing_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m11
ivregress 2sls sleeping_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m12
ivregress 2sls ep_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m13
ivregress 2sls otherleisure_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m14
ivregress 2sls other_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m15
ivregress 2sls education_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m16
ivregress 2sls civic_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m17
ivregress 2sls ownmedical_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m18
estout m*, cells(b(star) se)
esttab m* using emp_pandemic4.csv, cells(b(star fmt(5)) se) plain


* Robustness with 2019-2020 data
clear all
use robust_pandemic
gen pandemic = 0
replace pandemic = 1 if time == 52020 | time == 62020 | time == 72020 | time == 82020 | time == 92020 | time == 102020 | time == 112020 | time == 122020
gen female = 0
replace female = 1 if male == 0
gen single = 0
replace single = 1 if married == 0
replace age_youngest = 0 if missing(age_youngest)
gen educ1=0
replace educ1=1 if grade<12
gen educ2=0
replace educ2=1 if grade==12
gen educ3=0
replace educ3=1 if grade>12 & grade<16
gen educ4=0
replace educ4=1 if grade>=16
gen age_sq = age^2
gen pandemic_workpaper = pandemic*work_paper 
gen pandemic_workpaper_agg = pandemic*coeff
ivregress 2sls worka_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m1
lincomest work_paper + pandemic_workpaper
eststo l1
ivregress 2sls worku_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m2
lincomest work_paper + pandemic_workpaper
eststo l2
ivregress 2sls childcare_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m3
lincomest work_paper + pandemic_workpaper
eststo l3
ivregress 2sls home_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m4
lincomest work_paper + pandemic_workpaper
eststo l4
ivregress 2sls homeproduction_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time) 
eststo m5
lincomest work_paper + pandemic_workpaper
eststo l5
ivregress 2sls homeown_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m6
lincomest work_paper + pandemic_workpaper
eststo l6
ivregress 2sls shopping_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m7
lincomest work_paper + pandemic_workpaper
eststo l7
ivregress 2sls othercare_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m8
lincomest work_paper + pandemic_workpaper
eststo l8
ivregress 2sls leisure_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m9
lincomest work_paper + pandemic_workpaper
eststo l9
ivregress 2sls tv_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m10
lincomest work_paper + pandemic_workpaper
eststo l10
ivregress 2sls socializing_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m11
lincomest work_paper + pandemic_workpaper
eststo l11
ivregress 2sls sleeping_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m12
lincomest work_paper + pandemic_workpaper
eststo l12
ivregress 2sls ep_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m13
lincomest work_paper + pandemic_workpaper
eststo l13
ivregress 2sls otherleisure_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m14
lincomest work_paper + pandemic_workpaper
eststo l14
ivregress 2sls other_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m15
lincomest work_paper + pandemic_workpaper
eststo l15
ivregress 2sls education_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m16
lincomest work_paper + pandemic_workpaper
eststo l16
ivregress 2sls civic_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m17
lincomest work_paper + pandemic_workpaper
eststo l17
ivregress 2sls ownmedical_paper i.pandemic i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper pandemic_workpaper = coeff pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster time)
eststo m18
lincomest work_paper + pandemic_workpaper
eststo l18
estout m*, cells(b(star) se)
estout l*, cells(b(star) se)
esttab m* using month_pandemic1.csv, cells(b(star fmt(5)) se) plain
esttab l* using month_pandemic2.csv, cells(b(star fmt(5)) se) plain
