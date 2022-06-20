# delimit ;

clear all;
clear matrix;
set mem 800m;
set more off;



cd "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\Results State Variation";


*Column 2 and 3;
use state_1865_base;
xtset idn twoyear, yearly;
regress D.workapaper D.workpaper          , vce(cluster idn);
regress D.workupaper D.workpaper          , vce(cluster idn);
regress D.childcarepaper D.workpaper      , vce(cluster idn);
regress D.homepaper D.workpaper           , vce(cluster idn);
regress D.homeproductionpaper D.workpaper , vce(cluster idn);
regress D.homeownpaper D.workpaper        , vce(cluster idn);
regress D.shoppingpaper D.workpaper       , vce(cluster idn);
regress D.othercarepaper D.workpaper      , vce(cluster idn);
regress D.leisurepaper D.workpaper        , vce(cluster idn);
regress D.tvpaper D.workpaper             , vce(cluster idn);
regress D.socializingpaper D.workpaper    , vce(cluster idn);
regress D.sleepingpaper D.workpaper       , vce(cluster idn);
regress D.eppaper D.workpaper             , vce(cluster idn);
regress D.otherleisurepaper D.workpaper   , vce(cluster idn);
regress D.otherpaper D.workpaper          , vce(cluster idn);
regress D.educationpaper D.workpaper      , vce(cluster idn);
regress D.civicpaper D.workpaper          , vce(cluster idn);
regress D.ownmedicalpaper D.workpaper     , vce(cluster idn);
clear all;

*Columns 4 and 5;
use state_1865_base;
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

*Column 6;
use state_1865_base;
xtset idn twoyear, yearly;
regress D.workapaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4           [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4        [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4       [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4        [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4             [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4    [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4       [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4             [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4   [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4     [aw=popweight], vce(cluster idn);
clear all; 

*Column 7;
use state_1865_base;
xtset idn twoyear, yearly;
gen time1=0;
replace time1=1 if twoyear==1;
gen time2=0;
replace time2=1 if twoyear==2;
gen time3=0;
replace time3=1 if twoyear==3;
gen time4=0;
replace time4=1 if twoyear==4;
regress D.workapaper D.workpaper time2 time3 time4          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper time2 time3 time4          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper time2 time3 time4      [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper time2 time3 time4           [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper time2 time3 time4 [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper time2 time3 time4        [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper time2 time3 time4       [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper time2 time3 time4      [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper time2 time3 time4        [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper time2 time3 time4             [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper time2 time3 time4    [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper time2 time3 time4       [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper time2 time3 time4             [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper time2 time3 time4   [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper time2 time3 time4          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper time2 time3 time4      [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper time2 time3 time4          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper time2 time3 time4     [aw=popweight], vce(cluster idn);
clear all;

*Column 8;
use state_1865_base;
xtset idn twoyear, yearly;
gen time1=0;
replace time1=1 if twoyear==1;
gen time2=0;
replace time2=1 if twoyear==2;
gen time3=0;
replace time3=1 if twoyear==3;
gen time4=0;
replace time4=1 if twoyear==4;
regress D.workapaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.workupaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.childcarepaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], vce(cluster idn);
regress D.homepaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4           [aw=popweight], vce(cluster idn);
regress D.homeproductionpaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 [aw=popweight], vce(cluster idn);
regress D.homeownpaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4        [aw=popweight], vce(cluster idn);
regress D.shoppingpaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4       [aw=popweight], vce(cluster idn);
regress D.othercarepaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], vce(cluster idn);
regress D.leisurepaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4        [aw=popweight], vce(cluster idn);
regress D.tvpaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4             [aw=popweight], vce(cluster idn);
regress D.socializingpaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4    [aw=popweight], vce(cluster idn);
regress D.sleepingpaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4       [aw=popweight], vce(cluster idn);
regress D.eppaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4             [aw=popweight], vce(cluster idn);
regress D.otherleisurepaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4   [aw=popweight], vce(cluster idn);
regress D.otherpaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.educationpaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], vce(cluster idn);
regress D.civicpaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], vce(cluster idn);
regress D.ownmedicalpaper D.workpaper time2 time3 time4 D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4     [aw=popweight], vce(cluster idn);
clear all;  

