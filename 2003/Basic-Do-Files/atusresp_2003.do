#delimit ;

clear;

* Edit the insheet statement to reference the data file on your computer.;

insheet  
  tuyear
  tumonth
  tucaseid
  tulineno
  tudiarydate
  tudiaryday
  tespempnot
  trspftpt
  trwernal
  tuio1mfg
  tudis1
  tryhhchild
  trmjind1
  trdtocc1
  txspempnot
  txret1
  trimind1
  trdtind1
  trmjocgr
  txspuhrs
  trsppres
  tuabsot
  tubus
  tubus1
  tubus2ot
  tubusl1
  tubusl2
  tubusl3
  tubusl4
  tudis
  tulay
  tufwk
  turetot
  tuspabs
  tuspusft
  tucc2
  tucc4
  tucc9
  tulay6m
  tulayavr
  tulaydt
  tulk
  tulkavr
  tulkm2
  tulkm3
  tulkm4
  tulkm5
  tulkm6
  tulkdk1
  tulkdk2
  tulkdk3
  tulkdk4
  tulkdk5
  tulkdk6
  tulkps1
  tulkps2
  tulkps3
  tulkps4
  tulkps5
  tulkps6
  tuernh1c
  tuern2
  trmjocc1
  txtcc
  txtcoc
  txabsrsn
  txmjot
  txhrftpt
  txhrusl1
  txhrusl2
  txhruslt
  txio1ocd
  txlayavl
  txlaylk
  txlkavl
  txlkm1
  txernh1o
  txernhro
  txernper
  txernuot
  txernwkp
  txern
  txernh2
  txschenr
  txschft
  txschlvl
  ttot
  ttwk
  trholiday
  trtsponly
  trthhfamily
  trtunmpart
  teabsrsn
  temjot
  tehrftpt
  tehrusl1
  tehrusl2
  tehruslt
  teio1cow
  teio1icd
  teio1ocd
  telayavl
  telaylk
  telkavl
  telkm1
  teernh1o
  teernhro
  teernper
  teernuot
  teernwkp
  teern
  teernh2
  teernrt
  teschenr
  teschft
  teschlvl
  trtalone
  trtspouse
  trtfamily
  trtccc
  trtfriend
  trtohhchild
  trtonhhchild
  trtnochild
  trtchild
  telfs
  txlfs
  trhernal
  tuspwk
  tuiodp1
  tuiodp2
  tuiodp3
  tthr
  txio1cow
  txio1icd
  txernrt
  tufinlwgt
  tu06fwgt
  tubnchwgt
  trtcc
  trtcoc
  teernhry
  trernwa
  trernhly
  trernupd
  tespuhrs
  trdpftpt
  teret1
  tudis2
  trhhchild
  trnhhchild
  trchildnum
  trohhchild
  trtcctot
  txernhry
  tubwgt
  tu04fwgt
  using "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2003\Basic-Original-Data-Files\atusresp_2003.dat",  names comma ;

