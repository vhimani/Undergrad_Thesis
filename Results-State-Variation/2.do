# delimit ;

clear all;
clear matrix;
set mem 800m;
set more off;

cd "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\Results-State-Variation";
 
use all_atus;

gen age1=0;
replace age1=1 if age>=18 & age<=27;
gen age2=0;
replace age2=1 if age>=28 & age<=37;
gen age3=0;
replace age3=1 if age>=38 & age<=47;
gen age4=0;
replace age4=1 if age>=48 & age<=57;
gen age5=0;
replace age5=1 if age>=58 & age<=65;
gen educ1=0;
replace educ1=1 if grade<12;
gen educ2=0;
replace educ2=1 if grade==12;
gen educ3=0;
replace educ3=1 if grade>12 & grade<16;
gen educ4=0;
replace educ4=1 if grade>=16;

drop if age>65;
drop if age<18;
drop if other>0;

tabout twoyear if gestfips==1            [aw=weight_adj] using men_temp.xls, replace format(8) ptotal(none) lines (none)                            sum cells(N work_paper mean twoyear mean male mean age mean age1 mean age2 mean age3 mean age4 mean age5 mean educ1 mean educ2 mean educ3 mean educ4 mean spouse_emp mean married mean black mean hv_child mean num_child mean grade mean working mean unemp mean retired mean disabled mean student mean homemaker  mean work_paper mean worka_paper mean worku_paper mean leisure_paper mean ep_paper mean sleeping_paper mean esp_paper mean tv_paper mean otherleisure_paper mean socializing_paper mean home_paper mean homeproduction_paper mean homeown_paper mean shopping_paper mean othercare_paper mean childcare_paper mean other_paper mean education_paper mean civic_paper mean ownmedical_paper mean unclassified_paper) show(none);
tabout twoyear if male==1           [aw=weight_adj] using men_temp.xls, append  format(8) h1(nil) h2(nil) h3(nil) ptotal(none) lines (none)    sum cells(N work_paper mean twoyear mean male mean age mean age1 mean age2 mean age3 mean age4 mean age5 mean educ1 mean educ2 mean educ3 mean educ4 mean spouse_emp mean married mean black mean hv_child mean num_child mean grade mean working mean unemp mean retired mean disabled mean student mean homemaker  mean work_paper mean worka_paper mean worku_paper mean leisure_paper mean ep_paper mean sleeping_paper mean esp_paper mean tv_paper mean otherleisure_paper mean socializing_paper mean home_paper mean homeproduction_paper mean homeown_paper mean shopping_paper mean othercare_paper mean childcare_paper mean other_paper mean education_paper mean civic_paper mean ownmedical_paper mean unclassified_paper) show(none);
tabout twoyear if male==0           [aw=weight_adj] using men_temp.xls, append  format(8) h1(nil) h2(nil) h3(nil) ptotal(none) lines (none)    sum cells(N work_paper mean twoyear mean male mean age mean age1 mean age2 mean age3 mean age4 mean age5 mean educ1 mean educ2 mean educ3 mean educ4 mean spouse_emp mean married mean black mean hv_child mean num_child mean grade mean working mean unemp mean retired mean disabled mean student mean homemaker  mean work_paper mean worka_paper mean worku_paper mean leisure_paper mean ep_paper mean sleeping_paper mean esp_paper mean tv_paper mean otherleisure_paper mean socializing_paper mean home_paper mean homeproduction_paper mean homeown_paper mean shopping_paper mean othercare_paper mean childcare_paper mean other_paper mean education_paper mean civic_paper mean ownmedical_paper mean unclassified_paper) show(none);


