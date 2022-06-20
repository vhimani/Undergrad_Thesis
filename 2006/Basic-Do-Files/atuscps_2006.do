#delimit ;
clear ; 

* Edit the insheet statement to reference the data file on your computer.;

insheet  
tucaseid
tulineno
gepseucl
gepseust
gereg
gestcen
gestfips
gtmetsta
hehousut
hephoneo
hetelavl
hetelhhd
hetenure
hrhhid
hrhhid2
hrhtype
hrintsta
hrlonglk
hrmis
hrmonth
hrnumhou
hryear4
hubus
hubusl1
hubusl2
hubusl3
hubusl4
hufaminc
hufinal
huinttyp
huprscnt
hurespli
hurhhscrn
huspnish
hutypb
hutypc
hutypea
hxhousut
hxphoneo
hxtelavl
hxtelhhd
hxtenure
occurnum
peabspdo
peabsrsn
peafever
peafnow
peafwhn1
peafwhn2
peafwhn3
peafwhn4
pecyc
pedipged
pedw4wk
pedwavl
pedwavr
pedwlko
pedwlkwk
pedwrsn
pedwwk
pedwwnto
peeduca
peern
peerncov
peernh1o
peernh2
peernhro
peernhry
peernlab
peernper
peernrt
peernuot
peernwkp
pefntvty
pegr6cor
pegrprof
pehgcomp
pehract1
pehract2
pehractt
pehravl
pehrftpt
pehrrsn1
pehrrsn2
pehrrsn3
pehrusl1
pehrusl2
pehruslt
pehrwant
pehspnon
peio1cow
peio1icd
peio1ocd
peio2cow
peio2icd
peio2ocd
pejhrsn
pejhwant
pejhwko
pelayavl
pelaydur
pelayfto
pelaylk
pelkavl
pelkdur
pelkfto
pelkll1o
pelkll2o
pelklwo
pelkm1
pemaritl
pemjnum
pemjot
pemlr
pemntvty
pems123
penatvty
penlfact
penlfjh
penlfret
peparent
peret1
perrp
peschenr
peschft
peschlvl
pesex
pespouse
prabsrea
pragna
prcitflg
prcitshp
prcivlf
prcow1
prcow2
prcowpg
prdisc
prdtcow1
prdtcow2
prdthsp
prdtind1
prdtind2
prdtocc1
prdtocc2
premp
premphrs
prempnot
prerelg
prernhly
prernwa
prexplf
prfamnum
prfamrel
prfamtyp
prftlf
prhernal
prhrusl
primind1
primind2
prinuyer
prioelg
prjobsea
prmarsta
prmjind1
prmjind2
prmjocc1
prmjocc2
prmjocgr
prnagpws
prnagws
prnlfsch
prnmchld
prpertyp
prpthrs
prptrea
prsjmj
prtage
prtfage
prunedur
pruntype
prwernal
prwksch
prwkstat
prwntjob
ptdtrace
pthr
ptot
ptwk
puabsot
pubus1
pubus2ot
pubusck1
pubusck2
pubusck3
pubusck4
puchinhh
pudis
pudis1
pudis2
pudwck1
pudwck2
pudwck3
pudwck4
pudwck5
puern2
puernh1c
puhrck1
puhrck12
puhrck2
puhrck3
puhrck4
puhrck5
puhrck6
puhrck7
puhroff1
puhroff2
puhrot1
puhrot2
puio1mfg
puio2mfg
puiock1
puiock2
puiock3
puiodp1
puiodp2
puiodp3
pujhck1
pujhck2
pujhck3
pujhck4
pujhck5
pujhdp1o
pulay
pulay6m
pulayavr
pulayck1
pulayck2
pulayck3
pulaydt
pulineno
pulk
pulkavr
pulkdk1
pulkdk2
pulkdk3
pulkdk4
pulkdk5
pulkdk6
pulkm2
pulkm3
pulkm4
pulkm5
pulkm6
pulkps1
pulkps2
pulkps3
pulkps4
pulkps5
pulkps6
punlfck1
punlfck2
pupelig
puretot
purkat1
purkat2
puslfprx
puwk
pxabspdo
pxabsrsn
pxafever
pxafnow
pxafwhn1
pxage
pxcyc
pxdipged
pxdw4wk
pxdwavl
pxdwavr
pxdwlko
pxdwlkwk
pxdwrsn
pxdwwk
pxdwwnto
pxeduca
pxern
pxerncov
pxernh1o
pxernh2
pxernhro
pxernhry
pxernlab
pxernper
pxernrt
pxernuot
pxernwkp
pxfntvty
pxgr6cor
pxgrprof
pxhgcomp
pxhract1
pxhract2
pxhractt
pxhravl
pxhrftpt
pxhrrsn1
pxhrrsn2
pxhrrsn3
pxhrusl1
pxhrusl2
pxhruslt
pxhrwant
pxhspnon
pxinusyr
pxio1cow
pxio1icd
pxio1ocd
pxio2cow
pxio2icd
pxio2ocd
pxjhrsn
pxjhwant
pxjhwko
pxlayavl
pxlaydur
pxlayfto
pxlaylk
pxlkavl
pxlkdur
pxlkfto
pxlkll1o
pxlkll2o
pxlklwo
pxlkm1
pxmaritl
pxmjnum
pxmjot
pxmlr
pxmntvty
pxms123
pxnatvty
pxnlfact
pxnlfjh
pxnlfret
pxparent
pxrace1
pxret1
pxrrp
pxschenr
pxschft
pxschlvl
pxsex
pxspouse
qstnum
tratusr
  
using "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\2006\Basic Original Data Files\atuscps_2006.dat",  names comma ;