label variable  teabsrsn          "Edited: What was the main reason you were absent from your job last week?";
label variable  teern             "Edited: Total weekly overtime earnings (2 implied decimals)";
label variable  teernh1o          "Edited: Excluding overtime pay, tips, and commissions, what is your hourly rate of pay on your main job? (2 implied decimals)";
label variable  teernh2           "Edited: Excluding overtime pay, tips, and commissions, what is your hourly rate of pay on your main job? (2 implied decimals)";
label variable  teernhro          "Edited: How many hours do you usually work per week at this rate?";
label variable  teernhry          "Edited: Hourly/Non-hourly status";
label variable  teernper          "Edited: For your (main) job, what is the easiest way for you to report your total earnings before taxes or other deductions: hourly, weekly, annually, or some other way?";
label variable  teernrt           "Edited: Are you paid at an hourly rate on this job?";
label variable  teernuot          "Edited: Do you usually receive overtime pay, tips, or commisssions at your (main) job?";
label variable  teernwkp          "Edited: How many weeks a year do you get paid?";
label variable  tehrftpt          "Edited:  Do you usually work more than 35 hours per week at your job(s)/family business?";
label variable  tehrusl1          "Edited: How many hours do you usually work per week at your main job?";
label variable  tehrusl2          "Edited:  How many hours do you usually work per week at other job(s)?";
label variable  tehruslt          "Edited:  Total hours you usually work [Sum of TEHRUSL1 (hours at main job) and TEHRUSL2 (hours at other job)]";
label variable  teio1cow          "Edited: Individual class of worker code for main job";
label variable  teio1icd          "Edited:  Industry code for main job";
label variable  teio1ocd          "Edited:  Occupation code for main job";
label variable  telayavl          "Edited:  Could you have started a job in the last seven days if one had been offered?";
label variable  telaylk           "Edited: Even though you expect to be called back to work, have you been looking for work in the last 4 weeks?";
label variable  telfs             "Edited: Labor force status";
label variable  telkavl           "Edited:  Could you have started a job in the last seven days if one had been offered?";
label variable  telkm1            "Edited:  What are all of the things you have done to find work during the last 4 weeks? (first method)";
label variable  temjot            "Edited:  In the last 7 days did you have more than 1 job?";
label variable  teret1            "Edited: Do you currently want a  job, either full or part time?";
label variable  teschenr          "Edited: Are you enrolled in high school, college or university?";
label variable  teschft           "Edited: Are you enrolled as a full or part time student?";
label variable  teschlvl          "Edited:  Would that be high school, college, or university?";
label variable  tespempnot        "Edited: Employment status of Spouse (or unmarried partner)";
label variable  tespuhrs          "Edited: Usual hours of work of Spouse (or unmarried partner)";
label variable  trchildnum        "Number of household children < 18";
label variable  trdpftpt          "Full time or part time employment status of Respondent";
label variable  trdtind1          "Detailed Industry Recode (Main Job)";
label variable  trdtocc1          "Detailed Occupation Recode (Main Job)";
label variable  trernhly          "Hourly Earnings (2 implied decimals)";
label variable  trernupd          "Earnings Update Flag";
label variable  trernwa           "Weekly Earnings (2 implied decimals)";
label variable  trhernal          "Hourly earnings recode allocation flag";
label variable  trhhchild         "Presence of household children < 18";
label variable  trholiday         "Flag to indicate if diary day was a holiday";
label variable  trimind1          "Intermediate Industry Recode (Main Job)";
label variable  trmjind1          "Major Industry Recode (Main Job)";
label variable  trmjocc1          "Major occupational category recode (main job)";
label variable  trmjocgr          "Major Occupation Recode (Main job)";
label variable  trnhhchild        "Presence of own non-household child < 18";
label variable  trohhchild        "Presence of own household children < 18";
label variable  trspftpt          "Full time or part time employment status of spouse (or unmarried partner)";
label variable  trsppres          "Presence of the Respondent's spouse or unmarried partner in the household";
label variable  trtalone          "Total time Respondent spent alone";
label variable  trtcc             "Total time spent providing secondary childcare for household and own non-household children <13";
label variable  trtccc            "Total time respondent spent with customers, clients, and coworkers";
label variable  trtcctot          "Total time spent providing secondary childcare for all children < 13";
label variable  trtchild          "Total time respondent spent with any children";
label variable  trtcoc            "Total time spent providing secondary child care for non-own, non-household children <13";
label variable  trtfamily         "Total time Respondent spent with family members";
label variable  trtfriend         "Total time respondent spent with friends";
label variable  trthhfamily       "Total time Respondent spent with household family members";
label variable  trtnochild        "Total time respondent spent with non-own children";
label variable  trtohhchild       "Total time respondent spent with own household children";
label variable  trtonhhchild      "Total time respondent spent with own non-household children";
label variable  trtsponly         "Total time Respondent spent with spouse only";
label variable  trtspouse         "Total time Respondent spent with spouse (others may be present)";
label variable  trtunmpart        "Total time Respondent spent with unmarried partner (others may be present)";
label variable  trwernal          "Weekly earnings recode allocation flag";
label variable  tryhhchild        "Age of youngest child";
label variable  tthr              "Hourly pay topcode flag";
label variable  ttot              "Overtime amount topcode flag";
label variable  ttwk              "Weekly earnings topcode flag";
label variable  tuabsot           "In the last seven days, did you have a job either full or part time?";
label variable  tubnchwgt         "ATUS benchmark weight";
label variable  tubus             "Does anyone in the household own a business or a farm?";
label variable  tubus1            "In the last seven days did you do any unpaid work in the family business or farm?";
label variable  tubus2ot          "Do you receive payments or profits from the business?";
label variable  tubusl1           "TULINENO of farm or business owner (first owner)";
label variable  tubusl2           "TULINENO of farm or business owner (second owner)";
label variable  tubusl3           "TULINENO of farm or business owner (third owner)";
label variable  tubusl4           "TULINENO of farm or business owner (fourth owner)";
label variable  tucaseid          "ATUS Case ID (14-digit identifier)";
label variable  tucc2             "Time first household child woke up";
label variable  tucc4             "Time last household child went to bed";
label variable  tucc9             "Are the non-own, non-household children you cared for in TUCC8 related to you?";
label variable  tudiarydate       "Date about which respondent was interviewed";
label variable  tudiaryday        "Day of the week about which respondent was interviewed";
label variable  tudis             "Last month you were reported to have a disability. Does your disablity prevent you from doing any kind of work for the next six months?";
label variable  tudis1            "Does your disability prevent you from accepting any kind of work during the next six months?";
label variable  tudis2            "Do you have a disability that prevents you from accepting any kind of work during the next six months?";
label variable  tuern2            "Weekly overtime earnings (2 implied decimals)";
label variable  tuernh1c          "What is your hourly rate of pay on this job, excluding overtime pay, tips, or commissions? (2 implied decimals)";
label variable  tufinlwgt         "ATUS final weight";
label variable  tufwk             "In the last seven days did  you do any work for pay or profit?";
label variable  tuio1mfg          "Type of business or Organization";
label variable  tuiodp1           "Last time you worked for (Employer name). Do you still work for (Employer name) (at your MAIN job)?";
label variable  tuiodp2           "Have the usual activities and duties of your job changed since [month of CPS interview]?";
label variable  tuiodp3           "Last time you were reported as [occupation] and your usual duties were [activties]. Is this an accurate description of your current job?";
label variable  tulay             "During the last seven days were you on layoff from your job?";
label variable  tulay6m           "Have you been given any indication that you will be recalled to work within the next 6 months?";
label variable  tulayavr          "Why could you not have started a job in the last week?";
label variable  tulaydt           "(About layoff job) Has your employer given you a date to return to work?";
label variable  tulineno          "ATUS Person Line Number";
label variable  tulk              "Have you been doing anything to find work during the last 4 weeks?";
label variable  tulkavr           "Why could you not start a job last week?";
label variable  tulkdk1           "You said you have been trying to find work. How did you go about looking? (First method)";
label variable  tulkdk2           "TULKDK1 text : (Second method)";
label variable  tulkdk3           "TULKDK1 text : (Third method)";
label variable  tulkdk4           "TULKDK1 text : (Fourth method)";
label variable  tulkdk5           "TULKDK1 text : (Fifth method)";
label variable  tulkdk6           "TULKDK1 text : (Sixth method)";
label variable  tulkm2            "What are all of the things you have done to find work during the last 4 weeks? (second method)";
label variable  tulkm3            "TULKM2 text : (Third method)";
label variable  tulkm4            "TULKM2 text : (Fourth method)";
label variable  tulkm5            "TULKM2 text : (Fifth method)";
label variable  tulkm6            "TULKM2 text : (Sixth method)";
label variable  tulkps1           "Can you tell me more about what you did to search for work? (First method)";
label variable  tulkps2           "TULKPS1 text: (Second method)";
label variable  tulkps3           "TULKPS1 text: (Third method)";
label variable  tulkps4           "TULKPS1 text: (Fourth method)";
label variable  tulkps5           "TULKPS1 text: (Fifth method)";
label variable  tulkps6           "TULKPS1 text: (Sixth method)";
label variable  tumonth           "Month of ATUS interview";
label variable  turetot           "The last time we spoke to someone in this household you were reported to be retired. Are you still retired?";
label variable  tuspabs           "In the last seven days, did [spouse or unmarried partner] have a job either full or part time?";
label variable  tuspusft          "Does [spouse or unmarried partner] usually work 35 hours or more per week?";
label variable  tuspwk            "In the last seven days, did [spouse or unmarried partner] do any work for pay or profit?";
label variable  tuyear            "Year of ATUS interview";
label variable  txabsrsn          "TEABSRSN: allocation flag";
label variable  txern             "TEERN: allocation flag";
label variable  txernh1o          "TEERNH1O: allocation flag";
label variable  txernh2           "TEERNH2: allocation flag";
label variable  txernhro          "TEERNHRO: allocation flag";
label variable  txernhry          "TEERNHRY: allocation flag";
label variable  txernper          "TEERNPER: allocation flag";
label variable  txernrt           "TEERNRT: allocation flag";
label variable  txernuot          "TEERNUOT: allocation flag";
label variable  txernwkp          "TEERNWKP: allocation flag";
label variable  txhrftpt          "TEHRFTPT: allocation flag";
label variable  txhrusl1          "TEHRUSL1: allocation flag";
label variable  txhrusl2          "TEHRUSL2: allocation flag";
label variable  txhruslt          "TEHRUSLT: allocation flag";
label variable  txio1cow          "TEIO1COW: allocation flag";
label variable  txio1icd          "TEIO1ICD: allocation flag";
label variable  txio1ocd          "TEIO1OCD: allocation flag";
label variable  txlayavl          "TELAYAVL: allocation flag";
label variable  txlaylk           "TELAYLK: allocation flag";
label variable  txlfs             "TELFS: allocation flag";
label variable  txlkavl           "TELKAVL: allocation flag";
label variable  txlkm1            "TELKM1: allocation flag";
label variable  txmjot            "TEMJOT: allocation flag";
label variable  txret1            "TERET1: allocation flag";
label variable  txschenr          "TESCHENR: allocation flag";
label variable  txschft           "TESCHFT: allocation flag";
label variable  txschlvl          "TESCHLVL: allocation flag";
label variable  txspempnot        "TESPEMPNOT: allocation flag";
label variable  txspuhrs          "TESPUHRS: allocation flag";
label variable  txtcc             "TRTCC: allocation flag";
label variable  txtcoc            "TRTCOC: allocation flag";
label variable  tubwgt            "ATUS base weight";
label variable  tu06fwgt          "ATUS final weight based on 2006 weighting methodology";
label variable  tu04fwgt          "ATUS final weight based on 2004 weighting methodology";

