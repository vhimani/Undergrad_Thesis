#delimit ;
clear;

insheet
  tucaseid
  tuactivity_n
  tuwho_code
  tulineno
  trwhona
  
   using "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\2006\Basic Original Data Files\atuswho_2006.dat",  names comma ;
 

label variable  trwhona           "Who information not asked for activity";
label variable  tuactivity_n      "Activity line number";
label variable  tucaseid          "ATUS Case ID (14-digit identifier)";
label variable  tulineno          "ATUS Person Line Number";
label variable  tuwho_code        "Who was in the room with you / Who accompanied you?";

label define labeltrwhona
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "TUWHO_CODE Asked"
1     "TUWHO_CODE Not Asked"
;
label define labeltuwho_code
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
18    "Alone"
19    "Alone"
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
40    "Own Nonhousehold Child"
51    "Parents"
52    "Other Non-Household Family Members < 18"
53    "Other Non-Household Family Members 18 And Older"
54    "Friends"
55    "Co-Workers/Colleagues/Clients"
56    "Neighbors/Acquaintances"
57    "Other Nonhousehold Children < 18"
58    "Other Nonhousehold Adults 18 And Older"
;

label values    trwhona           labeltrwhona;
label values    tuwho_code        labeltuwho_code;

describe, short;

/* DATA TYPES : 8 means numeric, $N means char w/ length N
  tucaseid $14
  tuactivity_n 8
  tuwho_code 8
  tulineno 8
  trwhona 8
*/

save "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\2006\Basic Transformed Data Files\atuswho_2006.dta" ;
