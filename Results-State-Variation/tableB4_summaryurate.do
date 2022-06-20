# delimit ;

clear all;
clear matrix;
set mem 800m;
set more off;



cd "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\Results State Variation";
 
use state_1865_base;
xtset idn twoyear, yearly;
sum D.urate [aw=popweight], detail; 
sum D.urate  [aw=popweight] if twoyear==2, detail;
sum D.urate  [aw=popweight] if twoyear==3, detail;
sum D.urate  [aw=popweight] if twoyear==4, detail; 