capture label define labelteabsrsn
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "On Layoff (Temporary or Indefinite)"
2     "Slack Work/Business Conditions"
3     "Waiting for a New Job to Begin"
4     "Vacation/Personal Days"
5     "Own Illness/Injury/Medical Problems"
6     "Child Care Problems"
7     "Other Family/Personal Obligation"
8     "Maternity/Paternity Leave"
9     "Labor Dispute"
10    "Weather Affected Job"
11    "School/Training"
12    "Civic/Military Duty"
13    "Does not Work in the Business"
14    "Other"
;
capture label define labelteernhry
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Paid hourly"
2     "Not paid hourly"
;
capture label define labelteernper
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Hourly"
2     "Weekly"
3     "Bi-Weekly"
4     "Twice Monthly"
5     "Monthly"
6     "Annually"
7     "Other"
;
capture label define labelteernrt
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labelteernuot
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltehrftpt
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Hours Vary"
;
capture label define labelteio1cow
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Government, Federal"
2     "Government, State"
3     "Government, Local"
4     "Private, For Profit"
5     "Private, Nonprofit"
6     "Self-Employed, Incorporated"
7     "Self-Employed, Unincorporated"
8     "Without Pay"
;
capture label define labeltelayavl
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltelaylk
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltelfs
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Employed - At Work"
2     "Employed - Absent"
3     "Unemployed - On Layoff"
4     "Unemployed - Looking"
5     "Not In Labor Force"
;
capture label define labeltelkavl
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltelkm1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Checked Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
12    "Nothing"
13    "Other Passive"
;
capture label define labeltemjot
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labelteret1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes or Maybe, it depends"
2     "No"
3     "Has a job"
;
capture label define labelteschenr
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labelteschft
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Full Time"
2     "Part Time"
;
capture label define labelteschlvl
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "High School"
2     "College Or University"
;
capture label define labeltespempnot
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Employed"
2     "Not Employed"
;
capture label define labeltrdpftpt
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Full Time"
2     "Part Time"
;
capture label define labeltrdtocc1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Management occupations"
2     "Business and financial operations occupations"
3     "Computer and mathematical science occupations"
4     "Architecture and engineering occupations"
5     "Life, physical, and social science occupations"
6     "Community and social service occupations"
7     "Legal occupations"
8     "Education, training, and library occupations"
9     "Arts, design, entertainment, sports, and media occupations"
10    "Healthcare practitioner and technical occupations"
11    "Healthcare support occupations"
12    "Protective service occupations"
13    "Food preparation and serving related occupations"
14    "Building and grounds cleaning and maintenance occupations"
15    "Personal care and service occupations"
16    "Sales and related occupations"
17    "Office and administrative support occupations"
18    "Farming, fishing, and forestry occupations"
19    "Construction and extraction occupations"
20    "Installation, maintenance, and repair occupations"
21    "Production occupations"
22    "Transportation and material moving occupations"
;
capture label define labeltrernupd
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Earnings Carried Forward From CPS"
1     "Earnings Updated In Time Use"
;
capture label define labeltrhernal
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "TRERNHLY does not contain allocated information"
1     "TRERNHLY contains allocated information"
;
capture label define labeltrhhchild
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltrholiday
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Diary Day was not a Holiday"
1     "Diary Day was a Holiday"
;
capture label define labeltrimind1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Agriculture, Forestry, Fishing, and Hunting"
2     "Mining"
3     "Construction"
4     "Manufacturing - Durable Goods"
5     "Manufacturing - Non-Durable Goods"
6     "Wholesale Trade"
7     "Retail Trade"
8     "Transportation and Warehousing"
9     "Utilities"
10    "Information"
11    "Finance and Insurance"
12    "Real Estate and Rental and Leasing"
13    "Professional and Technical Services"
14    "Management, Administative, and Waste Management Services"
15    "Educational Services"
16    "Health Care and Social Services"
17    "Arts, Entertainment, and Recreation"
18    "Accommodation and Food Services"
19    "Private Households"
20    "Other Services, Except Private Households"
21    "Public Administration"
;
capture label define labeltrmjind1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Agriculture, forestry, fishing, and hunting"
2     "Mining"
3     "Construction"
4     "Manufacturing"
5     "Wholesale and retail trade"
6     "Transportation and utilities"
7     "Information"
8     "Financial activities"
9     "Professional and business services"
10    "Educational and health services"
11    "Leisure and hospitality"
12    "Other services"
13    "Public administration"
;
capture label define labeltrmjocc1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Management, business, and financial occupations"
2     "Professional and related occupations"
3     "Service occupations"
4     "Sales and related occupations"
5     "Office and administrative support occupations"
6     "Farming, fishing, and forestry occupations"
7     "Construction and extraction occupations"
8     "Installation, maintenance, and repair occupations"
9     "Production occupations"
10    "Transportation and material moving occupations"
;
capture label define labeltrmjocgr
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Management, professional, and related occupations"
2     "Service occupations"
3     "Sales and office occupations"
4     "Farming, fishing, and forestry occupations"
5     "Construction and maintenance occupations"
6     "Production, transportation, and material moving occupations"
;
capture label define labeltrnhhchild
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltrspftpt
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Full Time"
2     "Part Time"
3     "Hours Vary"
;
capture label define labeltrsppres
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Spouse Present"
2     "Unmarried Partner Present"
3     "No Spouse or Unmarried Partner Present"
;
capture label define labeltrwernal
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "TRERNWA does not contain allocated information"
1     "TRERNWA contains allocated information"
;
capture label define labeltthr
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Not Topcoded"
1     "Topcoded"
;
capture label define labelttot
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Not Topcoded"
1     "Topcoded"
;
capture label define labelttwk
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Not Topcoded"
1     "Topcoded"
;
capture label define labeltuabsot
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Retired"
4     "Disabled"
5     "Unable To Work"
;
capture label define labeltubus
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltubus1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltubus2ot
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltucc9
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Some Are, Some Are Not"
;
capture label define labeltudiaryday
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Sunday"
2     "Monday"
3     "Tuesday"
4     "Wednesday"
5     "Thursday"
6     "Friday"
7     "Saturday"
;
capture label define labeltudis
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Did Not Have Disability Last Month"
;
capture label define labeltudis1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltudis2
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltufwk
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Retired"
4     "Disabled"
5     "Unable To Work"
;
capture label define labeltuio1mfg
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Manufacturing"
2     "Retail Trade"
3     "Wholesale Trade"
4     "Something Else"
;
capture label define labeltuiodp1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltuiodp2
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltuiodp3
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltulay
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Retired"
4     "Disabled"
5     "Unable to Work"
;
capture label define labeltulay6m
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltulayavr
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Own Temporary Illness"
2     "Going To School"
3     "Other"
;
capture label define labeltulaydt
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
;
capture label define labeltulk
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Retired"
4     "Disabled"
5     "Unable To Work"
;
capture label define labeltulkavr
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Waiting For New Job To Begin"
2     "Own Temporary Illness"
3     "Going To School"
4     "Other"
;
capture label define labeltulkdk1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Checked Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
12    "Nothing"
13    "Other Passive"
;
capture label define labeltulkdk2
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Checked Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkdk3
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkdk4
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkdk5
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkdk6
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkm2
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Checked Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkm3
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkm4
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkm5
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkm6
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkps1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Checked Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
12    "Nothing"
13    "Other Passive"
97    "No More Job Search Activities"
;
capture label define labeltulkps2
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Checked Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkps3
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkps4
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkps5
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labeltulkps6
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Contacted Employer Directly/Interview"
2     "Contacted Public Employment Agency"
3     "Contacted Private Employment Agency"
4     "Contacted Friends or Relatives"
5     "Contacted School/University Employment Center"
6     "Sent Out Resumes/Filled Out Applications"
7     "Check Union/Professional Registers"
8     "Placed or Answered Ads"
9     "Other Active"
10    "Looked at Ads"
11    "Attended Job Training Programs/Courses"
13    "Other Passive"
97    "No Additional Job Search Activities"
;
capture label define labelturetot
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Was Not Retired Last Month/Last Time"
;
capture label define labeltuspabs
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Retired"
4     "Disabled"
5     "Unable To Work"
;
capture label define labeltuspusft
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Hours Vary"
4     "No Longer Has A Job"
;
capture label define labeltuspwk
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
1     "Yes"
2     "No"
3     "Retired"
4     "Disabled"
5     "Unable To Work"
;
capture label define labeltxabsrsn
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
capture label define labeltxern
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
capture label define labeltxernh1o
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
capture label define labeltxernh2
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
capture label define labeltxernhro
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
capture label define labeltxernhry
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
capture label define labeltxernper
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
capture label define labeltxernrt
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
capture label define labeltxernuot
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
capture label define labeltxernwkp
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
capture label define labeltxhrftpt
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
capture label define labeltxhrusl1
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
capture label define labeltxhrusl2
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
capture label define labeltxhruslt
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
capture label define labeltxio1cow
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
capture label define labeltxio1icd
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
capture label define labeltxio1ocd
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
capture label define labeltxlayavl
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
capture label define labeltxlaylk
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
capture label define labeltxlfs
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
capture label define labeltxlkavl
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
capture label define labeltxlkm1
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
capture label define labeltxmjot
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
capture label define labeltxret1
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Value - No Change"
1     "Blank - No Change"
2     "Don`t Know - No Change"
3     "Refused - No Change"
10    "Value To Value 0"
11    "Blank To Value 0"
12    "Don`t Know To Value"
13    "Refused To Value 0"
20    "Value To Longitudinal Value"
21    "Blank To Longitudinal Value"
22    "Don`t Know To Longitudinal Value"
23    "Refused To Longitudinal Value"
30    "Value To Allocated Value Long"
31    "Blank To Allocated Value Long"
32    "Don`t  Know To Allocated Value Long"
33    "Refused To Allocated Value Long"
40    "Value To Allocated Value"
41    "Blank To Allocated Value"
42    "Don`t Know To Allocated Value"
43    "Refused To Allocated Value"
50    "Value To Blank"
52    "Don`t Know To Blank"
53    "Refused To Blank"
;
capture label define labeltxschenr
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
capture label define labeltxschft
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
capture label define labeltxschlvl
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
capture label define labeltxspempnot
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Value - No Change"
1     "Blank - No Change"
2     "Don`t Know - No Change"
3     "Refused - No Change"
10    "Value To Value 0"
11    "Blank To Value 0"
12    "Don`t Know To Value"
13    "Refused To Value 0"
20    "Value To Longitudinal Value"
21    "Blank To Longitudinal Value"
22    "Don`t Know To Longitudinal Value"
23    "Refused To Longitudinal Value"
30    "Value To Allocated Value Long"
31    "Blank To Allocated Value Long"
32    "Don`t Know To Allocated Value Long"
33    "Refused To Allocated Value Long"
40    "Value To Allocated Value"
41    "Blank To Allocated Value"
42    "Don`t Know To Allocated Value"
43    "Refused To Allocated Value"
50    "Value To Blank"
52    "Don`t Know To Blank"
53    "Refused To Blank"
;
capture label define labeltxspuhrs
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Value - No Change"
1     "Blank - No Change"
2     "Don`t Know - No Change"
3     "Refused - No Change"
10    "Value To Value 0"
11    "Blank To Value 0"
12    "Don`t Know To Value"
13    "Refused To Value 0"
20    "Value To Longitudinal Value"
21    "Blank To Longitudinal Value"
22    "Don`t Know To Longitudinal Value"
23    "Refused To Longitudinal Value"
30    "Value To Allocated Value Long"
31    "Blank To Allocated Value Long"
32    "Don`t  Know To Allocated Value Long"
33    "Refused To Allocated Value Long"
40    "Value To Allocated Value"
41    "Blank To Allocated Value"
42    "Don`t Know To Allocated Value"
43    "Refused To Allocated Value"
50    "Value To Blank"
52    "Don`t Know To Blank"
53    "Refused To Blank"
;
capture label define labeltxtcc
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Value - No Change"
1     "Contains Allocated Data"
;
capture label define labeltxtcoc
-1    "Blank"
-2    "Don't Know"
-3    "Refused"
0     "Value - No Change"
1     "Contains Allocated Data"
;

