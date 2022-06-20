clear all
use all_atus_qtr_temp 
*regress work_paper work_paper [pw=weight_adj], r
* drop if year < 2017
* xtset level_1 idn, quarterly
ivregress 2sls worka_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls worku_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)  
ivregress 2sls childcare_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls home_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls homeproduction_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn) 
ivregress 2sls homeown_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls shopping_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls othercare_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls leisure_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls tv_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls socializing_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls sleeping_paper (work_paper = work_paper_agg) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls ep_paper (work_paper = work_paper_agg) [aw=weight_adj], vce(cluster idn) 
ivregress 2sls otherleisure_paper (work_paper = work_paper_agg) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls other_paper (work_paper = work_paper_agg) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls education_paper (work_paper = work_paper_agg) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls civic_paper (work_paper = work_paper_agg) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls ownmedical_paper (work_paper = work_paper_agg) [aw=weight_adj], vce(cluster idn) 
clear all


clear all
use all_atus_qtr_temp
drop if year < 2003 | year > 2010 
*regress work_paper work_paper [pw=weight_adj], r
* xtset level_1 idn, quarterly
ivregress 2sls worka_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls worku_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)  
ivregress 2sls childcare_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls home_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls homeproduction_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn) 
ivregress 2sls homeown_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls shopping_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls othercare_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls leisure_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls tv_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls socializing_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls sleeping_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls ep_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn) 
ivregress 2sls otherleisure_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls other_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls education_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls civic_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls ownmedical_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn) 
clear all

clear all
use all_atus_qtr_temp
drop if year < 2017
*regress work_paper work_paper [pw=weight_adj], r
* xtset level_1 idn, quarterly
ivregress 2sls worka_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls worku_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)  
ivregress 2sls childcare_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls home_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls homeproduction_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn) 
ivregress 2sls homeown_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls shopping_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls othercare_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls leisure_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls tv_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls socializing_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls sleeping_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj],  vce(cluster idn)
ivregress 2sls ep_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn) 
ivregress 2sls otherleisure_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls other_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls education_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls civic_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn)  
ivregress 2sls ownmedical_paper i.male (work_paper c.work_paper#i.male = work_paper_agg c.work_paper_agg#i.male) [aw=weight_adj], vce(cluster idn) 
clear all


clear all
use all_atus_qtr_temp
gen pandemic = 0
replace pandemic = 1 if year > 2016
gen pandemic_workpaper = pandemic*work_paper 
gen pandemic_workpaper_agg = pandemic*work_paper_agg 
ivregress 2sls worka_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m1
lincomest work_paper + pandemic_workpaper
eststo l1
ivregress 2sls worku_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m2
lincomest work_paper + pandemic_workpaper
eststo l2
ivregress 2sls childcare_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m3
lincomest work_paper + pandemic_workpaper
eststo l3
ivregress 2sls home_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m4
lincomest work_paper + pandemic_workpaper
eststo l4
ivregress 2sls homeproduction_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn) 
eststo m5
lincomest work_paper + pandemic_workpaper
eststo l5
ivregress 2sls homeown_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m6
lincomest work_paper + pandemic_workpaper
eststo l6
ivregress 2sls shopping_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m7
lincomest work_paper + pandemic_workpaper
eststo l7
ivregress 2sls othercare_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m8
lincomest work_paper + pandemic_workpaper
eststo l8
ivregress 2sls leisure_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m9
lincomest work_paper + pandemic_workpaper
eststo l9
ivregress 2sls tv_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m10
lincomest work_paper + pandemic_workpaper
eststo l10
ivregress 2sls socializing_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m11
lincomest work_paper + pandemic_workpaper
eststo l11
ivregress 2sls sleeping_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m12
lincomest work_paper + pandemic_workpaper
eststo l12
ivregress 2sls ep_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m13
lincomest work_paper + pandemic_workpaper
eststo l13
ivregress 2sls otherleisure_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m14
lincomest work_paper + pandemic_workpaper
eststo l14
ivregress 2sls other_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m15
lincomest work_paper + pandemic_workpaper
eststo l15
ivregress 2sls education_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m16
lincomest work_paper + pandemic_workpaper
eststo l16
ivregress 2sls civic_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m17
lincomest work_paper + pandemic_workpaper
eststo l17
ivregress 2sls ownmedical_paper i.pandemic (work_paper pandemic_workpaper = work_paper_agg pandemic_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m18
lincomest work_paper + pandemic_workpaper
eststo l18
estout m*, cells(b se)
estout l*, cells(b se)
esttab using esample.csv, plain

clear all



clear all
use all_atus_qtr_temp
drop if year == 2011 | year == 2012 | year == 2013 | year == 2014 | year == 2015 | year == 2016
gen pandemic = 0
replace pandemic = 1 if year >= 2017
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
esttab m* using m_pandemic.csv, cells(b(star fmt(5)) se) plain
esttab l* using l_pandemic.csv, cells(b(star fmt(5)) se) plain



clear all
use all_atus_qtr_temp
drop if year < 2017
gen female = 0
replace female = 1 if male == 0
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
gen female_workpaper = female*work_paper 
gen female_workpaper_agg = female*work_paper_agg 
ivregress 2sls worka_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m1
lincomest work_paper + female_workpaper
eststo l1
ivregress 2sls worku_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m2
lincomest work_paper + female_workpaper
eststo l2
ivregress 2sls childcare_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m3
lincomest work_paper + female_workpaper
eststo l3
ivregress 2sls home_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m4
lincomest work_paper + female_workpaper
eststo l4
ivregress 2sls homeproduction_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn) 
eststo m5
lincomest work_paper + female_workpaper
eststo l5
ivregress 2sls homeown_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m6
lincomest work_paper + female_workpaper
eststo l6
ivregress 2sls shopping_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m7
lincomest work_paper + female_workpaper
eststo l7
ivregress 2sls othercare_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m8
lincomest work_paper + female_workpaper
eststo l8
ivregress 2sls leisure_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m9
lincomest work_paper + female_workpaper
eststo l9
ivregress 2sls tv_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m10
lincomest work_paper + female_workpaper
eststo l10
ivregress 2sls socializing_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m11
lincomest work_paper + female_workpaper
eststo l11
ivregress 2sls sleeping_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m12
lincomest work_paper + female_workpaper
eststo l12
ivregress 2sls ep_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m13
lincomest work_paper + female_workpaper
eststo l13
ivregress 2sls otherleisure_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m14
lincomest work_paper + female_workpaper
eststo l14
ivregress 2sls other_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m15
lincomest work_paper + female_workpaper
eststo l15
ivregress 2sls education_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m16
lincomest work_paper + female_workpaper
eststo l16
ivregress 2sls civic_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m17
lincomest work_paper + female_workpaper
eststo l17
ivregress 2sls ownmedical_paper i.female i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.married i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper = work_paper_agg female_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m18
lincomest work_paper + female_workpaper
eststo l18
estout m*, cells(b(star) se)
* estout l*, cells(b se)
esttab m* using female_m.csv, cells(b(star) se) plain star(* 0.10 ** 0.05 *** 0.01)
* esttab l* using female_l.csv, cells(b se) plain



