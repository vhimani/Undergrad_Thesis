#delimit ;
clear ;

insheet
  tucaseid
  tulineno
  turrp
  tesex
  terrp
  teage
  txsex
  txrrp
  txage
  
using "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2003\Basic-Original-Data-Files\atusrost_2003.dat",  names comma ;

label variable  teage             "Edited: Age";
label variable  terrp             "Edited: How is this person related to you?";
label variable  tesex             "Edited: Sex";
label variable  tucaseid          "ATUS Case ID (14-digit identifier)";
label variable  tulineno          "ATUS Person Line Number";
label variable  turrp             "Relationship to ATUS Respondent";
label variable  txage             "TEAGE: allocation flag";
label variable  txrrp             "TERRP: allocation flag";
label variable  txsex             "TESEX: allocation flag";

label define labelterrp
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
18    "Self"
19    "Self"
20    "Spouse (Husband/Wife)"
21    "Unmarried Partner"
22    "Own Household Child"
23    "Grandchild"
24    "Parent (Mother/Father)"
25    "Brother/Sister"
26    "Other Related Person (Aunt, Cousin, Nephew)"
27    "Foster Child"
28    "Housemate/Roommate"
29    "Roomer/Boarder"
30    "Other Nonrelative"
40    "Own Non-Household Child"
;
label define labeltesex
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Male"
2     "Female"
;
label define labelturrp
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
18    "Self"
19    "Self"
20    "Spouse (Husband/Wife)"
21    "Unmarried Partner"
22    "Own Household Child"
23    "Grandchild"
24    "Parent (Mother/Father)"
25    "Brother/Sister"
26    "Other Related Person (Aunt, Cousin, Nephew)"
27    "Foster Child"
28    "Housemate/Roommate"
29    "Roomer/Boarder"
30    "Other Nonrelative"
40    "Own Non-Household Child"
;
label define labeltxage
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Value - No Change"
1     "Blank - No Change"
2     "Don`t Know - No Change"
3     "Refused - No Change"
10    "Value To Value"
11    "Blank To Value"
12    "Don`t Know To Value"
13    "Refused To Value"
20    "Value To Longitudinal Value"
21    "Blank To Longitudinal Value"
22    "Don`t Know To Longitudinal Value"
23    "Refused To Longitudinal Value"
30    "Value To Allocated Longitudinal Value"
31    "Blank To Allocated Longitudinal Value"
32    "Don`t Know To Allocated Longitudinal Value"
33    "Refused To Allocated Longitudinal Value"
40    "Value To Allocated Value"
41    "Blank To Allocated Value"
42    "Don`t Know To Allocated Value"
43    "Refused To Allocated Value"
50    "Value To Blank"
52    "Don`t Know To Blank"
53    "Refused To Blank"
60    "Topcoded"
61    "Topcoded And Allocated"
;
label define labeltxrrp
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Value - No Change"
1     "Blank - No Change"
2     "Don`t Know - No Change"
3     "Refused - No Change"
10    "Value To Value"
11    "Blank To Value"
12    "Don`t Know To Value"
13    "Refused To Value"
20    "Value To Longitudinal Value"
21    "Blank To Longitudinal Value"
22    "Don`t Know To Longitudinal Value"
23    "Refused To Longitudinal Value"
30    "Value To Allocated Value Long."
31    "Blank To Allocated Value Long."
32    "Don`t Know To Allocated Value Long."
33    "Refused To Allocated Value Long."
40    "Value To Allocated Value"
41    "Blank To Allocated Value"
42    "Don`t Know To Allocated Value"
43    "Refused To Allocated Value"
50    "Value To Blank"
52    "Don`t Know To Blank"
53    "Refused To Blank"
;
label define labeltxsex
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Value - No Change"
1     "Blank - No Change"
2     "Don`t Know - No Change"
3     "Refused - No Change"
10    "Value To Value"
11    "Blank To Value"
12    "Don`t Know To Value"
13    "Refused To Value"
20    "Value To Longitudinal Value"
21    "Blank To Longitudinal Value"
22    "Don`t Know To Longitudinal Value"
23    "Refused To Longitudinal Value"
30    "Value To Allocated Value Long."
31    "Blank To Allocated Value Long."
32    "Don`t Know To Allocated Value Long."
33    "Refused To Allocated Value Long."
40    "Value To Allocated Value"
41    "Blank To Allocated Value"
42    "Don`t Know To Allocated Value"
43    "Refused To Allocated Value"
50    "Value To Blank"
52    "Don`t Know To Blank"
53    "Refused To Blank"
;

label values    terrp             labelterrp;
label values    tesex             labeltesex;
label values    turrp             labelturrp;
label values    txage             labeltxage;
label values    txrrp             labeltxrrp;
label values    txsex             labeltxsex;

describe, short;

/* DATA TYPES : 8 means numeric, $N means char w/ length N
  tucaseid $14
  tulineno 8
  turrp 8
  tesex 8
  terrp 8
  teage 8
  txsex 8
  txrrp 8
  txage 8
*/

save "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2003\Basic-Transformed-Data-Files\atusrost_2003.dta";