label variable gepseucl "Scrambled pseudo primary sampling unit (PSU) cluster";
label variable gepseust "Scrambled pseudo primary sampling unit (PSU) collapsed stratum";
label variable gereg "Region";
label variable gestcen "Census state code";
label variable gestfips "Federal Processing Information Standards (FIPS) state code";
label variable gtmetsta "Metropolitan status (2000 definitions)";
label variable hehousut "Edited: type of housing unit";
label variable hephoneo "Edited: is a telephone interview acceptable?";
label variable hetelavl "Edited: is there a telephone elsewhere on which people in this household can be contacted?";
label variable hetelhhd "Edited: is there a telephone in this house/apartment?";
label variable hetenure "Edited: are your living quarters owned, rented for cash, or occupied without payment of cash rent?";
label variable hrhhid "Household ID (15-digit identifier)";
label variable hrhhid2 "Household ID part 2 (5-digit identifier)";
label variable hrhtype "Household type";
label variable hrintsta "Interview status";
label variable hrlonglk "Longitudinal link indicator";
label variable hrmis "Month in sample";
label variable hrmonth "Month of interview";
label variable hrnumhou "Total number of persons in the household (household members)";
label variable hryear4 "Year of interview";
label variable hubus "Does anyone in this household have a business or a farm?";
label variable hubusl1 "PULINENO of farm or business owner (first owner)";
label variable hubusl2 "PULINENO of farm or business owner (second owner)";
label variable hubusl3 "PULINENO of farm or business owner (third owner)";
label variable hubusl4 "PULINENO of farm or business owner (fourth owner)";
label variable hufaminc "Family income";
label variable hufinal "Final outcome code";
label variable huinttyp "Type of interview";
label variable huprscnt "Number of actual and attempted personal contacts";
label variable hurespli "PULINENO of the current respondent";
label variable hurhhscrn "Is there anyone living or staying here who had to evacuate, even temporarily, where he or she was living in August because of Hu";
label variable huspnish "Is Spanish the only language spoken by all members of this household who are 15 years and older?";
label variable hutypb "Type B non-interview categories";
label variable hutypc "Type C non-interview categories";
label variable hutypea "Type A non-interview categories";
label variable hxhousut "HEHOUSUT: allocation flag";
label variable hxphoneo "HEPHONEO: allocation flag";
label variable hxtelavl "HETELAVL: allocation flag";
label variable hxtelhhd "HETELHHD: allocation flag";
label variable hxtenure "HETENURE: allocation flag";
label variable occurnum "Unique person identifier";
label variable peabspdo "Edited: are you being paid by your employer for any of the time off last week?";
label variable peabsrsn "Edited: what was the main reason you were absent from work last week?";
label variable peafever "Edited: did you ever serve on active duty in the U.S. Armed Forces?";
label variable peafnow "Edited: are you now in the Armed Forces?";
label variable peafwhn1 "Edited: when did you serve in the Armed Forces? (first period)";
label variable peafwhn2 "Edited: when did you serve in the Armed Forces? (second period)";
label variable peafwhn3 "Edited: when did you serve in the Armed Forces? (third period)";
label variable peafwhn4 "Edited: when did you serve in the Armed Forces? (fourth period)";
label variable pecyc "Edited: how many years of college credit have you completed?";
label variable pedipged "Edited: how did you get your high school diploma?";
label variable pedw4wk "Edited: did you do any of this work during the last 4 weeks?";
label variable pedwavl "Edited: last week, could you have started a job if one had been offered?";
label variable pedwavr "Edited: why could you not have started a job if one had been offered last week?";
label variable pedwlko "Edited: did you look for work any time in the last 12 months?";
label variable pedwlkwk "Edited: and since you left that job or business have you looked for work?";
label variable pedwrsn "Edited: what is the main reason you were not looking for work during the last 4 weeks?";
label variable pedwwk "Edited: did you actually work at a job or business during the last 12 months?";
label variable pedwwnto "Edited: do you currently want a job, either full or part time?";
label variable peeduca "Edited: what is the highest level of school you have completed or the highest degree you have received?";
label variable peern "Edited: total weekly overtime earnings (2 implied decimals)";
label variable peerncov "Edited: on this job, are you covered by a union or employee association contract?";
label variable peernh1o "Edited: excluding overtime pay, tips, and commissions, what is your hourly rate of pay on your main job? (2 implied decimals)";
label variable peernh2 "Edited: excluding overtime pay, tips, and commissions, what is your hourly rate of pay on your main job? (2 implied decimals)";
label variable peernhro "Edited: how many hours do you usually work per week at this rate?";
label variable peernhry "Edited: hourly/non-hourly status";
label variable peernlab "Edited: on this job, are you a member of a labor union or of an employee association similar to a union?";
label variable peernper "Edited: for your main job, what is the easiest way for you to report your total earnings before taxes or other deductions: hourl";
label variable peernrt "Edited: even though you told me it is easier to report your earnings another way, are you paid at an hourly rate on your main jo";
label variable peernuot "Edited: do you usually receive overtime pay, tips, or commissions at your job?";
label variable peernwkp "Edited: how many weeks a year do you get paid?";
label variable pefntvty "Edited: in what country was your father born?";
label variable pegr6cor "Edited: did you complete six or more graduate or professional school courses?";
label variable pegrprof "Edited: since completing your bachelor's degree, have you taken any graduate or professional school courses for credit?";
label variable pehgcomp "Edited: what was the highest grade of regular school you completed before receiving your GED?";
label variable pehract1 "Edited: last week, how many hours did you actually work at your main job?";
label variable pehract2 "Edited: last week, how many hours did you actually work at your other job(s)?";
label variable pehractt "Edited: total hours actually worked last week (sum of PEHRACT1 and PEHRACT2)";
label variable pehravl "Edited: last week, could you have worked full time if the hours had been available?";
label variable pehrftpt "Edited: do you usually work more than 35 hours per week at your job(s)/family business?";
label variable pehrrsn1 "Edited: what is your main reason for working part time?";
label variable pehrrsn2 "Edited: what is the main reason you do not want to work full time?";
label variable pehrrsn3 "Edited: what is the main reason you worked less than 35 hours last week?";
label variable pehrusl1 "Edited: how many hours per week do you usually work at your main job?";
label variable pehrusl2 "Edited: how many hours per week do you usually work at your other job(s)?";
label variable pehruslt "Edited: total hours usually worked per week (sum of PEHRUSL1 and PEHRUSL2)";
label variable pehrwant "Edited: do you want to work a full time work week of 35 hours or more per week?";
label variable pehspnon "Edited: are you Spanish, Hispanic, or Latino?";
label variable peio1cow "Edited: individual class of worker (main job)";
label variable peio1icd "Edited: industry code (main job)";
label variable peio1ocd "Edited: occupation code (main job)";
label variable peio2cow "Edited: individual class of worker (second job)";
label variable peio2icd "Edited: industry code (second job)";
label variable peio2ocd "Edited: occupation code (second job)";
label variable pejhrsn "Edited: what is the main reason you left your last job?";
label variable pejhwant "Edited: do you intend to look for work during the next 12 months?";
label variable pejhwko "Edited: have you worked at a job or business at any time in the last 12 months?";
label variable pelayavl "Edited: could you have returned to work during the last seven days if you had been recalled?";
label variable pelaydur "Edited: duration of layoff (number of weeks)";
label variable pelayfto "Edited: is the job from which you are on layoff a full time job of 35 hours or more per week?";
label variable pelaylk "Edited: even though you are to be called back to work, have you been looking for work during the last 4 weeks?";
label variable pelkavl "Edited: could you have started a job in the last seven days if one had been offered?";
label variable pelkdur "Edited: duration of job seeking (number of weeks)";
label variable pelkfto "Edited: are you seeking a full time or part time job?";
label variable pelkll1o "Edited: before you started looking for work, what were you doing: working, going to school, or something else?";
label variable pelkll2o "Edited: did you lose or quit that job, or was it a temporary job that ended?";
label variable pelklwo "Edited: when did you last work?";
label variable pelkm1 "Edited: what are all of the things you have done to find work during the last 4 weeks? (first method)";
label variable pemaritl "Edited: are you now married, widowed, divorced, separated, or never married?";
label variable pemjnum "Edited: altogether, how many jobs did you have?";
label variable pemjot "Edited: in the last seven days, did you have more than one job?";
label variable pemlr "Edited: monthly labor force recode";
label variable pemntvty "Edited: in what country was your mother born?";
label variable pems123 "Edited: was your master's degree program a one-year, two-year, or three-year program?";
label variable penatvty "Edited: in what country were you born?";
label variable penlfact "Edited: what best describes your situation at this time? For example, are you disabled, ill, in school, taking care of house or";
label variable penlfjh "Edited: when did you last work at a job or business?";
label variable penlfret "Edited: are you retired from a job or business?";
label variable peparent "Edited: PULINENO of parent";
label variable peret1 "Edited: do you currently want a job, either full or part time?";
label variable perrp "Edited: how is this person related to you?";
label variable peschenr "Edited: last week, were you enrolled in a high school, college, or university?";
label variable peschft "Edited: are you enrolled in school as a full-time or part-time student?";
label variable peschlvl "Edited: would that be high school, college, or university?";
label variable pesex "Edited: sex";
label variable pespouse "Edited: PULINENO of spouse";
label variable prabsrea "Reason not at work by pay status";
label variable pragna "Agricultural/non-agricultural industry";
label variable prcitflg "PRCITSHP: allocation flag";
label variable prcitshp "Citizenship status";
label variable prcivlf "Civilian labor force";
label variable prcow1 "Class of worker recode (main job)";
label variable prcow2 "Class of worker recode (second job)";
label variable prcowpg "Class of worker - private or government";
label variable prdisc "Discouraged worker recode";
label variable prdtcow1 "Detailed class of worker recode (main job)";
label variable prdtcow2 "Detailed class of worker recode (second job)";
label variable prdthsp "Detailed Hispanic origin group";
label variable prdtind1 "Detailed industry recode (main job)";
label variable prdtind2 "Detailed industry recode (second job)";
label variable prdtocc1 "Detailed occupation recode (main job)";
label variable prdtocc2 "Detailed occupation recode (second job)";
label variable premp "Employed persons recode";
label variable premphrs "Reason not at work or hours at work";
label variable prempnot "Employed, unemployed, or not in the labor force";
label variable prerelg "Earnings edit eligibility flag";
label variable prernhly "Hourly earnings (2 implied decimals)";
label variable prernwa "Weekly earnings (2 implied decimals)";
label variable prexplf "Experienced labor force employment";
label variable prfamnum "Family number recode";
label variable prfamrel "Family relationship code";
label variable prfamtyp "Family type recode";
label variable prftlf "Full time labor force";
label variable prhernal "PRERNHLY: allocation flag";
label variable prhrusl "Usual hours worked weekly";
label variable primind1 "Intermediate industry recode (main job)";
label variable primind2 "Intermediate industry recode (second job)";
label variable prinuyer "Immigrant's year of entry into the U.S.";
label variable prioelg "Industry and occupation edit eligibility flag";
label variable prjobsea "Job search recode";
label variable prmarsta "Marital status based on Armed Forces participation";
label variable prmjind1 "Major industry recode (main job)";
label variable prmjind2 "Major industry recode (second job)";
label variable prmjocc1 "Major occupation recode (main job)";
label variable prmjocc2 "Major occupation recode (second job)";
label variable prmjocgr "Major occupation categories (main job)";
label variable prnagpws "Non-agricultural private wage and salary workers recode";
label variable prnagws "Non-agricultural wage and salary workers recode";
label variable prnlfsch "Not in labor force activity - in school or not in school";
label variable prnmchld "Number of own children < 18 years of age";
label variable prpertyp "Type of person recode";
label variable prpthrs "At work 1-34 hours by hours at work";
label variable prptrea "Detailed reason for part time work";
label variable prsjmj "Single/multiple jobholder";
label variable prtage "Age";
label variable prtfage "Topcode for age (PRTAGE)";
label variable prunedur "Duration of unemployment (number of weeks)";
label variable pruntype "Reason for unemployment";
label variable prwernal "PRERNWA: allocation flag";
label variable prwksch "Labor force by time worked or lost";
label variable prwkstat "Full time or part time work status";
label variable prwntjob "Not in labor force recode - want a job or other not in labor force";
label variable ptdtrace "Race (topcoded)";
label variable pthr "Hourly pay topcode flag";
label variable ptot "Weekly overtime amount topcode flag";
label variable ptwk "Weekly earnings topcode flag";
label variable puabsot "In the last seven days, did you have a job either full or part time?";
label variable pubus1 "Last week, did you do any unpaid work in the family business or farm?";
label variable pubus2ot "Do you receive any payments or profits from the business?";
label variable pubusck1 "Business check item 1: filter for questions on unpaid work";
label variable pubusck2 "Business check item 2: skips owners of family business who did not work last week";
label variable pubusck3 "Business check item 3: filter for disabled";
label variable pubusck4 "Business check item 4: filter for retired";
label variable puchinhh "Change in household composition";
label variable pudis "Last time we spoke to someone in this household, you were reported to have a disability. Does your disability continue to preven";
label variable pudis1 "Does your disability prevent you from accepting any kind of work during the next six months?";
label variable pudis2 "Do you have a disability that prevents you from accepting any kind of work during the next six months?";
label variable pudwck1 "Discouraged worker check item 1: filter for discouraged worker";
label variable pudwck2 "Discouraged worker check item 2: filter for disabled";
label variable pudwck3 "Discouraged worker check item 3: filter for retired";
label variable pudwck4 "Discouraged worker check item 4: filter for passive job seekers";
label variable pudwck5 "Discouraged worker check item 5: filter for passive job seekers";
label variable puern2 "Weekly overtime earnings (2 implied decimals)";
label variable puernh1c "What is your hourly rate of pay on this job, excluding overtime pay, tips, or commissions? (2 implied decimals)";
label variable puhrck1 "Hours respondent check item 1: labor force - remove groups from actual hours series";
label variable puhrck12 "Hours respondent check item 12: filter for < 15 hours to go to looking series";
label variable puhrck2 "Hours respondent check item 2: labor force - skips persons responding yes to PUHRFTPT out of PT series";
label variable puhrck3 "Hours respondent check item 3: labor force - filter for persons going through industry and occupation series";
label variable puhrck4 "Hours respondent check item 4: labor force - skips persons";
label variable puhrck5 "Hours respondent check item 5: labor force - filter for multiple jobholders for second job hours";
label variable puhrck6 "Hours respondent check item 6: labor force - filter for actual job hours, jobs 1 and 2";
label variable puhrck7 "Hours respondent check item 7: labor force - filter for hours worked paths";
label variable puhroff1 "Last week, did you lose or take off any hours from your job for any reason such as illness, slack work, vacation, or holiday?";
label variable puhroff2 "How many hours did you take off?";
label variable puhrot1 "Last week, did you work any overtime or extra hours? (main job)";
label variable puhrot2 "How many additional hours did you work?";
label variable puio1mfg "Is this business or organization mainly manufacturing, retail trade, wholesale trade, or something else? (main job)";
label variable puio2mfg "Is this business or organization mainly manufacturing, retail trade, wholesale trade, or something else? (second job)";
label variable puiock1 "Industry and occupation check item 1: filter for dependent industry and occupation";
label variable puiock2 "Industry and occupation check item 2: filter for previous month's industry and occupation cases";
label variable puiock3 "Industry and occupation check item 3: filter for previous month's unknown occupation";
label variable puiodp1 "Last month you were reported to work for (employer's name). Do you still work for (employer's name)?";
label variable puiodp2 "Have the usual activities and duties of your job changed since last month?";
label variable puiodp3 "Last time you were reported as (occupation) and your usual duties were (activities). Is this an accurate description of your cur";
label variable pujhck1 "Job history check item 1: filter for outgoing rotations";
label variable pujhck2 "Job history check item 2: filter for persons going through industry and occupation series";
label variable pujhck3 "Job history check item 3: filter for unemployed job history";
label variable pujhck4 "Job history check item 4: filter for dependent not in the labor force";
label variable pujhck5 "Job history check item 5: filter/carryover for dependent not in the labor force";
label variable pujhdp1o "Did you do any of this work in the last 4 weeks?";
label variable pulay "During the last seven days, were you on layoff from a job?";
label variable pulay6m "Have you been given any indication that you will be recalled to work within the next 6 months?";
label variable pulayavr "Why could you not have started a job in the last week?";
label variable pulayck1 "Layoff check item 1: filter for previous month layoff status";
label variable pulayck2 "Layoff check item 2: filter for dependent layoff";
label variable pulayck3 "Layoff check item 3: dependent industry and occupation filter/carryover";
label variable pulaydt "Has your employer given you a date to return to work? (to layoff job)";
label variable pulineno "Person line number";
label variable pulk "Have you been doing anything to find work during the last 4 weeks?";
label variable pulkavr "Why could you not have started a job last week?";
label variable pulkdk1 "You said you have been trying to find work. How did you go about looking? (first method)";
label variable pulkdk2 "PULKDK1 text: (second method)";
label variable pulkdk3 "PULKDK1 text: (third method)";
label variable pulkdk4 "PULKDK1 text: (fourth method)";
label variable pulkdk5 "PULKDK1 text: (fifth method)";
label variable pulkdk6 "PULKDK1 text: (sixth method)";
label variable pulkm2 "What are all of the things you have been doing to find work during the last 4 weeks? (second method)";
label variable pulkm3 "PULKM2 text: (third method)";
label variable pulkm4 "PULKM2 text: (fourth method)";
label variable pulkm5 "PULKM2 text: (fifth method)";
label variable pulkm6 "PULKM2 text: (sixth method)";
label variable pulkps1 "Can you tell me more about what you did to search for work? (first method)";
label variable pulkps2 "PULKPS1 text: (second method)";
label variable pulkps3 "PULKPS1 text: (third method)";
label variable pulkps4 "PULKPS1 text: (fourth method)";
label variable pulkps5 "PULKPS1 text: (fifth method)";
label variable pulkps6 "PULKPS1 text: (sixth method)";
label variable punlfck1 "Not in labor force check item 1: age filter for retirement question";
label variable punlfck2 "Not in labor force check item 2: outgoing rotation filter";
label variable pupelig "Interview status of each person in the household";
label variable puretot "Last month you were reported to be retired. Are you still retired?";
label variable purkat1 "Did (you/name) have to evacuate, even temporarily, where (you/he/she) was living in August because of Hurricane Katrina?";
label variable purkat2 "In August, prior to the Hurricane warning, where were (you/name) living?";
label variable puslfprx "Labor force information collected by self or proxy response";
label variable puwk "Last week, did you do any work for either pay or profit?";
label variable pxabspdo "PEABSPDO: allocation flag";
label variable pxabsrsn "PEABSRSN: allocation flag";
label variable pxafever "PEAFEVER: allocation flag";
label variable pxafnow "PEAFNOW: allocation flag";
label variable pxafwhn1 "PEAFWHN1: allocation flag";
label variable pxage "PRTAGE: allocation flag";
label variable pxcyc "PECYC: allocation flag";
label variable pxdipged "PEDIPGED: allocation flag";
label variable pxdw4wk "PEDW4WK: allocation flag";
label variable pxdwavl "PEDWAVL: allocation flag";
label variable pxdwavr "PEDWAVR: allocation flag";
label variable pxdwlko "PEDWLKO: allocation flag";
label variable pxdwlkwk "PEDWLKWK: allocation flag";
label variable pxdwrsn "PEDWRSN: allocation flag";
label variable pxdwwk "PEDWWK: allocation flag";
label variable pxdwwnto "PEDWWNTO: allocation flag";
label variable pxeduca "PEEDUCA: allocation flag";
label variable pxern "PEERN: allocation flag";
label variable pxerncov "PEERNCOV: allocation flag";
label variable pxernh1o "PEERNH1O: allocation flag";
label variable pxernh2 "PEERNH2: allocation flag";
label variable pxernhro "PEERNHRO: allocation flag";
label variable pxernhry "PEERNHRY: allocation flag";
label variable pxernlab "PEERNLAB: allocation flag";
label variable pxernper "PEERNPER: allocation flag";
label variable pxernrt "PEERNRT: allocation flag";
label variable pxernuot "PEERNUOT: allocation flag";
label variable pxernwkp "PEERNWKP: allocation flag";
label variable pxfntvty "PEFNTVTY: allocation flag";
label variable pxgr6cor "PEGR6COR: allocation flag";
label variable pxgrprof "PEGRPROF: allocation flag";
label variable pxhgcomp "PEHGCOMP: allocation flag";
label variable pxhract1 "PEHRACT1: allocation flag";
label variable pxhract2 "PEHRACT2: allocation flag";
label variable pxhractt "PEHRACTT: allocation flag";
label variable pxhravl "PEHRAVL: allocation flag";
label variable pxhrftpt "PEHRFTPT: allocation flag";
label variable pxhrrsn1 "PEHRRSN1: allocation flag";
label variable pxhrrsn2 "PEHRRSN2: allocation flag";
label variable pxhrrsn3 "PEHRRSN3: allocation flag";
label variable pxhrusl1 "PEHRUSL1: allocation flag";
label variable pxhrusl2 "PEHRUSL2: allocation flag";
label variable pxhruslt "PEHRUSLT: allocation flag";
label variable pxhrwant "PEHRWANT: allocation flag";
label variable pxhspnon "PEHSPNON: allocation flag";
label variable pxinusyr "PRINUYER: allocation flag";
label variable pxio1cow "PEIO1COW: allocation flag";
label variable pxio1icd "PEIO1ICD: allocation flag";
label variable pxio1ocd "PEIO1OCD: allocation flag";
label variable pxio2cow "PEIO2COW: allocation flag";
label variable pxio2icd "PEIO2ICD: allocation flag";
label variable pxio2ocd "PEIO2OCD: allocation flag";
label variable pxjhrsn "PEJHRSN: allocation flag";
label variable pxjhwant "PEJHWANT: allocation flag";
label variable pxjhwko "PEJHWKO: allocation flag";
label variable pxlayavl "PELAYAVL: allocation flag";
label variable pxlaydur "PELAYDUR: allocation flag";
label variable pxlayfto "PELAYFTO: allocation flag";
label variable pxlaylk "PELAYLK: allocation flag";
label variable pxlkavl "PELKAVL: allocation flag";
label variable pxlkdur "PELKDUR: allocation flag";
label variable pxlkfto "PELKFTO: allocation flag";
label variable pxlkll1o "PELKLL1O: allocation flag";
label variable pxlkll2o "PELKLL2O: allocation flag";
label variable pxlklwo "PELKLWO: allocation flag";
label variable pxlkm1 "PELKM1: allocation flag";
label variable pxmaritl "PEMARITL: allocation flag";
label variable pxmjnum "PEMJNUM: allocation flag";
label variable pxmjot "PEMJOT: allocation flag";
label variable pxmlr "PEMLR: allocation flag";
label variable pxmntvty "PEMNTVTY: allocation flag";
label variable pxms123 "PEMS123: allocation flag";
label variable pxnatvty "PENATVTY: allocation flag";
label variable pxnlfact "PENLFACT: allocation flag";
label variable pxnlfjh "PENLFJH: allocation flag";
label variable pxnlfret "PENLFRET: allocation flag";
label variable pxparent "PEPARENT: allocation flag";
label variable pxrace1 "PTDTRACE: allocation flag";
label variable pxret1 "PERET1: allocation flag";
label variable pxrrp "PERRP: allocation flag";
label variable pxschenr "PESCHENR: allocation flag";
label variable pxschft "PESCHFT: allocation flag";
label variable pxschlvl "PESCHLVL: allocation flag";
label variable pxsex "PESEX: allocation flag";
label variable pxspouse "PESPOUSE: allocation flag";
label variable qstnum "Unique household identifier";
label variable tratusr "ATUS respondent";
label variable tucaseid "ATUS Case ID (14-digit identifier)";
label variable tulineno "ATUS person line number";
 