label values    teabsrsn          labelteabsrsn;
label values    teernhry          labelteernhry;
label values    teernper          labelteernper;
label values    teernrt           labelteernrt;
label values    teernuot          labelteernuot;
label values    tehrftpt          labeltehrftpt;
label values    teio1cow          labelteio1cow;
label values    telayavl          labeltelayavl;
label values    telaylk           labeltelaylk;
label values    telfs             labeltelfs;
label values    telkavl           labeltelkavl;
label values    telkm1            labeltelkm1;
label values    temjot            labeltemjot;
label values    teret1            labelteret1;
label values    teschenr          labelteschenr;
label values    teschft           labelteschft;
label values    teschlvl          labelteschlvl;
label values    tespempnot        labeltespempnot;
label values    trdpftpt          labeltrdpftpt;
label values    trdtocc1          labeltrdtocc1;
label values    trernupd          labeltrernupd;
label values    trhernal          labeltrhernal;
label values    trhhchild         labeltrhhchild;
label values    trholiday         labeltrholiday;
label values    trimind1          labeltrimind1;
label values    trmjind1          labeltrmjind1;
label values    trmjocc1          labeltrmjocc1;
label values    trmjocgr          labeltrmjocgr;
label values    trnhhchild        labeltrnhhchild;
label values    trspftpt          labeltrspftpt;
label values    trsppres          labeltrsppres;
label values    trwernal          labeltrwernal;
label values    tthr              labeltthr;
label values    ttot              labelttot;
label values    ttwk              labelttwk;
label values    tuabsot           labeltuabsot;
label values    tubus             labeltubus;
label values    tubus1            labeltubus1;
label values    tubus2ot          labeltubus2ot;
label values    tucc9             labeltucc9;
label values    tudiaryday        labeltudiaryday;
label values    tudis             labeltudis;
label values    tudis1            labeltudis1;
label values    tudis2            labeltudis2;
label values    tufwk             labeltufwk;
label values    tuio1mfg          labeltuio1mfg;
label values    tuiodp1           labeltuiodp1;
label values    tuiodp2           labeltuiodp2;
label values    tuiodp3           labeltuiodp3;
label values    tulay             labeltulay;
label values    tulay6m           labeltulay6m;
label values    tulayavr          labeltulayavr;
label values    tulaydt           labeltulaydt;
label values    tulk              labeltulk;
label values    tulkavr           labeltulkavr;
label values    tulkdk1           labeltulkdk1;
label values    tulkdk2           labeltulkdk2;
label values    tulkdk3           labeltulkdk3;
label values    tulkdk4           labeltulkdk4;
label values    tulkdk5           labeltulkdk5;
label values    tulkdk6           labeltulkdk6;
label values    tulkm2            labeltulkm2;
label values    tulkm3            labeltulkm3;
label values    tulkm4            labeltulkm4;
label values    tulkm5            labeltulkm5;
label values    tulkm6            labeltulkm6;
label values    tulkps1           labeltulkps1;
label values    tulkps2           labeltulkps2;
label values    tulkps3           labeltulkps3;
label values    tulkps4           labeltulkps4;
label values    tulkps5           labeltulkps5;
label values    tulkps6           labeltulkps6;
label values    turetot           labelturetot;
label values    tuspabs           labeltuspabs;
label values    tuspusft          labeltuspusft;
label values    tuspwk            labeltuspwk;
label values    txabsrsn          labeltxabsrsn;
label values    txern             labeltxern;
label values    txernh1o          labeltxernh1o;
label values    txernh2           labeltxernh2;
label values    txernhro          labeltxernhro;
label values    txernhry          labeltxernhry;
label values    txernper          labeltxernper;
label values    txernrt           labeltxernrt;
label values    txernuot          labeltxernuot;
label values    txernwkp          labeltxernwkp;
label values    txhrftpt          labeltxhrftpt;
label values    txhrusl1          labeltxhrusl1;
label values    txhrusl2          labeltxhrusl2;
label values    txhruslt          labeltxhruslt;
label values    txio1cow          labeltxio1cow;
label values    txio1icd          labeltxio1icd;
label values    txio1ocd          labeltxio1ocd;
label values    txlayavl          labeltxlayavl;
label values    txlaylk           labeltxlaylk;
label values    txlfs             labeltxlfs;
label values    txlkavl           labeltxlkavl;
label values    txlkm1            labeltxlkm1;
label values    txmjot            labeltxmjot;
label values    txret1            labeltxret1;
label values    txschenr          labeltxschenr;
label values    txschft           labeltxschft;
label values    txschlvl          labeltxschlvl;
label values    txspempnot        labeltxspempnot;
label values    txspuhrs          labeltxspuhrs;
label values    txtcc             labeltxtcc;
label values    txtcoc            labeltxtcoc;


describe, short;

save "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2003\Basic-Transformed-Data-Files\atusresp_2003.dta";
