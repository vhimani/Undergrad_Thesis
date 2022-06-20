# delimit ;

clear ;
clear matrix;


set mem 800m;

cd "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\ALL";

use 03_subset, clear;

append using 04_subset ;

append using 05_subset ;

append using 06_subset ;

append using 07_subset ;

append using 08_subset ;

append using 09_subset ;

append using 10_subset ;

append using 11_subset ;

append using 12_subset ;

append using 13_subset ;

append using 14_subset ;

append using 15_subset, force ;

append using 16_subset, force ;

append using 17_subset, force ;

append using 18_subset, force ;

append using 19_subset, force ;

append using 20_subset, force ;

save all_atus, replace;

