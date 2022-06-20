#delimit ;
 
 clear;
 
* Edit the insheet statement to reference the data file on your computer.;
 
insheet
tucaseid
tulineno
teage
terrp
tesex
txage
txrrp
txsex
 using "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\2009\Basic Original Data Files\atusrost_2009.dat",  names comma ;

 
label variable teage "Edited: age";
label variable terrp "Edited: how is this person related to you?";
label variable tesex "Edited: sex";
label variable tucaseid "ATUS Case ID (14-digit identifier)";
label variable tulineno "ATUS person line number";
label variable txage "TEAGE: allocation flag";
label variable txrrp "TERRP: allocation flag";
label variable txsex "TESEX: allocation flag";
 
label define labelterrp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
18 "Self"
19 "Self"
20 "Spouse"
21 "Unmarried partner"
22 "Own household child"
23 "Grandchild"
24 "Parent"
25 "Brother/sister"
26 "Other relative"
27 "Foster child"
28 "Housemate/roommate"
29 "Roomer/boarder"
30 "Other nonrelative"
40 "Own non-household child < 18"
;
label define labeltesex
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Male"
2 "Female"
;
label define labeltxage
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Value - no change"
1 "Blank - no change"
2 "Don`t know - no change"
3 "Refused - no change"
10 "Value to value"
11 "Blank to value"
12 "Don`t know to value"
13 "Refused to value"
20 "Value to longitudinal value"
21 "Blank to longitudinal value"
22 "Don`t know to longitudinal value"
23 "Refused to longitudinal value"
30 "Value to allocated longitudinal value"
31 "Blank to allocated longitudinal value"
32 "Don`t know to allocated longitudinal value"
33 "Refused to allocated longitudinal value"
40 "Value to allocated value"
41 "Blank to allocated value"
42 "Don`t know to allocated value"
43 "Refused to allocated value"
50 "Value to blank"
52 "Don`t know to blank"
53 "Refused to blank"
60 "Topcoded"
61 "Topcoded and allocated"
;
label define labeltxrrp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Value - No Change"
1 "Blank - No Change"
2 "Don`t Know - No Change"
3 "Refused - No Change"
10 "Value To Value"
11 "Blank To Value"
12 "Don`t Know To Value"
13 "Refused To Value"
20 "Value To Longitudinal Value"
21 "Blank To Longitudinal Value"
22 "Don`t Know To Longitudinal Value"
23 "Refused To Longitudinal Value"
30 "Value To Allocated Value Long."
31 "Blank To Allocated Value Long."
32 "Don`t Know To Allocated Value Long."
33 "Refused To Allocated Value Long."
40 "Value To Allocated Value"
41 "Blank To Allocated Value"
42 "Don`t Know To Allocated Value"
43 "Refused To Allocated Value"
50 "Value To Blank"
52 "Don`t Know To Blank"
53 "Refused To Blank"
;
label define labeltxsex
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Value - No Change"
1 "Blank - No Change"
2 "Don`t Know - No Change"
3 "Refused - No Change"
10 "Value To Value"
11 "Blank To Value"
12 "Don`t Know To Value"
13 "Refused To Value"
20 "Value To Longitudinal Value"
21 "Blank To Longitudinal Value"
22 "Don`t Know To Longitudinal Value"
23 "Refused To Longitudinal Value"
30 "Value To Allocated Value Long."
31 "Blank To Allocated Value Long."
32 "Don`t Know To Allocated Value Long."
33 "Refused To Allocated Value Long."
40 "Value To Allocated Value"
41 "Blank To Allocated Value"
42 "Don`t Know To Allocated Value"
43 "Refused To Allocated Value"
50 "Value To Blank"
52 "Don`t Know To Blank"
53 "Refused To Blank"
;
 
label values terrp   labelterrp;
label values tesex   labeltesex;
label values txage   labeltxage;
label values txrrp   labeltxrrp;
label values txsex   labeltxsex;
 
describe, short;

save "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\2009\Basic Transformed Data Files\atusrost_2009.dta";
