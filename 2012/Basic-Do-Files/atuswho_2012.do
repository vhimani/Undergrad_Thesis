#delimit ;
 
* Edit the insheet statement to reference the data file on your computer.;
 
insheet
tucaseid
tuactivity_n
trwhona
tulineno
tuwho_code
 using "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2012\Basic-Original-Data-Files\atuswho_2012.dat", names comma ;
 
label variable trwhona "Who information not asked for activity";
label variable tuactivity_n "Activity line number";
label variable tucaseid "ATUS Case ID (14-digit identifier)";
label variable tulineno "ATUS person line number";
label variable tuwho_code "Who was in the room with you / Who accompanied you?";
 
label define labeltrwhona
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "TUWHO_CODE asked"
1 "TUWHO_CODE not asked"
;
label define labeltuwho_code
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
18 "Alone"
19 "Alone"
20 "Spouse"
21 "Unmarried partner"
22 "Own household child"
23 "Grandchild"
24 "Parent"
25 "Brother/sister"
26 "Other related person"
27 "Foster child"
28 "Housemate/roommate"
29 "Roomer/boarder"
30 "Other nonrelative"
40 "Own non-household child < 18"
51 "Parents (not living in household)"
52 "Other non-household family members < 18"
53 "Other non-household family members 18 and older (including parents-in-law)"
54 "Friends"
56 "Neighbors/acquaintances"
57 "Other non-household children < 18"
58 "Other non-household adults 18 and older"
59 "Boss or manager"
60 "People whom I supervise"
61 "Co-workers"
62 "Customers"
95 "Continue household roster"
;
 
label values trwhona   labeltrwhona;
label values tuwho_code   labeltuwho_code;
 
describe, short;

save "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2012\Basic-Transformed-Data-Files\atuswho_2012.dta";
