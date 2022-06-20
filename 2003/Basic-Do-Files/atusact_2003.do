#delimit ;
#delimit ;
clear;

* Edit the insheet statement to reference the data file on your computer.;

insheet
  tucaseid
  tuactdur24
  trtcc_ln
  trtcoc_ln
  tuactivity_n
  tutier1code
  tutier2code
  tutier3code
  tustarttim
  tustoptime
  tuactdur
  tucc8
  tucumdur
  tewhere
  txwhere
  tr_03cc57
  tucumdur24

  
   using "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2003\Basic-Original-Data-Files\atusact_2003.dat",  names comma ;
 
label variable  tewhere           "Edited: Where were you during the activity?";
label variable  trtcc_ln          "Total time spent during activity providing secondary child care for  household and own non-household children < 13";
label variable  trtcoc_ln         "Total time spent during activity providing secondary child care for non-own, non-household children <13";
label variable  tr_03cc57         "Was a household or own non-household child in your care during this activity?";
label variable  tuactdur          "Duration of activity in minutes (last activity not truncated at 4:00 a.m.)";
label variable  tuactdur24        "Duration of activity in minutes (last activity truncated at 4:00 a.m.)";
label variable  tuactivity_n      "Activity line number";
label variable  tucaseid          "ATUS Case ID (14-digit identifier)";
label variable  tucc8             "Other than household or own non-household children under 13, was there a child 0-12 in your care during this activity?";
label variable  tucumdur          "Cumulative duration of activity lengths in minutes; last activity not truncated at 4:00 am or 1440 minutes (cumulative total of TUACTDUR)";
label variable  tucumdur24        "Cumulative duration of activity lengths in minutes; last activity truncated at 4:00 am or 1440 minutes (cumulative total of TUACTDUR24)";
label variable  tustarttim        "Activity start time";
label variable  tustoptime        "Activity stop time";
label variable  tutier1code       "Lexicon Tier 1-First 2 digits of 6 Digit Activity code";
label variable  tutier2code       "Lexicon Tier 2-Third and fourth digits of 6 digit Activity code";
label variable  tutier3code       "Lexicon Tier 3-Fifth and Sixth digits of 6 Digit Activity code";
label variable  txwhere           "TEWHERE: allocation flag";

label define labeltewhere
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Respondent's Home Or Yard"
2     "Respondent's Workplace"
3     "Someone Else's Home"
4     "Restaurant Or Bar"
5     "Place Of Worship"
6     "Grocery Store"
7     "Other Store/Mall"
8     "School"
9     "Outdoors Away From Home"
10    "Library"
11    "Other"
12    "Car, Truck Or Motorcycle (Driver)"
13    "Car, Truck Or Motorcycle (Passenger)"
14    "Walking"
15    "Bus"
16    "Subway/Train"
17    "Bicycle"
18    "Boat/Ferry"
19    "Taxi/Limousine Service"
20    "Airplane"
21    "Other"
89    "Unspecified Place"
99    "Unspecified Mode Of Transportation"
;
label define labeltr_03cc57
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "No Child was in Respondent's Care during Activity"
1     "A Child was in Respondent's Care during Activity"
;
label define labeltucc8
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "No"
1     "Yes"
97    "No Additional Activities Involved Childcare"
;
label define labeltxwhere
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

label values    tewhere           labeltewhere;
label values    tr_03cc57         labeltr_03cc57;
label values    tucc8             labeltucc8;
label values    txwhere           labeltxwhere;


describe, short;

/* DATA TYPES : 8 means numeric, $N means char w/ length N
  TUCASEID $14
  TUACTDUR24 8
  TRTCC_LN 8
  TRTCOC_LN 8
  TUACTIVITY_N 8
  TUTIER1CODE $2
  TUTIER2CODE $2
  TUTIER3CODE $2
  TUSTARTTIM $8
  TUSTOPTIME $8
  TUACTDUR 8
  TUCC8 8
  TUCUMDUR 8
  TEWHERE 8
  TXWHERE 8
  TR_03CC57 8
  TUCUMDUR24 8
*/

save "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2003\Basic-Transformed-Data-Files\atusact_2003.dta" ;