clear all
use all_atus_qtr_temp
drop if year < 2019
gen female = 0
replace female = 1 if male == 0
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
gen female_workpaper = female*work_paper 
gen female_workpaper_agg = female*work_paper_agg 
gen married_workpaper = married*work_paper 
gen married_workpaper_agg = married*work_paper_agg 
gen female_married_workpaper = female*married*work_paper 
gen female_married_workpaper_agg = female*married*work_paper_agg 
ivregress 2sls worka_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m1
ivregress 2sls worku_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m2
ivregress 2sls childcare_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m3
ivregress 2sls home_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m4
ivregress 2sls homeproduction_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m5
ivregress 2sls homeown_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m6
ivregress 2sls shopping_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m7
ivregress 2sls othercare_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m8
ivregress 2sls leisure_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m9
ivregress 2sls tv_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m10
ivregress 2sls socializing_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m11
ivregress 2sls sleeping_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m12
ivregress 2sls ep_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m13
ivregress 2sls otherleisure_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m14
ivregress 2sls other_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m15
ivregress 2sls education_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m16
ivregress 2sls civic_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m17
ivregress 2sls ownmedical_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m18
estout m*, cells(b(star) se)
esttab m* using female_married.csv, cells(b(star) se) plain


clear all
use all_atus_qtr_temp
drop if year < 2017
gen female = 0
replace female = 1 if male == 0
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
gen female_workpaper = female*work_paper 
gen female_workpaper_agg = female*work_paper_agg 
gen married_workpaper = married*work_paper 
gen married_workpaper_agg = married*work_paper_agg 
gen age_workpaper = age_youngest*work_paper 
gen age_workpaper_agg = age_youngest*work_paper_agg 
gen female_married_workpaper = female*married*work_paper 
gen female_married_workpaper_agg = female*married*work_paper_agg 
gen female_age_workpaper = female*age_youngest*work_paper 
gen female_age_workpaper_agg = female*age_youngest*work_paper_agg 
gen female_married_age_workpaper = female*married*age_youngest*work_paper 
gen female_married_age_workpaper_agg = female*married*age_youngest*work_paper_agg 
ivregress 2sls childcare_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper age_workpaper female_married_workpaper female_age_workpaper female_married_age_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg age_workpaper_agg female_married_workpaper_agg female_age_workpaper_agg female_married_age_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m1
ivregress 2sls worku_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m2
ivregress 2sls childcare_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m3
ivregress 2sls home_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m4
ivregress 2sls homeproduction_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m5
ivregress 2sls homeown_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m6
ivregress 2sls shopping_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m7
ivregress 2sls othercare_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m8
ivregress 2sls leisure_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m9
ivregress 2sls tv_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m10
ivregress 2sls socializing_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m11
ivregress 2sls sleeping_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m12
ivregress 2sls ep_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m13
ivregress 2sls otherleisure_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m14
ivregress 2sls other_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m15
ivregress 2sls education_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m16
ivregress 2sls civic_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m17
ivregress 2sls ownmedical_paper i.female i.married i.female#i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.female#i.hv_child i.female#c.num_child i.female#c.age_youngest (work_paper female_workpaper married_workpaper female_married_workpaper = work_paper_agg female_workpaper_agg married_workpaper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m18
estout m*, cells(b se)
esttab m* using female_married.csv, cells(b se) plain