capture label define labelgereg
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Northeast"
2 "Midwest (formerly North Central)"
3 "South"
4 "West"
;
capture label define labelgtmetsta
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Metropolitan"
2 "Non-metropolitan"
3 "Not identified"
;
capture label define labelhehousut
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "House, apartment, flat"
2 "Housing unit in nontransient hotel, motel, etc."
3 "Housing unit permanent in transient hotel, motel"
4 "Housing unit in rooming house"
5 "Mobile home or trailer with no permanent room added"
6 "Mobile home or trailer with 1 or more rooms added"
7 "Housing unit not specified above"
8 "Quarters not housing unit in rooming/boarding house"
9 "Unit not permanent in transient hotel/motel"
10 "Unoccupied tent site or trailer site"
11 "Student quarters in college dorm"
12 "Other unit not specified above"
;
capture label define labelhephoneo
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Unknown"
1 "Yes"
2 "No"
;
capture label define labelhetelavl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelhetelhhd
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelhetenure
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Owned or being bought by a household member"
2 "Rented for cash"
3 "Occupied without payment of cash rent"
;
capture label define labelhrhtype
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Husband/wife primary family (neither Armed Forces)"
2 "Husband/wife primary family (either/both Armed Forces)"
3 "Unmarried civilian male - primary family householder"
4 "Unmarried civilian female - primary family householder"
5 "Primary family householder - respondent in Armed Forces, unmarried"
6 "Civilian male primary individual"
7 "Civilian female primary individual"
8 "Primary individual householder - respondent in Armed Forces"
9 "Group quarters with family"
10 "Group quarters without family"
;
capture label define labelhrintsta
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Interview"
;
capture label define labelhrlonglk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Replacement household - no link to prior month"
2 "Link to previous month"
;
capture label define labelhrmis
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
8 "Month in sample 8 (MIS-8)"
;
capture label define labelhubus
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelhufaminc
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Less than $5,000"
2 "$5,000 to $7,499"
3 "$7,500 to $9,999"
4 "$10,000 to $12,499"
5 "$12,500 to $14,999"
6 "$15,000 to $19,999"
7 "$20,000 to $24,999"
8 "$25,000 to $29,999"
9 "$30,000 to $34,999"
10 "$35,000 to $39,999"
11 "$40,000 to $49,999"
12 "$50,000 to $59,999"
13 "$60,000 to $74,999"
14 "$75,000 to $99,999"
15 "$100,000 to $149,999"
16 "$150,000 and over"
;
capture label define labelhufinal
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
001 "Fully complete CATI"
002 "Partially complete CATI"
004 "Partial CATI - not complete at closeout"
005 "Labor force complete, supplement incomplete, CATI"
201 "Fully complete CAPI"
203 "Sufficient partial CAPI - pre-closeout"
204 "Sufficient partial CAPI - at closeout"
205 "Labor force complete, supplement incomplete, CAPI"
;
capture label define labelhuinttyp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Personal"
2 "Telephone"
;
capture label define labelhurhhscrn
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelhuspnish
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Spanish only language spoken"
;
capture label define labelhutypb
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Vacant regular"
2 "Temporarily occupied by persons with usual residence elsewhere"
3 "Vacant storage of household furniture"
4 "Unfit or to be demolished"
9 "Other type B"
;
capture label define labelhxhousut
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelhxphoneo
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelhxtelavl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelhxtelhhd
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpeabspdo
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpeabsrsn
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "On layoff"
2 "Slack work/business conditions"
3 "Waiting for a new job to begin"
4 "Vacation/personal days"
5 "Own illness/injury/medical problems"
6 "Childcare problems"
7 "Other family/personal obligation"
8 "Maternity/paternity leave"
9 "Labor dispute"
10 "Weather affected job"
11 "School/training"
12 "Civic/military duty"
13 "Does not work in the business"
14 "Other"
;
capture label define labelpeafever
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpeafnow
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpeafwhn1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "September 2001 or later"
2 "August 1990 to August 2001"
3 "May 1975 to July 1990"
4 "Vietnam Era (August 1964 to April 1975)"
5 "February 1955 to July 1964"
6 "Korean War (July 1950 to January 1955)"
7 "January 1947 to June 1950"
8 "World War II (December 1941 to December 1946)"
9 "November 1941 or earlier"
;
capture label define labelpeafwhn2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "September 2001 or later"
2 "August 1990 to August 2001"
3 "May 1975 to July 1990"
4 "Vietnam Era (August 1964 to April 1975)"
5 "February 1955 to July 1964"
6 "Korean War (July 1950 to January 1955)"
7 "January 1947 to June 1950"
8 "World War II (December 1941 to December 1946)"
9 "November 1941 or earlier"
;
capture label define labelpeafwhn3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "September 2001 or later"
2 "August 1990 to August 2001"
3 "May 1975 to July 1990"
4 "Vietnam Era (August 1964 to April 1975)"
5 "February 1955 to July 1964"
6 "Korean War (July 1950 to January 1955)"
7 "January 1947 to June 1950"
8 "World War II (December 1941 to December 1946)"
9 "November 1941 or earlier"
;
capture label define labelpeafwhn4
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "September 2001 or later"
2 "August 1990 to August 2001"
3 "May 1975 to July 1990"
4 "Vietnam Era (August 1964 to April 1975)"
5 "February 1955 to July 1964"
6 "Korean War (July 1950 to January 1955)"
7 "January 1947 to June 1950"
8 "World War II (December 1941 to December 1946)"
9 "November 1941 or earlier"
;
capture label define labelpecyc
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Less than 1 year (includes 0 years completed)"
2 "The first or freshman year"
3 "The second or sophomore year"
4 "The third or junior year"
5 "Four or more years"
;
capture label define labelpedipged
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Graduation from high school"
2 "GED or other equivalent"
;
capture label define labelpedw4wk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpedwavl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpedwavr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Own temporary illness"
2 "Going to school"
3 "Other"
;
capture label define labelpedwlko
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpedwlkwk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpedwrsn
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Believes no work available in area of expertise"
2 "Couldn`t find any work"
3 "Lacks necessary schooling/training"
4 "Employers think too young or too old"
5 "Other types of discrimination"
6 "Can`t arrange childcare"
7 "Family responsibilities"
8 "In school or other training"
9 "Ill-health, physical disability"
10 "Transportation problems"
11 "Other"
;
capture label define labelpedwwk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpedwwnto
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes, or maybe/it depends"
2 "No"
3 "Retired"
4 "Disabled"
5 "Unable to work"
;
capture label define labelpeeduca
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
31 "Less than 1st grade"
32 "1st, 2nd, 3rd, or 4th grade"
33 "5th or 6th grade"
34 "7th or 8th grade"
35 "9th grade"
36 "10th grade"
37 "11th grade"
38 "12th grade - no diploma"
39 "High school graduate - diploma or equivalent (GED)"
40 "Some college but no degree"
41 "Associate degree - occupational/vocational"
42 "Associate degree - academic program"
43 "Bachelor's degree (BA, AB, BS, etc.)"
44 "Master's degree (MA, MS, MEng, MEd, MSW, etc.)"
45 "Professional school degree (MD, DDS, DVM, etc.)"
46 "Doctoral degree (PhD, EdD, etc.)"
;
capture label define labelpeerncov
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpeernhry
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Hourly worker"
2 "Non-hourly worker"
;
capture label define labelpeernlab
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpeernper
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Hourly"
2 "Weekly"
3 "Bi-weekly"
4 "Twice monthly"
5 "Monthly"
6 "Annually"
7 "Other"
;
capture label define labelpeernrt
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpeernuot
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
/* Stata will not process these values.
capture label define labelpefntvty
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
57 "United States"
72 "Puerto Rico"
96 "U.S. Outlying Area"
100-554 "Foreign country or at sea"
555 "Abroad, country not known"
;
*/
capture label define labelpegr6cor
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpegrprof
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpehgcomp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Less than 1st grade"
2 "1st, 2nd, 3rd, or 4th grade"
3 "5th or 6th grade"
4 "7th or 8th grade"
5 "9th grade"
6 "10th grade"
7 "11th grade"
8 "12th grade - no diploma"
;
capture label define labelpehravl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpehrftpt
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Full time"
2 "Part time"
3 "Hours vary"
;
capture label define labelpehrrsn1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Slack work/business conditions"
2 "Could only find part time work"
3 "Seasonal work"
4 "Childcare problems"
5 "Other family/personal obligations"
6 "Health/medical limitations"
7 "School/training"
8 "Retired/Social Security limit on earnings"
9 "Full time work week is less than 35 hours"
10 "Other"
;
capture label define labelpehrrsn2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Childcare problems"
2 "Other family/personal obligations"
3 "Health/medical limitations"
4 "School/training"
5 "Retired/Social Security limit on earnings"
6 "Full time work week is less than 35 hours"
7 "Other"
;
capture label define labelpehrrsn3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Slack work/business conditions"
2 "Seasonal work"
3 "Job started or ended during week"
4 "Vacation/personal day"
5 "Own illness/injury/medical appointment"
6 "Holiday (legal or religious)"
7 "Childcare problems"
8 "Other family/personal obligations"
9 "Labor dispute"
10 "Weather affected job"
11 "School/training"
12 "Civic/military duty"
13 "Other reason"
;
capture label define labelpehrwant
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
3 "Regular hours are full time"
;
capture label define labelpehspnon
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Hispanic"
2 "Non-Hispanic"
;
capture label define labelpeio1cow
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Government, federal"
2 "Government, state"
3 "Government, local"
4 "Private, for profit"
5 "Private, nonprofit"
6 "Self-employed, incorporated"
7 "Self-employed, unincorporated"
8 "Without pay"
;
capture label define labelpeio2cow
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Government, federal"
2 "Government, state"
3 "Government, local"
4 "Private, for profit"
5 "Private, nonprofit"
6 "Self-employed, incorporated"
7 "Self-employed, unincorporated"
8 "Without pay"
;
capture label define labelpejhrsn
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Personal/family (including pregnancy)"
2 "Return to school"
3 "Health"
4 "Retirement or old age"
5 "Temporary, seasonal, or intermittent job completed"
6 "Slack work/business conditions"
7 "Unsatisfactory work arrangements (hours, pay, etc.)"
8 "Other"
;
capture label define labelpejhwant
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes, or it depends"
2 "No"
;
capture label define labelpejhwko
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpelayavl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpelayfto
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpelaylk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpelkavl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpelkfto
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
3 "Doesn't matter"
;
capture label define labelpelkll1o
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Working"
2 "School"
3 "Left military service"
4 "Something else"
;
capture label define labelpelkll2o
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Lost job"
2 "Quit job"
3 "Temporary job ended"
;
capture label define labelpelklwo
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Within the last 12 months"
2 "More than 12 months ago"
3 "Never worked"
;
capture label define labelpelkm1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted employer directly/interview"
2 "Contacted public employment agency"
3 "Contacted private employment agency"
4 "Contacted friends or relatives"
5 "Contacted school/university employment center"
6 "Sent out resumes/filled out applications"
7 "Checked union/professional registers"
8 "Placed or answered ads"
9 "Other active"
10 "Looked at ads"
11 "Attended job training programs/courses"
12 "Nothing"
13 "Other passive"
;
capture label define labelpemaritl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Married - spouse present"
2 "Married - spouse absent"
3 "Widowed"
4 "Divorced"
5 "Separated"
6 "Never married"
;
capture label define labelpemjnum
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
2 "Two jobs"
3 "Three jobs"
4 "Four or more jobs"
;
capture label define labelpemjot
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpemlr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Employed - at work"
2 "Employed - absent"
3 "Unemployed - on layoff"
4 "Unemployed - looking"
5 "Not in labor force - retired"
6 "Not in labor force - disabled"
7 "Not in labor force - other"
;
/* Stata will not process these values.
capture label define labelpemntvty
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
57 "United States"
72 "Puerto Rico"
96 "U.S. Outlying Area"
100-554 "Foreign country or at sea"
555 "Abroad, country not known"
;
*/
capture label define labelpems123
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "One-year program"
2 "Two-year program"
3 "Three-year program (or longer)"
;
/* Stata will not process these values.
capture label define labelpenatvty
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
57 "United States"
72 "Puerto Rico"
96 "U.S. Outlying Area"
100-554 "Foreign country or at sea"
555 "Abroad, country not known"
;
*/
capture label define labelpenlfact
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Disabled"
2 "Ill"
3 "In school"
4 "Taking care of house or family"
5 "In retirement"
6 "Something else/other"
;
capture label define labelpenlfjh
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Within the last 12 months"
2 "More than 12 months ago"
3 "Never worked"
;
capture label define labelpenlfret
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelperet1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
3 "Has a job"
;
capture label define labelperrp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Reference person living with relatives"
2 "Reference person living without relatives"
3 "Spouse"
4 "Own child"
5 "Grandchild"
6 "Parent"
7 "Brother/sister"
8 "Other relative of reference person"
9 "Foster child"
10 "Nonrelative of reference person living with relatives"
12 "Nonrelative of reference person living without relatives"
13 "Unmarried partner living with relatives"
14 "Unmarried partner living without relatives"
15 "Housemate/roommate living with relatives"
16 "Housemate/roommate living without relatives"
17 "Roomer/boarder living with relatives"
18 "Roomer/boarder living without relatives"
;
capture label define labelpeschenr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpeschft
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Full time"
2 "Part time"
;
capture label define labelpeschlvl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "High school"
2 "College or university"
;
capture label define labelpesex
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Male"
2 "Female"
;
capture label define labelprabsrea
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Full time paid - vacation"
2 "Full time paid - own illness"
3 "Full time paid - childcare problems"
4 "Full time paid - other family/personal obligation"
5 "Full time paid - maternity/paternity leave"
6 "Full time paid - labor dispute"
7 "Full time paid - weather affected job"
8 "Full time paid - school/training"
9 "Full time paid - civic/military duty"
10 "Full time paid - other"
11 "Full time unpaid - vacation"
12 "Full time unpaid - own illness"
13 "Full time unpaid - childcare problems"
14 "Full time unpaid - other family/personal obligation"
15 "Full time unpaid - maternity/paternity leave"
16 "Full time unpaid - labor dispute"
17 "Full time unpaid - weather affected job"
18 "Full time unpaid - school/training"
19 "Full time unpaid - civic/military duty"
20 "Full time unpaid - other"
21 "Part time paid - vacation"
22 "Part time paid - own illness"
23 "Part time paid - childcare problems"
24 "Part time paid - other family/personal obligation"
25 "Part time paid - maternity/paternity leave"
26 "Part time paid - labor dispute"
27 "Part time paid - weather affected job"
28 "Part time paid - school/training"
29 "Part time paid - civic/military duty"
30 "Part time paid - other"
31 "Part time unpaid - vacation"
32 "Part time unpaid - own illness"
33 "Part time unpaid - childcare problems"
34 "Part time unpaid - other family/personal obligation"
35 "Part time unpaid - maternity/paternity leave"
36 "Part time unpaid - labor dispute"
37 "Part time unpaid - weather affected job"
38 "Part time unpaid - school/training"
39 "Part time unpaid - civic/military duty"
40 "Part time unpaid - other"
;
capture label define labelpragna
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Agricultural"
2 "Non-agricultural"
;
capture label define labelprcitflg
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
10 "Value To Value"
11 "Blank To Value"
12 "Don`t Know To Value"
13 "Refused To Value"
20 "Value To Longitudinal Value"
21 "Blank To Longitudinal Value"
22 "Don`t Know To Longitudinal Value"
23 "Refused To Longitudinal Value"
30 "Value To Allocated Longitudinal Value"
31 "Blank To Allocated Longitudinal Value"
32 "Dk To Allocated Longitudinal Value"
33 "Refused To Allocated Longitudinal Value"
40 "Value To Allocated Value"
41 "Blank To Allocated Value"
42 "Don`t Know To Allocated Value"
43 "Refused To Allocated Value"
50 "Value To Blank"
52 "Don`t Know To Blank"
53 "Refused To Blank"
;
capture label define labelprcitshp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Native, born in United States"
2 "Native, born in Puerto Rico or U.S. Outlying Area"
3 "Native, born abroad of American parent or parents"
4 "Foreign born, U.S. citizen by naturalization"
5 "Foreign born, not a U.S. citizen"
;
capture label define labelprcivlf
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "In civilian labor force"
2 "Not in civilian labor force"
;
capture label define labelprcow1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Federal government"
2 "State government"
3 "Local government"
4 "Private (including incorporated self-employed)"
5 "Self-employed, unincorporated"
6 "Without pay"
;
capture label define labelprcow2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Federal government"
2 "State government"
3 "Local government"
4 "Private (including incorporated self-employed)"
5 "Self-employed, unincorporated"
6 "Without pay"
;
capture label define labelprcowpg
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Private"
2 "Government"
;
capture label define labelprdisc
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Discouraged worker"
2 "Conditionally interested"
3 "Not available"
;
capture label define labelprdtcow1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Agricultural, wage/salary, private"
2 "Agricultural, wage/salary, government"
3 "Agricultural, self-employed"
4 "Agricultural, unpaid"
5 "Non-agricultural, wage/salary, private households"
6 "Non-agricultural, wage/salary, other private"
7 "Non-agricultural, wage/salary, federal government"
8 "Non-agricultural, wage/salary, state government"
9 "Non-agricultural, wage/salary, local government"
10 "Non-agricultural, self-employed"
11 "Non-agricultural, unpaid"
;
capture label define labelprdtcow2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Agricultural, wage/salary, private"
2 "Agricultural, wage/salary, government"
3 "Agricultural, self-employed"
4 "Agricultural, unpaid"
5 "Non-agricultural, wage/salary, private households"
6 "Non-agricultural, wage/salary, other private"
7 "Non-agricultural, wage/salary, federal government"
8 "Non-agricultural, wage/salary, state government"
9 "Non-agricultural, wage/salary, local government"
10 "Non-agricultural, self-employed"
11 "Non-agricultural, unpaid"
;
capture label define labelprdthsp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Mexican"
2 "Puerto Rican"
3 "Cuban"
4 "Central/South American"
5 "Other Spanish"
;
capture label define labelprdtind1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1  "Agriculture"
2  "Forestry, logging, fishing, hunting, and trapping"
3  "Mining"
4  "Construction"
5  "Nonmetallic mineral product manufacturing"
6  "Primary metals and fabricated metal products"
7  "Machinery manufacturing"
8  "Computer and electronic product manufacturing"
9  "Electrical equipment, appliance manufacturing"
10 "Transportation equipment manufacturing"
11 "Wood product manufacturing"
12 "Furniture and fixtures manufacturing"
13 "Miscellaneous and not specified manufacturing"
14 "Food manufacturing"
15 "Beverage and tobacco product manufacturing"
16 "Textile, apparel, and leather manufacturing"
17 "Paper manufacturing and printing"
18 "Petroleum and coal products manufacturing"
19 "Chemical manufacturing"
20 "Plastics and rubber products manufacturing"
21 "Wholesale trade"
22 "Retail trade"
23 "Transportation and warehousing"
24 "Utilities"
25 "Publishing industries (except internet)"
26 "Motion picture and sound recording industries"
27 "Broadcasting (except internet)"
28 "Internet publishing and broadcasting"
29 "Telecommunications"
30 "Internet service providers and data processing services"
31 "Other information services"
32 "Finance"
33 "Insurance"
34 "Real estate"
35 "Rental and leasing services"
36 "Professional, scientific, and technical services"
37 "Management of companies and enterprises"
38 "Administrative and support services"
39 "Waste management and remediation services"
40 "Educational services"
41 "Hospitals"
42 "Health care services, except hospitals"
43 "Social assistance"
44 "Arts, entertainment, and recreation"
45 "Traveler accommodation"
46 "Food services and drinking places"
47 "Repair and maintenance"
48 "Personal and laundry services"
49 "Membership associations and organizations"
50 "Private households"
51 "Public administration"
52 "Armed Forces"
;
capture label define labelprdtind2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1  "Agriculture"
2  "Forestry, logging, fishing, hunting, and trapping"
3  "Mining"
4  "Construction"
5  "Nonmetallic mineral product manufacturing"
6  "Primary metals and fabricated metal products"
7  "Machinery manufacturing"
8  "Computer and electronic product manufacturing"
9  "Electrical equipment, appliance manufacturing"
10 "Transportation equipment manufacturing"
11 "Wood product manufacturing"
12 "Furniture and fixtures manufacturing"
13 "Miscellaneous and not specified manufacturing"
14 "Food manufacturing"
15 "Beverage and tobacco product manufacturing"
16 "Textile, apparel, and leather manufacturing"
17 "Paper manufacturing and printing"
18 "Petroleum and coal products manufacturing"
19 "Chemical manufacturing"
20 "Plastics and rubber products manufacturing"
21 "Wholesale trade"
22 "Retail trade"
23 "Transportation and warehousing"
24 "Utilities"
25 "Publishing industries (except internet)"
26 "Motion picture and sound recording industries"
27 "Broadcasting (except internet)"
28 "Internet publishing and broadcasting"
29 "Telecommunications"
30 "Internet service providers and data processing services"
31 "Other information services"
32 "Finance"
33 "Insurance"
34 "Real estate"
35 "Rental and leasing services"
36 "Professional, scientific, and technical services"
37 "Management of companies and enterprises"
38 "Administrative and support services"
39 "Waste management and remediation services"
40 "Educational services"
41 "Hospitals"
42 "Health care services, except hospitals"
43 "Social assistance"
44 "Arts, entertainment, and recreation"
45 "Traveler accommodation"
46 "Food services and drinking places"
47 "Repair and maintenance"
48 "Personal and laundry services"
49 "Membership associations and organizations"
50 "Private households"
51 "Public administration"
52 "Armed Forces"
;
capture label define labelprdtocc1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Management occupations"
2 "Business and financial operations occupations"
3 "Computer and mathematical science occupations"
4 "Architecture and engineering occupations"
5 "Life, physical, and social science occupations"
6 "Community and social service occupations"
7 "Legal occupations"
8 "Education, training, and library occupations"
9 "Arts, design, entertainment, sports, and media occupations"
10 "Healthcare practitioner and technical occupations"
11 "Healthcare support occupations"
12 "Protective service occupations"
13 "Food preparation and serving related occupations"
14 "Building and grounds cleaning and maintenance occupations"
15 "Personal care and service occupations"
16 "Sales and related occupations"
17 "Office and administrative support occupations"
18 "Farming, fishing, and forestry occupations"
19 "Construction and extraction occupations"
20 "Installation, maintenance, and repair occupations"
21 "Production occupations"
22 "Transportation and material moving occupations"
23 "Armed Forces"
;
capture label define labelprdtocc2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Management occupations"
2 "Business and financial operations occupations"
3 "Computer and mathematical science occupations"
4 "Architecture and engineering occupations"
5 "Life, physical, and social science occupations"
6 "Community and social service occupations"
7 "Legal occupations"
8 "Education, training, and library occupations"
9 "Arts, design, entertainment, sports, and media occupations"
10 "Healthcare practitioner and technical occupations"
11 "Healthcare support occupations"
12 "Protective service occupations"
13 "Food preparation and serving related occupations"
14 "Building and grounds cleaning and maintenance occupations"
15 "Personal care and service occupations"
16 "Sales and related occupations"
17 "Office and administrative support occupations"
18 "Farming, fishing, and forestry occupations"
19 "Construction and extraction occupations"
20 "Installation, maintenance, and repair occupations"
21 "Production occupations"
22 "Transportation and material moving occupations"
23 "Armed Forces"
;
capture label define labelpremp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Employed persons (excluding agriculture and private households)"
;
capture label define labelpremphrs
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Unemployed and not in the labor force"
1 "With job, not at work - illness"
2 "With job, not at work - vacation"
3 "With job, not at work - weather affected job"
4 "With job, not at work - labor dispute"
5 "With job, not at work - childcare problems"
6 "With job, not at work - family/personal obligation"
7 "With job, not at work - maternity/paternity"
8 "With job, not at work - school/training"
9 "With job, not at work - civic/military duty"
10 "With job, not at work - does not work in business"
11 "With job, not at work - other"
12 "At work, 1-4 hours"
13 "At work, 5-14 hours"
14 "At work, 15-21 hours"
15 "At work, 22-29 hours"
16 "At work, 30-34 hours"
17 "At work, 35-39 hours"
18 "At work, 40 hours"
19 "At work, 41-47 hours"
20 "At work, 48 hours"
21 "At work, 49-59 hours"
22 "At work, 60 hours or more"
;
capture label define labelprempnot
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Employed"
2 "Unemployed"
3 "Not in labor force - discouraged"
4 "Not in labor force - other"
;
capture label define labelprerelg
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Not eligible for edit"
1 "Eligible for edit"
;
capture label define labelprexplf
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Employed"
2 "Unemployed"
;
capture label define labelprfamnum
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Not a family member"
1 "Primary family member only"
2 "Subfamily no. 2 member"
3 "Subfamily no. 3 member"
4 "Subfamily no. 4 member"
5 "Subfamily no. 5 member"
6 "Subfamily no. 6 member"
7 "Subfamily no. 7 member"
8 "Subfamily no. 8 member"
9 "Subfamily no. 9 member"
10 "Subfamily no. 10 member"
11 "Subfamily no. 11 member"
12 "Subfamily no. 12 member"
13 "Subfamily no. 13 member"
14 "Subfamily no. 14 member"
15 "Subfamily no. 15 member"
16 "Subfamily no. 16 member"
17 "Subfamily no. 17 member"
18 "Subfamily no. 18 member"
19 "Subfamily no. 19 member"
;
capture label define labelprfamrel
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Not a family member"
1 "Reference person"
2 "Spouse"
3 "Child"
4 "Other relative (primary family only)"
;
capture label define labelprfamtyp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Primary family"
2 "Primary individual"
3 "Related subfamily"
4 "Unrelated subfamily"
5 "Secondary individual"
;
capture label define labelprftlf
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Full time labor force"
2 "Part time labor force"
;
capture label define labelprhernal
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "PRERNHLY does not contain allocated information"
1 "PRERNHLY contains allocated information"
;
capture label define labelprhrusl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "0-20 hours"
2 "21-34 hours"
3 "35-39 hours"
4 "40 hours"
5 "41-49 hours"
6 "50 or more hours"
7 "Varies - full time"
8 "Varies - part time"
;
capture label define labelprimind1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Agriculture, forestry, fishing, and hunting"
2 "Mining"
3 "Construction"
4 "Manufacturing - durable goods"
5 "Manufacturing - non-durable goods"
6 "Wholesale trade"
7 "Retail trade"
8 "Transportation and warehousing"
9 "Utilities"
10 "Information"
11 "Finance and insurance"
12 "Real estate and rental and leasing"
13 "Professional and technical services"
14 "Management, administrative and waste management services"
15 "Educational services"
16 "Health care and social services"
17 "Arts, entertainment, and recreation"
18 "Accommodation and food services"
19 "Private households"
20 "Other services, except private households"
21 "Public administration"
22 "Armed Forces"
;
capture label define labelprimind2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Agriculture, forestry, fishing, and hunting"
2 "Mining"
3 "Construction"
4 "Manufacturing - durable goods"
5 "Manufacturing - non-durable goods"
6 "Wholesale trade"
7 "Retail trade"
8 "Transportation and warehousing"
9 "Utilities"
10 "Information"
11 "Finance and insurance"
12 "Real estate and rental and leasing"
13 "Professional and technical services"
14 "Management, administrative and waste management services"
15 "Educational services"
16 "Health care and social services"
17 "Arts, entertainment, and recreation"
18 "Accommodation and food services"
19 "Private households"
20 "Other services, except private households"
21 "Public administration"
22 "Armed Forces"
;
capture label define labelprinuyer
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Not foreign born"
1 "Before 1950"
2 "1950-1959"
3 "1960-1964"
4 "1965-1969"
5 "1970-1974"
6 "1975-1979"
7 "1980-1981"
8 "1982-1983"
9 "1984-1985"
10 "1986-1987"
11 "1988-1989"
12 "1990-1991"
13 "1992-1993"
14 "1994-1995"
15 "1996-1997"
16 "1998-1999"
17 "2000-2001"
18 "2002-2005 or 2002-2003 (see note)"
19 "2004-2006"
;
capture label define labelprioelg
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Not eligible for edit"
1 "Eligible for edit"
;
capture label define labelprjobsea
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Looked last 4 weeks - not worked"
2 "Looked last 4 weeks - worked"
3 "Looked last 4 weeks - layoff"
4 "Unavailable job seekers"
5 "No recent job search"
;
capture label define labelprmarsta
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Married, civilian spouse present"
2 "Married, Armed Forces spouse present"
3 "Married, spouse absent (except separated)"
4 "Widowed"
5 "Divorced"
6 "Separated"
7 "Never married"
;
capture label define labelprmjind1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Agriculture, forestry, fishing, and hunting"
2 "Mining"
3 "Construction"
4 "Manufacturing"
5 "Wholesale and retail trade"
6 "Transportation and utilities"
7 "Information"
8 "Financial activities"
9 "Professional and business services"
10 "Educational and health services"
11 "Leisure and hospitality"
12 "Other services"
13 "Public administration"
14 "Armed Forces"
;
capture label define labelprmjind2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Agriculture, forestry, fishing, and hunting"
2 "Mining"
3 "Construction"
4 "Manufacturing"
5 "Wholesale and retail trade"
6 "Transportation and utilities"
7 "Information"
8 "Financial activities"
9 "Professional and business services"
10 "Educational and health services"
11 "Leisure and hospitality"
12 "Other services"
13 "Public administration"
14 "Armed Forces"
;
capture label define labelprmjocc1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Management, business, and financial occupations"
2 "Professional and related occupations"
3 "Service occupations"
4 "Sales and related occupations"
5 "Office and administrative support occupations"
6 "Farming, fishing, and forestry occupations"
7 "Construction and extraction occupations"
8 "Installation, maintenance, and repair occupations"
9 "Production occupations"
10 "Transportation and material moving occupations"
11 "Armed Forces"
;
capture label define labelprmjocc2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Management, business, and financial occupations"
2 "Professional and related occupations"
3 "Service occupations"
4 "Sales and related occupations"
5 "Office and administrative support occupations"
6 "Farming, fishing, and forestry occupations"
7 "Construction and extraction occupations"
8 "Installation, maintenance, and repair occupations"
9 "Production occupations"
10 "Transportation and material moving occupations"
11 "Armed Forces"
;
capture label define labelprmjocgr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Management, professional, and related occupations"
2 "Service occupations"
3 "Sales and office occupations"
4 "Farming, fishing, and forestry occupations"
5 "Construction and maintenance occupations"
6 "Production, transportation, and material moving occupations"
7 "Armed Forces"
;
capture label define labelprnagpws
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Non-agricultural private wage and salary"
;
capture label define labelprnagws
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Non-agricultural wage and salary workers"
;
capture label define labelprnlfsch
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "In school"
2 "Not in school"
;
capture label define labelprnmchld
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
13 "13 Own Child Under 18 Years Of Age"
14 "14 Own Child Under 18 Years Of Age"
15 "15 Own Child Under 18 Years Of Age"
16 "16 Own Child Under 18 Years Of Age"
17 "17 Own Child Under 18 Years Of Age"
18 "18 Own Child Under 18 Years Of Age"
19 "19 Own Child Under 18 Years Of Age"
;
capture label define labelprpertyp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Child household member"
2 "Adult civilian household member (15+ years old)"
3 "Adult Armed Forces household member"
;
capture label define labelprpthrs
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Usually full time, part time for non-economic reasons"
1 "Usually full time, part time for economic reasons, 1-4 hours"
2 "Usually full time, part time for economic reasons, 5-14 hours"
3 "Usually full time, part time for economic reasons, 15-29 hours"
4 "Usually full time, part time for economic reasons, 30-34 hours"
5 "Usually part time for economic reasons, 1-4 hours"
6 "Usually part time for economic reasons, 5-14 hours"
7 "Usually part time for economic reasons, 15-29 hours"
8 "Usually part time for economic reasons, 30-34 hours"
9 "Usually part time for non-economic reasons, 1-4 hours"
10 "Usually part time for non-economic reasons, 5-14 hours"
11 "Usually part time for non-economic reasons, 15-29 hours"
12 "Usually part time for non-economic reasons, 30-34 hours"
;
capture label define labelprptrea
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Usually full time - slack work/business conditions"
2 "Usually full time - seasonal work"
3 "Usually full time - job started/ended during week"
4 "Usually full time - vacation/personal day"
5 "Usually full time - own illness/injury/medical appointment"
6 "Usually full time - holiday (religious or legal)"
7 "Usually full time - childcare problems"
8 "Usually full time - other family/personal obligation"
9 "Usually full time - labor dispute"
10 "Usually full time - weather affected job"
11 "Usually full time - school/training"
12 "Usually full time - civic/military duty"
13 "Usually full time - other reason"
14 "Usually part time - slack work/business conditions"
15 "Usually part time - could only find part time work"
16 "Usually part time - seasonal work"
17 "Usually part time - childcare problems"
18 "Usually part time - other family/personal obligation"
19 "Usually part time - health/medical limitations"
20 "Usually part time - school/training"
21 "Usually part time - retired/Social Security limit on earnings"
22 "Usually part time - work week less than 35 hours"
23 "Usually part time - other reason"
;
capture label define labelprsjmj
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Single jobholder"
2 "Multiple jobholder"
;
capture label define labelprtfage
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Age not topcoded"
1 "Age topcoded"
;
capture label define labelpruntype
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Job loser/on layoff"
2 "Other job loser"
3 "Temporary job ended"
4 "Job leaver"
5 "Re-entrant"
6 "New entrant"
;
capture label define labelprwernal
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "PRERNWA does not contain allocated information"
1 "PRERNWA contains allocated information"
;
capture label define labelprwksch
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Not in labor force"
1 "At work"
2 "With job, not at work"
3 "Unemployed, seeks full time"
4 "Unemployed, seeks part time"
;
capture label define labelprwkstat
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Not in labor force"
2 "Full time hours (35+), usually full time"
3 "Part time for economic reasons, usually full time"
4 "Part time for non-economic reasons, usually full time"
5 "Not at work, usually full time"
6 "Part time hours, usually part time for economic reasons"
7 "Part time hours, usually part time for non-economic reasons"
8 "Full time hours, usually part time for economic reasons"
9 "Full time hours, usually part time for non-economic reasons"
10 "Not at work, usually part time"
11 "Unemployed full time"
12 "Unemployed part time"
;
capture label define labelprwntjob
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Want a job"
2 "Other not in labor force"
;
capture label define labelptdtrace
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "White only"
2 "Black only"
3 "American Indian, Alaskan Native only"
4 "Asian only"
5 "Hawaiian/Pacific Islander only"
6 "White-Black"
7 "White-American Indian"
8 "White-Asian"
9 "White-Hawaiian"
10 "Black-American Indian"
11 "Black-Asian"
12 "Black-Hawaiian"
13 "American Indian-Asian"
14 "Asian-Hawaiian"
15 "White-Black-American Indian"
16 "White-Black-Asian"
17 "White-American Indian-Asian"
18 "White-Asian-Hawaiian"
19 "White-Black-American Indian-Asian"
20 "2 or 3 races"
21 "4 or 5 races"
;
capture label define labelpthr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Not topcoded"
1 "Topcoded"
;
capture label define labelptot
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Not topcoded"
1 "Topcoded"
;
capture label define labelptwk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Not topcoded"
1 "Topcoded"
;
capture label define labelpuabsot
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
3 "Retired"
4 "Disabled"
5 "Unable to work"
;
capture label define labelpubus1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpubus2ot
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpubusck1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUBUS1"
2 "Go to PURETCK1"
;
capture label define labelpubusck2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUHRUSL1"
2 "Go to PUBUS2"
;
capture label define labelpubusck3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUABSRSN"
2 "Go to PULAY"
;
capture label define labelpubusck4
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUHRUSL1"
2 "Go to PUABSPD"
;
capture label define labelpuchinhh
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Person added"
2 "Person added - usually resides elsewhere"
3 "Person undeleted"
4 "Person died"
5 "Deleted for reason other than death"
6 "Person joined Armed Forces"
7 "Person no longer in Armed Forces"
9 "Change in demographic information"
;
capture label define labelpudis
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
3 "Did not have disability last month"
;
capture label define labelpudis1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpudis2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpudwck1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUSCHCK"
2 "Go to PUNLFCK1"
3 "Go to PUDWCK4"
4 "Go to PUDWWANT"
;
capture label define labelpudwck2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUJHCK1"
2 "Go to PUDIS1"
3 "Go to PUDIS2"
4 "Go to PUDWCK4"
;
capture label define labelpudwck3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUDWCK4"
2 "Go to PUNLFCK2"
;
capture label define labelpudwck4
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUDWCK5"
2 "Go to PUDWCK5"
3 "Go to PUDWCK5"
4 "Go to PUDWRSN"
;
capture label define labelpudwck5
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUDWWK"
2 "Go to PUDWLK"
;
capture label define labelpuhrck1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUHRUSL2"
2 "Go to PUHRUSLT"
;
capture label define labelpuhrck12
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PULK"
2 "Go to PUIOCK1"
;
capture label define labelpuhrck2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUHRFTPT"
2 "Go to PUHRFTPT"
3 "Go to PUHRFTPT"
4 "Go to PUHRFTPT"
5 "Go to PUHRCK3"
;
capture label define labelpuhrck3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUHRCK8"
2 "Go to PUHRCK8"
3 "Go to PUHRACT1"
4 "Go to PUHRCK4"
5 "Go to PUHROFF1"
6 "Go to PUHRCK4"
;
capture label define labelpuhrck4
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUHRACT1"
2 "Go to PUHROFF1"
3 "Go to PUHRWANT"
4 "Go to PUHRWANT"
5 "Go to PUHRACT1"
;
capture label define labelpuhrck5
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUHRACT2"
2 "Go to PUHRCK6"
;
capture label define labelpuhrck6
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PULK"
2 "Go to PUABSRSN"
3 "Go to PUHRACTT"
;
capture label define labelpuhrck7
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "If PUBUS2=2,D,R and PUHRACT1<15 go to PUHRCK8"
2 "If PUBUS2=2,D,R and PUHRACT1>=15 go to PUHRCK8"
3 "If PUHRUSLT>=35 and PUHRACT1 <> D,R and PUHRACT2 <> D,R go to PUHRRSN3"
4 "If PUHRWANT=1 and PUHRACTT <35 and PUHRRSN1=1-3 go to PUHRAVL"
5 "Go to PUHRCK8"
;
capture label define labelpuhroff1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpuhrot1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpuio1mfg
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Manufacturing"
2 "Retail trade"
3 "Wholesale trade"
4 "Something else"
;
capture label define labelpuio2mfg
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Manufacturing"
2 "Retail trade"
3 "Wholesale trade"
4 "Something else"
;
capture label define labelpuiock1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUIO1INT"
2 "Go to PUIO1INT"
3 "Go to PUIO1INT"
4 "Go to PUIODP1"
5 "Go to PUIO1INT"
;
capture label define labelpuiock2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUIO1IND"
2 "Go to PUIO1OCC"
3 "Go to PUIODP2"
;
capture label define labelpuiock3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUIO1OCC"
2 "Go to PUIO1OCC"
3 "Go to PUIODP3"
;
capture label define labelpuiodp1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpuiodp2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpuiodp3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpujhck1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUNLFCK2"
2 "Go to PUJHCK2"
3 "Go to PUNLFCK1"
;
capture label define labelpujhck2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUJHRSN"
2 "Go to PUJHWANT"
3 "Go to PUJHWK"
;
capture label define labelpujhck3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUJHDP1"
2 "Go to PUJHRSN"
;
capture label define labelpujhck4
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUJHCK5"
2 "Go to PUIO1INT"
3 "Go to PUJHCK5"
4 "Go to PUIO1INT"
5 "Go to PUNLFCK1"
;
capture label define labelpujhck5
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUIO1INT"
2 "Go to PUIOCK5"
;
capture label define labelpujhdp1o
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpulay
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
3 "Retired"
4 "Disabled"
5 "Unable to work"
;
capture label define labelpulay6m
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpulayavr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Own temporary illness"
2 "Going to school"
3 "Other"
;
capture label define labelpulayck1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PULAYCK3"
2 "Go to PULAYFT"
3 "Go to PULAYDR"
;
capture label define labelpulayck2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PULAYDR3"
2 "Go to PULAYFT"
;
capture label define labelpulayck3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUIO1INT"
2 "Go to PUIO1INT"
3 "Go to PUSCHCK"
;
capture label define labelpulaydt
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpulk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
3 "Retired"
4 "Disabled"
5 "Unable to work"
;
capture label define labelpulkavr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Waiting for new job to begin"
2 "Own temporary illness"
3 "Going to school"
4 "Other"
;
capture label define labelpulkdk1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted employer directly/interview"
2 "Contacted public employment agency"
3 "Contacted private employment agency"
4 "Contacted friends or relatives"
5 "Contacted school/university employment center"
6 "Sent out resumes/filled out applications"
7 "Checked union/professional registers"
8 "Placed or answered ads"
9 "Other active"
10 "Looked at ads"
11 "Attended job training programs/courses"
12 "Nothing"
13 "Other passive"
;
capture label define labelpulkdk2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted employer directly/interview"
2 "Contacted public employment agency"
3 "Contacted private employment agency"
4 "Contacted friends or relatives"
5 "Contacted school/university employment center"
6 "Sent out resumes/filled out applications"
7 "Checked union/professional registers"
8 "Placed or answered ads"
9 "Other active"
10 "Looked at ads"
11 "Attended job training programs/courses"
13 "Other passive"
;
capture label define labelpulkdk3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted employer directly/interview"
2 "Contacted public employment agency"
3 "Contacted private employment agency"
4 "Contacted friends or relatives"
5 "Contacted school/university employment center"
6 "Sent out resumes/filled out applications"
7 "Checked union/professional registers"
8 "Placed or answered ads"
9 "Other active"
10 "Looked at ads"
11 "Attended job training programs/courses"
13 "Other passive"
;
capture label define labelpulkdk4
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpulkdk5
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpulkdk6
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpulkm2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted employer directly/interview"
2 "Contacted public employment agency"
3 "Contacted private employment agency"
4 "Contacted friends or relatives"
5 "Contacted school/university employment center"
6 "Sent out resumes/filled out applications"
7 "Checked union/professional registers"
8 "Placed or answered ads"
9 "Other active"
10 "Looked at ads"
11 "Attended job training programs/courses"
13 "Other passive"
;
capture label define labelpulkm3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpulkm4
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpulkm5
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpulkm6
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpulkps1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted employer directly/interview"
2 "Contacted public employment agency"
3 "Contacted private employment agency"
4 "Contacted friends or relatives"
5 "Contacted school/university employment center"
6 "Sent out resumes/filled out applications"
7 "Checked union/professional registers"
8 "Placed or answered ads"
9 "Other active"
10 "Looked at ads"
11 "Attended job training programs/courses"
12 "Nothing"
13 "Other passive"
;
capture label define labelpulkps2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted employer directly/interview"
2 "Contacted public employment agency"
3 "Contacted private employment agency"
4 "Contacted friends or relatives"
5 "Contacted school/university employment center"
6 "Sent out resumes/filled out applications"
7 "Checked union/professional registers"
8 "Placed or answered ads"
9 "Other active"
10 "Looked at ads"
11 "Attended job training programs/courses"
13 "Other passive"
;
capture label define labelpulkps3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpulkps4
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpulkps5
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpulkps6
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Contacted Employer Directly/Interview"
2 "Contacted Public Employment Agency"
3 "Contacted Private Employment Agency"
4 "Contacted Friends Or Relatives"
5 "Contacted School/University Empl Center"
6 "Sent Out Resumes/Filled Out Application"
7 "Checked Union/Professional Registers"
8 "Placed Or Answered Ads"
9 "Other Active"
10 "Looked At Ads"
11 "Attended Job Training Programs/Courses"
13 "Other Passive"
;
capture label define labelpunlfck1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUNLFACT"
2 "Go to PUNLFRET"
;
capture label define labelpunlfck2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Go to PUNLFJH"
2 "End questions"
;
capture label define labelpupelig
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Eligible for interview"
2 "Labor force fully complete"
3 "Missing labor force data for person"
4 "(Not used)"
5 "Assigned if PUAGERNG = 0"
6 "Armed Forces member"
7 "Under 15 years old"
8 "Not a household member"
9 "Deleted"
10 "Deceased"
11 "End of list"
12 "After end of list"
;
capture label define labelpuretot
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
3 "Was not retired last month"
;
capture label define labelpurkat1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
capture label define labelpurkat2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "At this current address"
2 "Louisiana (but not at this address)"
3 "Mississippi (but not at this address)"
4 "Alabama (but not at this address)"
5 "Florida (but not at this address)"
6 "Elsewhere in the United States"
;
capture label define labelpuslfprx
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Self"
2 "Proxy"
3 "Both self and proxy"
;
capture label define labelpuwk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
3 "Retired"
4 "Disabled"
5 "Unable to work"
;
capture label define labelpxabspdo
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxabsrsn
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxafnow
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxage
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxcyc
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxdipged
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxdw4wk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxdwavl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxdwavr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxdwlko
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxdwlkwk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxdwrsn
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxdwwk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxdwwnto
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxeduca
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxern
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxerncov
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxernh1o
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxernh2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxernhro
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxernhry
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxernlab
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxernper
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxernrt
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxernuot
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxernwkp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxfntvty
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxgr6cor
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxgrprof
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhgcomp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhract1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhract2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhractt
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhravl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhrftpt
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhrrsn1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhrrsn2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhrrsn3
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhrusl1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhrusl2
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhruslt
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhrwant
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxhspnon
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
10 "Value To Value"
11 "Blank To Value"
12 "Don`t Know To Value"
13 "Refused To Value"
20 "Value To Longitudinal Value"
21 "Blank To Longitudinal Value"
22 "Don`t Know To Longitudinal Value"
23 "Refused To Longitudinal Value"
30 "Value To Allocated Value Long"
31 "Blank To Allocated Value Long"
32 "Don`t Know To Allocated Value Long"
33 "Refused To Allocated Value Long"
40 "Value To Allocated Value"
41 "Blank To Allocated Value"
42 "Don`t Know To Allocated Value"
43 "Refused To Allocated Value"
50 "Value To Blank"
52 "Don`t Know To Blank"
53 "Refused To Blank"
;
capture label define labelpxinusyr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxio1cow
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxio1icd
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxio1ocd
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxio2cow
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxio2icd
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxio2ocd
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxjhrsn
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxjhwant
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxjhwko
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlayavl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlaydur
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlayfto
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlaylk
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlkavl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlkdur
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlkfto
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlkll1o
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlkll2o
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlklwo
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxlkm1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxmaritl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxmjnum
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxmjot
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxmlr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxmntvty
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxms123
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxnatvty
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxnlfact
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxnlfjh
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxnlfret
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxparent
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxrace1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Dont Know  No Change"
03 "Refused - No Change"
10 "Value To Value"
11 "Blank To Value"
12 "Don`t Know To Value"
13 "Refused To Value"
20 "Value To Longitudinal Value"
21 "Blank To Longitudinal Value"
22 "Don`t Know To Longitudinal Value"
23 "Refused To Longitudinal Value"
30 "Value To Allocated Value Long"
31 "Blank To Allocated Value Long"
32 "Don`t Know To Allocated Value Long."
33 "Refused To Allocated Value Long"
40 "Value To Allocated Value"
41 "Blank To Allocated Value"
42 "Dont Know To Allocated Value"
43 "Refused To Allocated Value"
50 "Value To Blank"
52 "Don`t Know To Blank"
53 "Refused To Blank"
;
capture label define labelpxret1
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxrrp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxschenr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxschft
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxschlvl
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxsex
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labelpxspouse
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
00 "Value - No Change"
01 "Blank - No Change"
02 "Don`t Know - No Change"
03 "Refused - No Change"
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
capture label define labeltratusr
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Did not respond to ATUS"
1 "Responded to ATUS"
;
 
