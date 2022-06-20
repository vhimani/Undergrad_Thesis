# delimit ;

clear all;
clear matrix;
set mem 800m;
set more off;

cd "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\Results State Variation";


pause on;

use state_1865_base;

xtset idn twoyear, yearly ;
gen dwork=D.workpaper;
gen dleisure=D.leisurepaper;
gen dhome=D.homepaper;

*Figure 5;
twoway (scatter dhome dwork [aweight = popweight], msize(vsmall) msymbol(smcircle) mfcolor(none) mlcolor(black)) (lfit dhome dwork [aweight = popweight]);
pause Enter q to continue, BREAK to halt;
*Figure 6;
twoway (scatter dleisure dwork [aweight = popweight], msize(vsmall) msymbol(smcircle) mfcolor(none) mlcolor(black)) (lfit dleisure dwork [aweight = popweight]);
pause Enter q to continue, BREAK to halt;

clear all;  

