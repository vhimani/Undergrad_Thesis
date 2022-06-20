# delimit ;

clear all;
clear matrix;
set mem 800m;
set more off;



cd "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\Results State Variation";
 
use state_1865_base;
xtset idn twoyear, yearly;
gen leisurechange=leisurepaper-L2.leisurepaper;
gen homechange=homepaper-L2.homepaper;
sum leisurechange [aw=popweight] if twoyear==3, detail; 
sum homechange    [aw=popweight] if twoyear==3, detail;  

