#delimit ;
#delimit ;
clear;

* Edit the insheet statement to reference the data file on your computer.;

insheet
tucaseid
  tuactivity_n
  tutier1code
  tutier2code
  tutier3code
  tustarttim
  tustoptime
  tuactdur
  tucumdur
  tucc5
  tucc7
  tucc8
  tewhere
  txwhere
  tucc5b
  tuactdur24
  tucumdur24
  trtcc_ln
  trtcoc_ln
  trtohh_ln
  trtonhh_ln
  trtnohh_ln
  trto_ln
  trthh_ln
  trtcctot_ln

   using "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2004\Basic-Do-Files\atusact_2004.dat",  names comma ;
 
label variable  tewhere           "Edited: Where were you during the activity?";
label variable  trtcc_ln          "Total time spent during activity providing secondary child care for  household and own non-household children < 13";
label variable  trtcctot_ln       "Total time spent during activity providing secondary childcare for all children < 13";
label variable  trtcoc_ln         "Total time spent during activity providing secondary child care for non-own, non-household children <13";
label variable  trthh_ln          "Total time spent during activity providing secondary childcare for household children < 13";
label variable  trtnohh_ln        "Total time spent during activity providing secondary childcare for non-own household children < 13";
label variable  trto_ln           "Total time spent during activity providing secondary childcare for own children < 13";
label variable  trtohh_ln         "Total time spent during activity providing secondary childcare for own household children < 13";
label variable  trtonhh_ln        "Total time spent during activity providing secondary childcare for own nonhousehold children < 13";
label variable  tuactdur          "Duration of activity in minutes (last activity not truncated at 4:00 a.m.)";
label variable  tuactdur24        "Duration of activity in minutes (last activity truncated at 4:00 a.m.)";
label variable  tuactivity_n      "Activity line number";
label variable  tucaseid          "ATUS Case ID (14-digit identifier)";
label variable  tucc5             "Was at least one of your own household children < 13 in your care during this activity?";
label variable  tucc5b            "Was at least one of your non-own household children < 13 in your care during this activity?";
label variable  tucc7             "Was at least one of your own nonhousehold children < 13 in your care during this activity?";
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
30    "Bank"
31    "Gym/health club"
32    "Post Office"
89    "Unspecified Place"
99    "Unspecified Mode Of Transportation"
;
label define labeltucc5
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "No"
1     "Yes"
97    "No Additional Activities Involved Childcare"
;
label define labeltucc5b
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "No"
1     "Yes"
97    "No Additional Activities Involved Childcare"
;
label define labeltucc7
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "No"
1     "Yes"
97    "No Additional Activities Involved Childcare"
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
label values    tucc5             labeltucc5;
label values    tucc5b            labeltucc5b;
label values    tucc7             labeltucc7;
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

save "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2004\Basic-Transformed-Data-Files\atusact_2004.dta" ;