label values gereg   labelgereg;
label values gtmetsta   labelgtmetsta;
label values hehousut   labelhehousut;
label values hephoneo   labelhephoneo;
label values hetelavl   labelhetelavl;
label values hetelhhd   labelhetelhhd;
label values hetenure   labelhetenure;
label values hrhtype   labelhrhtype;
label values hrintsta   labelhrintsta;
label values hrlonglk   labelhrlonglk;
label values hrmis   labelhrmis;
label values hubus   labelhubus;
label values hufaminc   labelhufaminc;
label values hufinal   labelhufinal;
label values huinttyp   labelhuinttyp;
label values hurhhscrn   labelhurhhscrn;
label values huspnish   labelhuspnish;
label values hutypb   labelhutypb;
label values hxhousut   labelhxhousut;
label values hxphoneo   labelhxphoneo;
label values hxtelavl   labelhxtelavl;
label values hxtelhhd   labelhxtelhhd;
label values peabspdo   labelpeabspdo;
label values peabsrsn   labelpeabsrsn;
label values peafever   labelpeafever;
label values peafnow   labelpeafnow;
label values peafwhn1   labelpeafwhn1;
label values peafwhn2   labelpeafwhn2;
label values peafwhn3   labelpeafwhn3;
label values peafwhn4   labelpeafwhn4;
label values pecyc   labelpecyc;
label values pedipged   labelpedipged;
label values pedw4wk   labelpedw4wk;
label values pedwavl   labelpedwavl;
label values pedwavr   labelpedwavr;
label values pedwlko   labelpedwlko;
label values pedwlkwk   labelpedwlkwk;
label values pedwrsn   labelpedwrsn;
label values pedwwk   labelpedwwk;
label values pedwwnto   labelpedwwnto;
label values peeduca   labelpeeduca;
label values peerncov   labelpeerncov;
label values peernhry   labelpeernhry;
label values peernlab   labelpeernlab;
label values peernper   labelpeernper;
label values peernrt   labelpeernrt;
label values peernuot   labelpeernuot;
/*
label values pefntvty   labelpefntvty;
*/
label values pegr6cor   labelpegr6cor;
label values pegrprof   labelpegrprof;
label values pehgcomp   labelpehgcomp;
label values pehravl   labelpehravl;
label values pehrftpt   labelpehrftpt;
label values pehrrsn1   labelpehrrsn1;
label values pehrrsn2   labelpehrrsn2;
label values pehrrsn3   labelpehrrsn3;
label values pehrwant   labelpehrwant;
label values pehspnon   labelpehspnon;
label values peio1cow   labelpeio1cow;
label values peio2cow   labelpeio2cow;
label values pejhrsn   labelpejhrsn;
label values pejhwant   labelpejhwant;
label values pejhwko   labelpejhwko;
label values pelayavl   labelpelayavl;
label values pelayfto   labelpelayfto;
label values pelaylk   labelpelaylk;
label values pelkavl   labelpelkavl;
label values pelkfto   labelpelkfto;
label values pelkll1o   labelpelkll1o;
label values pelkll2o   labelpelkll2o;
label values pelklwo   labelpelklwo;
label values pelkm1   labelpelkm1;
label values pemaritl   labelpemaritl;
label values pemjnum   labelpemjnum;
label values pemjot   labelpemjot;
label values pemlr   labelpemlr;
/*
label values pemntvty   labelpemntvty;
*/
label values pems123   labelpems123;
/*
label values penatvty   labelpenatvty;
*/
label values penlfact   labelpenlfact;
label values penlfjh   labelpenlfjh;
label values penlfret   labelpenlfret;
label values peret1   labelperet1;
label values perrp   labelperrp;
label values peschenr   labelpeschenr;
label values peschft   labelpeschft;
label values peschlvl   labelpeschlvl;
label values pesex   labelpesex;
label values prabsrea   labelprabsrea;
label values pragna   labelpragna;
label values prcitflg   labelprcitflg;
label values prcitshp   labelprcitshp;
label values prcivlf   labelprcivlf;
label values prcow1   labelprcow1;
label values prcow2   labelprcow2;
label values prcowpg   labelprcowpg;
label values prdisc   labelprdisc;
label values prdtcow1   labelprdtcow1;
label values prdtcow2   labelprdtcow2;
label values prdthsp   labelprdthsp;
label values prdtind1   labelprdtind1;
label values prdtind2   labelprdtind2;
label values prdtocc1   labelprdtocc1;
label values prdtocc2   labelprdtocc2;
label values premp   labelpremp;
label values premphrs   labelpremphrs;
label values prempnot   labelprempnot;
label values prerelg   labelprerelg;
label values prexplf   labelprexplf;
label values prfamnum   labelprfamnum;
label values prfamrel   labelprfamrel;
label values prfamtyp   labelprfamtyp;
label values prftlf   labelprftlf;
label values prhernal   labelprhernal;
label values prhrusl   labelprhrusl;
label values primind1   labelprimind1;
label values primind2   labelprimind2;
label values prinuyer   labelprinuyer;
label values prioelg   labelprioelg;
label values prjobsea   labelprjobsea;
label values prmarsta   labelprmarsta;
label values prmjind1   labelprmjind1;
label values prmjind2   labelprmjind2;
label values prmjocc1   labelprmjocc1;
label values prmjocc2   labelprmjocc2;
label values prmjocgr   labelprmjocgr;
label values prnagpws   labelprnagpws;
label values prnagws   labelprnagws;
label values prnlfsch   labelprnlfsch;
label values prnmchld   labelprnmchld;
label values prpertyp   labelprpertyp;
label values prpthrs   labelprpthrs;
label values prptrea   labelprptrea;
label values prsjmj   labelprsjmj;
label values prtfage   labelprtfage;
label values pruntype   labelpruntype;
label values prwernal   labelprwernal;
label values prwksch   labelprwksch;
label values prwkstat   labelprwkstat;
label values prwntjob   labelprwntjob;
label values ptdtrace   labelptdtrace;
label values pthr   labelpthr;
label values ptot   labelptot;
label values ptwk   labelptwk;
label values puabsot   labelpuabsot;
label values pubus1   labelpubus1;
label values pubus2ot   labelpubus2ot;
label values pubusck1   labelpubusck1;
label values pubusck2   labelpubusck2;
label values pubusck3   labelpubusck3;
label values pubusck4   labelpubusck4;
label values puchinhh   labelpuchinhh;
label values pudis   labelpudis;
label values pudis1   labelpudis1;
label values pudis2   labelpudis2;
label values pudwck1   labelpudwck1;
label values pudwck2   labelpudwck2;
label values pudwck3   labelpudwck3;
label values pudwck4   labelpudwck4;
label values pudwck5   labelpudwck5;
label values puhrck1   labelpuhrck1;
label values puhrck12   labelpuhrck12;
label values puhrck2   labelpuhrck2;
label values puhrck3   labelpuhrck3;
label values puhrck4   labelpuhrck4;
label values puhrck5   labelpuhrck5;
label values puhrck6   labelpuhrck6;
label values puhrck7   labelpuhrck7;
label values puhroff1   labelpuhroff1;
label values puhrot1   labelpuhrot1;
label values puio1mfg   labelpuio1mfg;
label values puio2mfg   labelpuio2mfg;
label values puiock1   labelpuiock1;
label values puiock2   labelpuiock2;
label values puiock3   labelpuiock3;
label values puiodp1   labelpuiodp1;
label values puiodp2   labelpuiodp2;
label values puiodp3   labelpuiodp3;
label values pujhck1   labelpujhck1;
label values pujhck2   labelpujhck2;
label values pujhck3   labelpujhck3;
label values pujhck4   labelpujhck4;
label values pujhck5   labelpujhck5;
label values pujhdp1o   labelpujhdp1o;
label values pulay   labelpulay;
label values pulay6m   labelpulay6m;
label values pulayavr   labelpulayavr;
label values pulayck1   labelpulayck1;
label values pulayck2   labelpulayck2;
label values pulayck3   labelpulayck3;
label values pulaydt   labelpulaydt;
label values pulk   labelpulk;
label values pulkavr   labelpulkavr;
label values pulkdk1   labelpulkdk1;
label values pulkdk2   labelpulkdk2;
label values pulkdk3   labelpulkdk3;
label values pulkdk4   labelpulkdk4;
label values pulkdk5   labelpulkdk5;
label values pulkdk6   labelpulkdk6;
label values pulkm2   labelpulkm2;
label values pulkm3   labelpulkm3;
label values pulkm4   labelpulkm4;
label values pulkm5   labelpulkm5;
label values pulkm6   labelpulkm6;
label values pulkps1   labelpulkps1;
label values pulkps2   labelpulkps2;
label values pulkps3   labelpulkps3;
label values pulkps4   labelpulkps4;
label values pulkps5   labelpulkps5;
label values pulkps6   labelpulkps6;
label values punlfck1   labelpunlfck1;
label values punlfck2   labelpunlfck2;
label values pupelig   labelpupelig;
label values puretot   labelpuretot;
label values purkat1   labelpurkat1;
label values purkat2   labelpurkat2;
label values puslfprx   labelpuslfprx;
label values puwk   labelpuwk;
label values pxabspdo   labelpxabspdo;
label values pxabsrsn   labelpxabsrsn;
label values pxafnow   labelpxafnow;
label values pxage   labelpxage;
label values pxcyc   labelpxcyc;
label values pxdipged   labelpxdipged;
label values pxdw4wk   labelpxdw4wk;
label values pxdwavl   labelpxdwavl;
label values pxdwavr   labelpxdwavr;
label values pxdwlko   labelpxdwlko;
label values pxdwlkwk   labelpxdwlkwk;
label values pxdwrsn   labelpxdwrsn;
label values pxdwwk   labelpxdwwk;
label values pxdwwnto   labelpxdwwnto;
label values pxeduca   labelpxeduca;
label values pxern   labelpxern;
label values pxerncov   labelpxerncov;
label values pxernh1o   labelpxernh1o;
label values pxernh2   labelpxernh2;
label values pxernhro   labelpxernhro;
label values pxernhry   labelpxernhry;
label values pxernlab   labelpxernlab;
label values pxernper   labelpxernper;
label values pxernrt   labelpxernrt;
label values pxernuot   labelpxernuot;
label values pxernwkp   labelpxernwkp;
label values pxfntvty   labelpxfntvty;
label values pxgr6cor   labelpxgr6cor;
label values pxgrprof   labelpxgrprof;
label values pxhgcomp   labelpxhgcomp;
label values pxhract1   labelpxhract1;
label values pxhract2   labelpxhract2;
label values pxhractt   labelpxhractt;
label values pxhravl   labelpxhravl;
label values pxhrftpt   labelpxhrftpt;
label values pxhrrsn1   labelpxhrrsn1;
label values pxhrrsn2   labelpxhrrsn2;
label values pxhrrsn3   labelpxhrrsn3;
label values pxhrusl1   labelpxhrusl1;
label values pxhrusl2   labelpxhrusl2;
label values pxhruslt   labelpxhruslt;
label values pxhrwant   labelpxhrwant;
label values pxhspnon   labelpxhspnon;
label values pxinusyr   labelpxinusyr;
label values pxio1cow   labelpxio1cow;
label values pxio1icd   labelpxio1icd;
label values pxio1ocd   labelpxio1ocd;
label values pxio2cow   labelpxio2cow;
label values pxio2icd   labelpxio2icd;
label values pxio2ocd   labelpxio2ocd;
label values pxjhrsn   labelpxjhrsn;
label values pxjhwant   labelpxjhwant;
label values pxjhwko   labelpxjhwko;
label values pxlayavl   labelpxlayavl;
label values pxlaydur   labelpxlaydur;
label values pxlayfto   labelpxlayfto;
label values pxlaylk   labelpxlaylk;
label values pxlkavl   labelpxlkavl;
label values pxlkdur   labelpxlkdur;
label values pxlkfto   labelpxlkfto;
label values pxlkll1o   labelpxlkll1o;
label values pxlkll2o   labelpxlkll2o;
label values pxlklwo   labelpxlklwo;
label values pxlkm1   labelpxlkm1;
label values pxmaritl   labelpxmaritl;
label values pxmjnum   labelpxmjnum;
label values pxmjot   labelpxmjot;
label values pxmlr   labelpxmlr;
label values pxmntvty   labelpxmntvty;
label values pxms123   labelpxms123;
label values pxnatvty   labelpxnatvty;
label values pxnlfact   labelpxnlfact;
label values pxnlfjh   labelpxnlfjh;
label values pxnlfret   labelpxnlfret;
label values pxparent   labelpxparent;
label values pxrace1   labelpxrace1;
label values pxret1   labelpxret1;
label values pxrrp   labelpxrrp;
label values pxschenr   labelpxschenr;
label values pxschft   labelpxschft;
label values pxschlvl   labelpxschlvl;
label values pxsex   labelpxsex;
label values pxspouse   labelpxspouse;
label values tratusr   labeltratusr;