* Singles/married with age_youngest (is less than 7)
clear all
use all_atus_qtr_temp
drop if year < 2017 
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
drop if female == 0 | married == 0
gen age_k = 0
replace age_k = 1 if age_youngest < 8 
gen single_workpaper = age_k*work_paper 
gen single_workpaper_agg = age_k*work_paper_agg 
gen single_age_workpaper = single*age_k*work_paper 
gen single_age_workpaper_agg = single*age_k*work_paper_agg 
*ivregress 2sls childcare_paper i.single i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper female_married_workpaper = work_paper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
*eststo m1
*ivregress 2sls childcare_paper i.single i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.single#i.hv_child i.single#c.num_child i.single#c.age_youngest (work_paper female_married_workpaper = work_paper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
ivregress 2sls worka_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper  = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m1
lincomest work_paper + single_workpaper
eststo l1
ivregress 2sls worku_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m2
lincomest work_paper + single_workpaper
eststo l2
ivregress 2sls childcare_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m3
lincomest work_paper + single_workpaper
eststo l3
ivregress 2sls home_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m4
lincomest work_paper + single_workpaper
eststo l4
ivregress 2sls homeproduction_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m5
lincomest work_paper + single_workpaper
eststo l5
ivregress 2sls homeown_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m6
lincomest work_paper + single_workpaper
eststo l6
ivregress 2sls shopping_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m7
lincomest work_paper + single_workpaper
eststo l7
ivregress 2sls othercare_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m8
lincomest work_paper + single_workpaper
eststo l8
ivregress 2sls leisure_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m9
lincomest work_paper + single_workpaper
eststo l9
ivregress 2sls tv_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m10
lincomest work_paper + single_workpaper
eststo l10
ivregress 2sls socializing_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m11
lincomest work_paper + single_workpaper
eststo l11
ivregress 2sls sleeping_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m12
lincomest work_paper + single_workpaper
eststo l12
ivregress 2sls ep_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg ) [pw=weight_adj],  vce(cluster idn)
eststo m13
lincomest work_paper + single_workpaper
eststo l13
ivregress 2sls otherleisure_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m14
lincomest work_paper + single_workpaper
eststo l14
ivregress 2sls other_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m15
lincomest work_paper + single_workpaper
eststo l15
ivregress 2sls education_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m16
lincomest work_paper + single_workpaper
eststo l16
ivregress 2sls civic_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m17
lincomest work_paper + single_workpaper
eststo l17
ivregress 2sls ownmedical_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_k (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m18
lincomest work_paper + single_workpaper
eststo l18
estout m*, cells(b(star) se)
estout l*, cells(b(star) se)
esttab l* using female_r_married_age_l.csv, cells(b(star fmt(5)) se) plain star(* 0.10 ** 0.05 *** 0.01)
esttab m* using female_r_married_age_b.csv, cells(b(star fmt(5)) se) plain star(* 0.10 ** 0.05 *** 0.01)


clear all
use all_atus_qtr_temp
*drop if year < 2017
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
gen male_workpaper = male*work_paper 
gen male_workpaper_agg = male*work_paper_agg 

ivregress 2sls worka_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m1
ivregress 2sls worku_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m2
ivregress 2sls childcare_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m3
ivregress 2sls home_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m4
ivregress 2sls homeproduction_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m5
ivregress 2sls homeown_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m6
ivregress 2sls shopping_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m7
ivregress 2sls othercare_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m8
ivregress 2sls leisure_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m9
ivregress 2sls tv_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m10
ivregress 2sls socializing_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m11
ivregress 2sls sleeping_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m12
ivregress 2sls ep_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m13
ivregress 2sls otherleisure_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m14
ivregress 2sls other_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m15
ivregress 2sls education_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m16
ivregress 2sls civic_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m17
ivregress 2sls ownmedical_paper i.male i.married i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.male#i.married i.male#i.hv_child i.male#c.num_child i.male#c.age_youngest (work_paper = work_paper_agg) [pw=weight_adj],  vce(cluster idn)
estimates store m18
estout *, cells(b se)


* Married with spouse employment
clear all
use all_atus_qtr_temp
drop if year < 2017 
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
replace spouse_emp = 0 if missing(spouse_emp)
drop if female == 0 | spouse_emp == 0 
gen single_workpaper = married*work_paper 
gen single_workpaper_agg = married*work_paper_agg 
*ivregress 2sls childcare_paper i.single i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper female_married_workpaper = work_paper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
*eststo m1
*ivregress 2sls childcare_paper i.single i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.single#i.hv_child i.single#c.num_child i.single#c.age_youngest (work_paper female_married_workpaper = work_paper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
ivregress 2sls worka_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m1
lincomest work_paper + single_workpaper
eststo l1
ivregress 2sls worku_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m2
lincomest work_paper + single_workpaper
eststo l2
ivregress 2sls childcare_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m3
lincomest work_paper + single_workpaper
eststo l3
ivregress 2sls home_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m4
lincomest work_paper + single_workpaper
eststo l4
ivregress 2sls homeproduction_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m5
lincomest work_paper + single_workpaper
eststo l5
ivregress 2sls homeown_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m6
lincomest work_paper + single_workpaper
eststo l6
ivregress 2sls shopping_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m7
lincomest work_paper + single_workpaper
eststo l7
ivregress 2sls othercare_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m8
lincomest work_paper + single_workpaper
eststo l8
ivregress 2sls leisure_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m9
lincomest work_paper + single_workpaper
eststo l9
ivregress 2sls tv_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m10
lincomest work_paper + single_workpaper
eststo l10
ivregress 2sls socializing_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m11
lincomest work_paper + single_workpaper
eststo l11
ivregress 2sls sleeping_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m12
lincomest work_paper + single_workpaper
eststo l12
ivregress 2sls ep_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg ) [pw=weight_adj],  vce(cluster idn)
eststo m13
lincomest work_paper + single_workpaper
eststo l13
ivregress 2sls otherleisure_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m14
lincomest work_paper + single_workpaper
eststo l14
ivregress 2sls other_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m15
lincomest work_paper + single_workpaper
eststo l15
ivregress 2sls education_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m16
lincomest work_paper + single_workpaper
eststo l16
ivregress 2sls civic_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m17
lincomest work_paper + single_workpaper
eststo l17
ivregress 2sls ownmedical_paper i.married i.spouse_emp i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper single_workpaper = work_paper_agg single_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m18
lincomest work_paper + single_workpaper
eststo l18
estout m*, cells(b(star) se)
estout l*, cells(b(star) se)
esttab l* using female_r_married_spouse_l.csv, cells(b(star fmt(5)) se) plain star(* 0.10 ** 0.05 *** 0.01)
esttab m* using female_r_married_spouse_b.csv, cells(b(star fmt(5)) se) plain star(* 0.10 ** 0.05 *** 0.01)


clear all
use all_atus_qtr_temp
drop if year < 2017 
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
gen male_workpaper = female*work_paper 
gen male_workpaper_agg = female*work_paper_agg 
drop if female == 0
*ivregress 2sls childcare_paper i.single i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper female_married_workpaper = work_paper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
*eststo m1
*ivregress 2sls childcare_paper i.single i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest i.single#i.hv_child i.single#c.num_child i.single#c.age_youngest (work_paper female_married_workpaper = work_paper_agg female_married_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
ivregress 2sls childcare_paper i.black age age_sq i.educ1 i.educ2 i.educ3 i.hv_child num_child age_youngest (work_paper male_workpaper = work_paper_agg male_workpaper_agg) [pw=weight_adj],  vce(cluster idn)
eststo m1



