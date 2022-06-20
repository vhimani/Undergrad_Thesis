# delimit ;

clear ;
clear matrix;


set mem 800m;

cd "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\Results State Variation";


*Column 1;
use state_1865_oneyear;
xtset idn year, yearly;
regress D.workapaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper      [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper           [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper        [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper       [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper      [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper        [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper             [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper    [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper       [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper             [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper   [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper      [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper     [aw=popweight], vce(cluster idn);
clear all;


*Column 2;
use state_all_base;
xtset idn twoyear, yearly;
regress D.workapaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper      [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper           [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper        [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper       [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper      [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper        [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper             [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper    [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper       [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper             [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper   [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper      [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper     [aw=popweight], vce(cluster idn);
clear all;


*Column 3;
use state_allunclass_base;
xtset idn twoyear, yearly;
regress D.workapaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper      [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper           [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper        [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper       [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper      [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper        [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper             [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper    [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper       [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper             [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper   [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper      [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper     [aw=popweight], vce(cluster idn);
clear all;


*Column 4;
use state_1865_base;
xtset idn twoyear, yearly;
xtreg D.workapaper D.workpaper          [aw=popweight], fe vce(cluster idn);
xtreg D.workupaper D.workpaper          [aw=popweight], fe vce(cluster idn);
xtreg D.childcarepaper D.workpaper      [aw=popweight], fe vce(cluster idn);
xtreg D.homepaper D.workpaper           [aw=popweight], fe vce(cluster idn);
xtreg D.homeproductionpaper D.workpaper [aw=popweight], fe vce(cluster idn);
xtreg D.homeownpaper D.workpaper        [aw=popweight], fe vce(cluster idn);
xtreg D.shoppingpaper D.workpaper       [aw=popweight], fe vce(cluster idn);
xtreg D.othercarepaper D.workpaper      [aw=popweight], fe vce(cluster idn);
xtreg D.leisurepaper D.workpaper        [aw=popweight], fe vce(cluster idn);
xtreg D.tvpaper D.workpaper             [aw=popweight], fe vce(cluster idn);
xtreg D.socializingpaper D.workpaper    [aw=popweight], fe vce(cluster idn);
xtreg D.sleepingpaper D.workpaper       [aw=popweight], fe vce(cluster idn);
xtreg D.eppaper D.workpaper             [aw=popweight], fe vce(cluster idn);
xtreg D.otherleisurepaper D.workpaper   [aw=popweight], fe vce(cluster idn);
xtreg D.otherpaper D.workpaper          [aw=popweight], fe vce(cluster idn);
xtreg D.educationpaper D.workpaper      [aw=popweight], fe vce(cluster idn);
xtreg D.civicpaper D.workpaper          [aw=popweight], fe vce(cluster idn);
xtreg D.ownmedicalpaper D.workpaper     [aw=popweight], fe vce(cluster idn);
clear all;


*Column 5;
use state_1865_base;
xtset idn twoyear, yearly;
gen time=0;
replace time=1 if twoyear==1;
replace time=2 if twoyear==2;
replace time=3 if twoyear==3;
replace time=4 if twoyear==4;
foreach j of num  1/56{;
gen timetrend`j'=0;
replace timetrend`j'=time if idn==`j';
};
regress D.workapaper D.workpaper timetrend*          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper timetrend*          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper timetrend*      [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper timetrend*           [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper timetrend* [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper timetrend*        [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper timetrend*       [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper timetrend*      [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper timetrend*        [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper timetrend*             [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper timetrend*    [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper timetrend*       [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper timetrend*             [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper timetrend*   [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper timetrend*          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper timetrend*      [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper timetrend*          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper timetrend*     [aw=popweight], vce(cluster idn);
clear all;



*Column 6;
use state_1865_oneyear;
xtset idn year, yearly;
regress D.workapaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper           D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper        D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper       D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper        D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper             D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper    D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper       D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper             D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper   D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper     D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
clear all;


*Column 7;
use state_all_base;
xtset idn twoyear, yearly;
regress D.workapaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper           D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper        D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper       D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper        D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper             D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper    D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper       D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper             D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper   D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper     D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
clear all;


*Column 8;
use state_allunclass_base;
xtset idn twoyear, yearly;
regress D.workapaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper           D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper        D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper       D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper        D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper             D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper    D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper       D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper             D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper   D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper     D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
clear all;


*Column 9;
use state_1865_base;
xtset idn twoyear, yearly;
xtreg D.workapaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.workupaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.childcarepaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.homepaper D.workpaper           D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.homeproductionpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.homeownpaper D.workpaper        D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.shoppingpaper D.workpaper       D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.othercarepaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.leisurepaper D.workpaper        D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.tvpaper D.workpaper             D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.socializingpaper D.workpaper    D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.sleepingpaper D.workpaper       D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.eppaper D.workpaper             D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.otherleisurepaper D.workpaper   D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.otherpaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.educationpaper D.workpaper      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.civicpaper D.workpaper          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
xtreg D.ownmedicalpaper D.workpaper     D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], fe vce(cluster idn);
clear all;


*Column 10;
use state_1865_base;
xtset idn twoyear, yearly;
gen time=0;
replace time=1 if twoyear==1;
replace time=2 if twoyear==2;
replace time=3 if twoyear==3;
replace time=4 if twoyear==4;
foreach j of num  1/56{;
gen timetrend`j'=0;
replace timetrend`j'=time if idn==`j';
};
regress D.workapaper D.workpaper timetrend*          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper timetrend*          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper timetrend*      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper timetrend*           D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper timetrend* D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper timetrend*        D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper timetrend*       D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper timetrend*      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper timetrend*        D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper timetrend*             D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper timetrend*    D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper timetrend*       D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper timetrend*             D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper timetrend*   D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper timetrend*          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper timetrend*      D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper timetrend*          D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper timetrend*     D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
clear all;


























