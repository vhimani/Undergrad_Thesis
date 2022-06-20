# delimit ;

clear all;
clear matrix;
set mem 800m;
set more off;



cd "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\Results State Variation";


*Column 1 and 2;
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

*Column 3;
use state_1865_base;
xtset idn twoyear, yearly;
xtpcse D.workapaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], hetonly;
xtpcse D.workupaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], hetonly;
xtpcse D.childcarepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], hetonly;
xtpcse D.homepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4           [aw=popweight], hetonly;
xtpcse D.homeproductionpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 [aw=popweight], hetonly;
xtpcse D.homeownpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4        [aw=popweight], hetonly;
xtpcse D.shoppingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4       [aw=popweight], hetonly;
xtpcse D.othercarepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], hetonly;
xtpcse D.leisurepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4        [aw=popweight], hetonly;
xtpcse D.tvpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4             [aw=popweight], hetonly;
xtpcse D.socializingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4    [aw=popweight], hetonly;
xtpcse D.sleepingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4       [aw=popweight], hetonly;
xtpcse D.eppaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4             [aw=popweight], hetonly;
xtpcse D.otherleisurepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4   [aw=popweight], hetonly;
xtpcse D.otherpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], hetonly;
xtpcse D.educationpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], hetonly;
xtpcse D.civicpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], hetonly;
xtpcse D.ownmedicalpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4     [aw=popweight], hetonly;
clear all; 

*Column 4;
use state_1865_base;
xtset idn twoyear, yearly;
xtpcse D.workapaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight];
xtpcse D.workupaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight];
xtpcse D.childcarepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight];
xtpcse D.homepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4           [aw=popweight];
xtpcse D.homeproductionpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 [aw=popweight];
xtpcse D.homeownpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4        [aw=popweight];
xtpcse D.shoppingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4       [aw=popweight];
xtpcse D.othercarepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight];
xtpcse D.leisurepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4        [aw=popweight];
xtpcse D.tvpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4             [aw=popweight];
xtpcse D.socializingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4    [aw=popweight];
xtpcse D.sleepingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4       [aw=popweight];
xtpcse D.eppaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4             [aw=popweight];
xtpcse D.otherleisurepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4   [aw=popweight];
xtpcse D.otherpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight];
xtpcse D.educationpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight];
xtpcse D.civicpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight];
xtpcse D.ownmedicalpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4     [aw=popweight];
clear all; 

*Columns 5 and 6;
use state_1865_base;
xtset idn twoyear, yearly;
xtpcse D.workapaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], correlation(psar1);
xtpcse D.workupaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], correlation(psar1);
xtpcse D.childcarepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], correlation(psar1);
xtpcse D.homepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4           [aw=popweight], correlation(psar1);
xtpcse D.homeproductionpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 [aw=popweight], correlation(psar1);
xtpcse D.homeownpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4        [aw=popweight], correlation(psar1);
xtpcse D.shoppingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4       [aw=popweight], correlation(psar1);
xtpcse D.othercarepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], correlation(psar1);
xtpcse D.leisurepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4        [aw=popweight], correlation(psar1);
xtpcse D.tvpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4             [aw=popweight], correlation(psar1);
xtpcse D.socializingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4    [aw=popweight], correlation(psar1);
xtpcse D.sleepingpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4       [aw=popweight], correlation(psar1);
xtpcse D.eppaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4             [aw=popweight], correlation(psar1);
xtpcse D.otherleisurepaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4   [aw=popweight], correlation(psar1);
xtpcse D.otherpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], correlation(psar1);
xtpcse D.educationpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4      [aw=popweight], correlation(psar1);
xtpcse D.civicpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4          [aw=popweight], correlation(psar1);
xtpcse D.ownmedicalpaper D.workpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4     [aw=popweight], correlation(psar1);
clear all; 