describe, short;



/* DATA TYPES : 8 means numeric, $N means char w/ length N
  TUCASEID $14
  TULINENO 8
  HUSPNISH 8
  HUFAMINC 8
  HUPRSCNT 8
  HURESPLI 8
  HUINTTYP 8
  HUHHNUM 8
  HUTYPEA 8
  HUTYPB 8
  HUTYPC 8
  HUBUS 8
  HUBUSL1 8
  HUBUSL2 8
  HUBUSL3 8
  HUBUSL4 8
  PULINENO 8
  PUAFEVER 8
  PUPELIG 8
  PUCHINHH 8
  PUSLFPRX 8
  PUABSOT 8
  PUBUS2OT 8
  PUERN2 8
  PUJHDP1O 8
  PURETOT 8
  PUWK 8
  PUBUSCK1 8
  PUBUS1 8
  PUBUSCK2 8
  PUDIS 8
  PUDIS1 8
  PUDIS2 8
  PUBUSCK3 8
  PULAY 8
  PUBUSCK4 8
  PUHRCK1 8
  PUHRCK2 8
  PUHRCK3 8
  PUHRCK4 8
  PUHROFF1 8
  PUHROFF2 8
  PUHROT1 8
  PUHROT2 8
  PUHRCK5 8
  PUHRCK6 8
  PUHRCK7 8
  PUHRCK12 8
  PULAYDT 8
  PULAY6M 8
  PULAYAVR 8
  PULAYCK1 8
  PULAYCK2 8
  PULAYCK3 8
  PULK 8
  PULKM2 8
  PULKM3 8
  PULKM4 8
  PULKM5 8
  PULKM6 8
  PULKDK1 8
  PULKDK2 8
  PULKDK3 8
  PULKDK4 8
  PULKDK5 8
  PULKDK6 8
  PULKPS1 8
  PULKPS2 8
  PULKPS3 8
  PULKPS4 8
  PULKPS5 8
  PULKPS6 8
  PULKAVR 8
  PUDWCK1 8
  PUDWCK2 8
  PUDWCK3 8
  PUDWCK4 8
  PUDWCK5 8
  PUJHCK1 8
  PUJHCK2 8
  PUJHCK3 8
  PUJHCK4 8
  PUJHCK5 8
  PUIOCK1 8
  PUIODP1 8
  PUIOCK2 8
  PUIODP2 8
  PUIOCK3 8
  PUIODP3 8
  PUERNH1C 8
  PUNLFCK1 8
  PUNLFCK2 8
  HEHOUSUT 8
  HEPHONEO 8
  HETELAVL 8
  HETELHHD 8
  GESTCEN 8
  GESTFIPS 8
  GEREG 8
  PEABSPDO 8
  PEABSRSN 8
  PEAFNOW 8
  PEAFWHEN 8
  PECYC 8
  PEDIPGED 8
  PEDW4WK 8
  PEDWAVL 8
  PEDWAVR 8
  PEDWLKO 8
  PEDWLKWK 8
  PEDWRSN 8
  PEDWWK 8
  PEDWWNTO 8
  PEEDUCA 8
  PEERN 8
  PEERNCOV 8
  PEERNH2 8
  PEERNH1O 8
  PEERNHRO 8
  PEERNHRY 8
  PEERNLAB 8
  PEERNPER 8
  PEERNRT 8
  PEERNUOT 8
  PEERNWKP 8
  PEFNTVTY 8
  PEGR6COR 8
  PEGRPROF 8
  PEHGCOMP 8
  PEHRACT1 8
  PEHRACT2 8
  PEHRACTT 8
  PEHRAVL 8
  PEHRFTPT 8
  PEHRRSN1 8
  PEHRRSN2 8
  PEHRRSN3 8
  PEHRUSL1 8
  PEHRUSL2 8
  PEHRUSLT 8
  PEHRWANT 8
  PEIO1COW 8
  PEIO1ICD 8
  PEIO1OCD 8
  PEIO2COW 8
  PEIO2ICD 8
  PEIO2OCD 8
  PEJHRSN 8
  PEJHWANT 8
  PEJHWKO 8
  PELAYAVL 8
  PELAYDUR 8
  PELAYFTO 8
  PELAYLK 8
  PELKAVL 8
  PELKDUR 8
  PELKFTO 8
  PELKLL1O 8
  PELKLL2O 8
  PELKLWO 8
  PELKM1 8
  PEMARITL 8
  PEMJNUM 8
  PEMJOT 8
  PEMLR 8
  PEMNTVTY 8
  PEMS123 8
  PENATVTY 8
  PENLFACT 8
  PENLFJH 8
  PENLFRET 8
  PEPARENT 8
  PERET1 8
  PERRP 8
  PESCHENR 8
  PESCHFT 8
  PESCHLVL 8
  PESEX 8
  PESPOUSE 8
  HRSAMPLE $4
  HRSERSUF $1
  HRMIS 8
  HRMONTH 8
  HRYEAR4 8
  HRLONGLK 8
  HRHTYPE 8
  HRINTSTA 8
  HRNUMHOU 8
  PRABSREA 8
  PRAGNA 8
  PRCHLD 8
  PRCITFLG 8
  PRCITSHP 8
  PRCIVLF 8
  PRCOW1 8
  PRCOW2 8
  PRCOWPG 8
  PRDISC 8
  PRDTCOW1 8
  PRDTCOW2 8
  PRDTIND1 8
  PRDTIND2 8
  PRDTOCC1 8
  PRDTOCC2 8
  PREMP 8
  PREMPHRS 8
  PREMPNOT 8
  PRERELG 8
  PRERNHLY 8
  PRERNWA 8
  PREXPLF 8
  PRFAMNUM 8
  PRFAMREL 8
  PRFAMTYP 8
  PRFTLF 8
  PRHERNAL 8
  PRHRUSL 8
  PRIOELG 8
  PRJOBSEA 8
  PRMARSTA 8
  PRMJIND1 8
  PRMJIND2 8
  PRMJOCC1 8
  PRMJOCC2 8
  PRMJOCGR 8
  PRNAGPWS 8
  PRNAGWS 8
  PRNLFSCH 8
  PRNMCHLD 8
  PROLDRRP 8
  PRPERTYP 8
  PRPTHRS 8
  PRPTREA 8
  PRSJMJ 8
  PRTAGE 8
  PRTFAGE 8
  PRUNEDUR 8
  PRUNTYPE 8
  PRWERNAL 8
  PRWKSCH 8
  PRWKSTAT 8
  PRWNTJOB 8
  HXHOUSUT 8
  HXPHONEO 8
  HXTELAVL 8
  HXTELHHD 8
  PXABSPDO 8
  PXABSRSN 8
  PXAFNOW 8
  PXAFWHEN 8
  PXAGE 8
  PXCYC 8
  PXDIPGED 8
  PXDW4WK 8
  PXDWAVL 8
  PXDWAVR 8
  PXDWLKO 8
  PXDWLKWK 8
  PXDWRSN 8
  PXDWWK 8
  PXDWWNTO 8
  PXEDUCA 8
  PXERN 8
  PXERNCOV 8
  PXERNH2 8
  PXERNH1O 8
  PXERNHRO 8
  PXERNHRY 8
  PXERNLAB 8
  PXERNPER 8
  PXERNRT 8
  PXERNUOT 8
  PXERNWKP 8
  PXFNTVTY 8
  PXGR6COR 8
  PXGRPROF 8
  PXHGCOMP 8
  PXHRACT1 8
  PXHRACT2 8
  PXHRACTT 8
  PXHRAVL 8
  PXHRFTPT 8
  PXHRRSN1 8
  PXHRRSN2 8
  PXHRRSN3 8
  PXHRUSL1 8
  PXHRUSL2 8
  PXHRUSLT 8
  PXHRWANT 8
  PXINUSYR 8
  PXIO1COW 8
  PXIO1ICD 8
  PXIO1OCD 8
  PXIO2COW 8
  PXIO2ICD 8
  PXIO2OCD 8
  PXJHRSN 8
  PXJHWANT 8
  PXJHWKO 8
  PXLAYAVL 8
  PXLAYDUR 8
  PXLAYFTO 8
  PXLAYLK 8
  PXLKAVL 8
  PXLKDUR 8
  PXLKFTO 8
  PXLKLL1O 8
  PXLKLL2O 8
  PXLKLWO 8
  PXLKM1 8
  PXMARITL 8
  PXMJNUM 8
  PXMJOT 8
  PXMLR 8
  PXMNTVTY 8
  PXMS123 8
  PXNATVTY 8
  PXNLFACT 8
  PXNLFJH 8
  PXNLFRET 8
  PXPARENT 8
  PXRET1 8
  PXRRP 8
  PXSCHENR 8
  PXSCHFT 8
  PXSCHLVL 8
  PXSEX 8
  PXSPOUSE 8
  HWHHWGT 8
  PWSSWGT 8
  PWLGWGT 8
  PWVETWGT 8
  PWORWGT 8
  PWFMWGT 8
  PWCMPWGT 8
  OCCURNUM 8
  PEHSPNON 8
  PTDTRACE 8
  TXNEWRACE 8
  PXRACE1 8
  HRHHID 8
  HUFINAL 8
  GEMETSTA 8
  PRDTHSP 8
  PRINUYER 8
  PUIO1MFG 8
  PUIO2MFG 8
  PTHR 8
  PTWK 8
  PTOT 8
  PXHSPNON 8
  QSTNUM 8
  PRIMIND1 8
  PRIMIND2 8
  GEPSEUST 8
  GEPSEUCL 8
*/

save "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\2006\Basic Transformed Data Files\atuscps_2006.dta" ;
