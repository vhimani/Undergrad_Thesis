#delimit;
clear;
clear matrix;
set mem 200m;
set mat 800;

cd "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\2018\Basic-Transformed-Data-Files";

/******************/

/*Extract needed variables from cps, roster, and respondent files*/

use atuscps_2018, clear;

keep if tulineno==1; /*only keep respondent's info*/

keep peeduca tucaseid tulineno ptdtrace gestfips gereg;

sort tucaseid tulineno;

save "timeuse_2018", replace;


use atusrost_2018, clear;

keep if tulineno==1; 

keep teage tesex tucaseid tulineno;

sort tucaseid tulineno;


merge tucaseid tulineno using "timeuse_2018", unique nokeep;

tab _merge;

drop _merge; 

sort tucaseid tulineno;

save "timeuse_2018", replace;

use "atusresp_2018", clear;

keep tulk tufwk tulay tudis tuabsot teret telfs trchildnum trdpftpt trsppres tryhhchild
tucaseid tudiaryday tudiarydate tumonth tuyear tufinlwgt tulineno turetot tuyear telfs trernwa teschft teschenr tehruslt 
trernhly tespempnot tespuhrs;


sort tucaseid tulineno;


merge tucaseid tulineno using "timeuse_2018", unique nokeep;

tab _merge;

drop _merge; 

sort tucaseid tulineno;

save "timeuse_2018", replace;

use "atusact_2018", clear;

keep tucaseid tuactdur tuactdur24 tutier1code tutier2code tutier3code;

sort tucaseid;

merge tucaseid using "timeuse_2018";

tab _merge;

drop _merge; 

sort tucaseid tulineno;

save "timeuse_2018", replace;

/*************/;

use "timeuse_2018", clear;

/*interview date*/
gen long day_date=tudiarydate-floor(tudiarydate/100)*100;
gen interview_date=mdy(tumonth,day_date,tuyear);
format interview_date %td;


/*Demographics*/
gen age=teage;
gen male=tesex==1;
gen black=ptdtrace==2; /*Note:  Black only*/
gen married= trsppres==1; /*Does not include unmarried partner*/
gen num_child= trchildnum;
gen hv_child=num_child>0;
replace hv_child=. if num_child==.;
gen age_youngest=tryhhchild;
replace age_youngest=. if tryhhchild<0;
gen child_4=tryhhchild<4 & tryhhchild>=0;
gen child_5=tryhhchild<5 & tryhhchild>=0;
gen spouse_emp = tespempnot==1;
replace spouse_emp=. if tespempnot==-1 | tespempnot==.;
gen spouse_workhours=.; /*usual hours of work of spouse or unmarried partner*/
replace spouse_workhours=tespuhrs if tespuhrs>=0 & tespuhrs<=99;
gen grade=0 if peeduca==31;   
replace grade=1 if peeduca==32;
replace grade=5 if peeduca==33;
replace grade=7 if peeduca==34;
replace grade=9 if peeduca==35;
replace grade=10 if peeduca==36;
replace grade=11 if peeduca==37 | peeduca==38;
replace grade=12 if peeduca==39;
replace grade=13 if peeduca>=40 & peeduca<=42;
replace grade=16 if peeduca==43;
replace grade=17 if peeduca>=44;
replace grade=. if peeduca==.;


gen working = telfs == 1 | telfs == 2;
gen unemp = telfs == 3 | telfs == 4;
gen retired = telfs == 5 & (turetot == 1 | tulk == 3 | tufwk == 3 | tulay == 3 | tuabsot == 3) & teret1 == 2 ;
gen disabled = telfs == 5 & (tuabsot == 4 | tufwk == 4 | tulay == 4 | tulk == 4 | tudis == 1);
gen student_broad = teschenr==1; /*may  be part time student or working... make consistent with earlier years*/
gen student = teschft == 1 & working == 0 & unemp == 0; /*full time students out of labor force*/
gen homemaker = working == 0 & retired == 0 & student == 0 & disabled == 0 & unemp == 0 ; 
gen work_part = trdpftpt==2;

gen hh_income_03=trernwa/100;
replace hh_income_03=. if trernwa<0;

label var hh_income_03 "weekly earnings";

gen wage_03 = hh_income_03/tehruslt if tehruslt>0 & tehruslt<998;
gen wage_03_alt =trernhly/100;
replace wage_03_alt=. if trernhly<0;


gen year = 2018;

gen dataset=2018;

gen interview_day=tudiaryday-1;
replace interview_day=7 if tudiaryday==1;



/*Child care*/

gen child_care_basic = tuactdur24 if
(tutier1code==3 & tutier2code ==1 & tutier3code==1) | 	/* Physical care for household children */
(tutier1code==3 & tutier2code ==1 & tutier3code==8) |		/* Organization and planning for household children */
(tutier1code==3 & tutier2code ==1 & tutier3code==9) |		/* Looking after household children (as a primary activity) */
(tutier1code==3 & tutier2code ==1 & tutier3code==10)|		/* Attending household children's events */
(tutier1code==3 & tutier2code ==1 & tutier3code==11)|		/* Waiting for/with household children */
(tutier1code==3 & tutier2code ==1 & tutier3code==12)|		/* Picking up/dropping off household children */
(tutier1code==3 & tutier2code ==1 & tutier3code==99)|		/* Caring for and helping hosuehold children, nec */
(tutier1code==3 & tutier2code ==3) |				/* Activities Related to household Children's Health */
(tutier1code==4 & tutier2code ==1 & tutier3code==1) | 	/* Physical care for nonhousehold children */
(tutier1code==4 & tutier2code ==1 & tutier3code==8) |		/* Organization and planning for nonhousehold children */
(tutier1code==4 & tutier2code ==1 & tutier3code==9) |		/* Looking after nonhousehold children (as a primary activity) */
(tutier1code==4 & tutier2code ==1 & tutier3code==10)|		/* Attending nonhousehold children's events */
(tutier1code==4 & tutier2code ==1 & tutier3code==11)|		/* Waiting for/with nonhousehold children */
(tutier1code==4 & tutier2code ==1 & tutier3code==12)|		/* Picking up/dropping off nonhousehold children */
(tutier1code==4 & tutier2code ==1 & tutier3code==99)|		/* Caring for and helping nonhosuehold children, nec */
(tutier1code==4 & tutier2code ==3) |				/* Activities Related to nonhousehold Children's Health */
(tutier1code==18 & tutier2code ==3 & tutier3code==1) |	/* Travel Related to Caring For and Helping household children*/
(tutier1code==18 & tutier2code ==4 & tutier3code==1) |	/* Travel Related to Caring For and Helping nonhousehold children */
(tutier1code==18 & tutier2code ==3 & tutier3code==3) |	/* Travel Related to household children Health*/
(tutier1code==18 & tutier2code ==4 & tutier3code==3) ;	/* Travel Related to nonhousehold children Health*/




gen child_care_teach = tuactdur24 if
(tutier1code==3 & tutier2code ==1 & tutier3code==2) |		/* Reading to/with household children*/
(tutier1code==3 & tutier2code ==1 & tutier3code==6) |		/* Talking with/listening to household children */
(tutier1code==3 & tutier2code ==1 & tutier3code==7) |		/* Helping/teaching household children (not related to education) */
(tutier1code==3 & tutier2code ==2) |				/* Activities Related to household Children's Education */
(tutier1code==4 & tutier2code ==1 & tutier3code==2) |		/* Reading to/with nonhoushold children */
(tutier1code==4 & tutier2code ==1 & tutier3code==6) |		/* Talking with/listening to nonhousehold children */
(tutier1code==4 & tutier2code ==1 & tutier3code==7) |		/* Helping/teaching nonhousehold children (not related to education) */
(tutier1code==4 & tutier2code ==2) |				/* Activities Related to Nonhousehold Children's Education */
(tutier1code==18 & tutier2code ==3 & tutier3code==2) |	/* Travel Related to household children education*/
(tutier1code==18 & tutier2code ==4 & tutier3code==2);		/* Travel Related to nonhousehold children education*/


gen child_care_play =  tuactdur24 if
(tutier1code==3 & tutier2code ==1 & tutier3code==3) |		/*Playing with household children, not sports*/
(tutier1code==3 & tutier2code ==1 & tutier3code==4) |		/* Arts and crafts with household children */
(tutier1code==3 & tutier2code ==1 & tutier3code==5) |		/* Playing sports with household children */
(tutier1code==4 & tutier2code ==1 & tutier3code==3) |		/*Playing with nonhousehold children, not sports*/
(tutier1code==4 & tutier2code ==1 & tutier3code==4) |		/* Arts and crafts with nonhousehold children */
(tutier1code==4 & tutier2code ==1 & tutier3code==5); 		/* Playing sports with nonhousehold children */;




/*Eating, Sleeping, and Personal Care*/;

gen eating = tuactdur24 if
tutier1code == 11 |							/* Eating and Drinking */
(tutier1code == 18 & tutier2code ==11);				/* Travel Related to Eating and Drinking */

gen sleeping = tuactdur24 if 
tutier1code== 1 & tutier2code==1;					/* Sleeping */


gen personal_care = tuactdur24 if 
(tutier1code==1 & tutier2code~=1 & tutier2code~=3)  |		/* Personal Care minus sleeping and health*/
(tutier1code == 18 & tutier2code ==1);				/* Travel Related to Personal Care */

gen self_care = tuactdur24 if 
(tutier1code==1 & tutier2code==3) ;					/* Health-related Self Care */

gen own_medical_care = tuactdur24 if 
(tutier1code==1 & tutier2code==3) |					/* Health-related Self Care */
(tutier1code==8 & tutier2code==4) |					/* Medical Care Services */
(tutier1code==18 & tutier2code==8 & tutier3code==4);		/* Travel related to medical services */


gen other_care = tuactdur24 if
(tutier1code == 3 & tutier2code ==4) | 				/* Caring For Household Adults */
(tutier1code == 3 & tutier2code ==5) |				/* Helping Household Adults */
(tutier1code==3 & tutier2code ==99)|				/* Caring For and Helping household Members, n.e.c. */
(tutier1code == 4 & tutier2code ==4) |				/* Caring For Nonhousehold Adults */
(tutier1code == 4 & tutier2code ==5) |				/* Helping Nonhousehold Adults */
(tutier1code==4 & tutier2code ==99)|				/* Caring For and Helping nonhousehold Members, n.e.c. */
(tutier1code == 18 & tutier2code ==3 & tutier3code==4)| 	/* Travel Related to Caring For household adults */
(tutier1code == 18 & tutier2code ==3 & tutier3code==5)|	/* Travel Related to Helping household members */
(tutier1code == 18 & tutier2code ==4 & tutier3code==4)| 	/* Travel Related to Caring For nonhousehold adults */
(tutier1code == 18 & tutier2code ==4 & tutier3code==5)|	/* Travel Related to Helping nonhousehold members, nec */
(tutier1code == 18 & tutier2code ==3 & tutier3code==99)|	/* Travel Related to Caring For and Helping household members, nec */
(tutier1code == 18 & tutier2code ==4 & tutier3code==99); 	/* Travel Related to Caring For and Helping nonhousehold members, nec */



/*Home Work, Shopping, etc.*/


gen meals = tuactdur24 if 
(tutier1code == 2 & tutier2code ==2); 				/* Food and Drink Preparation, Presentation, and Clean-up */ 

gen housework = tuactdur24 if 
(tutier1code == 2 & tutier2code ==1); 				/* Housework */ 

gen home_car_maintenance = tuactdur24 if
(tutier1code == 2 & tutier2code ==3) |				/* Interior Maintenance, Repair, and Decoration */
(tutier1code == 2 & tutier2code ==4) |				/* Exterior Maintenance, Repair, and Decoration */
(tutier1code == 2 & tutier2code ==7) |				/* Vehicles */
(tutier1code == 2 & tutier2code ==8)|				/* Appliances and Tools */
(tutier1code == 18 & tutier2code ==2 & tutier3code ==4);

gen homeown_pre = tuactdur24 if
(tutier1code == 2 & tutier2code ==4) |				     /* Exterior Maintenance, Repair, and Decoration */
(tutier1code == 2 & tutier2code ==3 & tutier3code ==1)|  /* Interior Repair and Decoration */
(tutier1code == 18 & tutier2code ==2 & tutier3code ==4);

gen home_other = tuactdur24 if 
(tutier1code==2 & tutier2code==9 & tutier3~=3 & tutier3~=4)| /* Household Management except mail and email */
(tutier1code == 2 & tutier2code ==99) |				/* Household Activities, nec */
(tutier1code == 18 & tutier2code ==2 &(tutier3code~=4) &(tutier3code~=5)&tutier3code~=6);				/* Travel related to household activities */

gen garden_pet = tuactdur24 if 
(tutier1code==2 & tutier2code ==5)	|				/* Lawn, Garden, and Houseplants */
(tutier1code==2 & tutier2code ==6 )| 				/* Animals and Pets */
(tutier1code==18 & tutier2code ==2 & tutier3code==5)|
(tutier1code==18 & tutier2code ==2 & tutier3code==6);

gen garden = tuactdur24 if 
(tutier1code==2 & tutier2code ==5)|					/* Lawn, Garden, and Houseplants */
(tutier1code==18 & tutier2code ==2 & tutier3code==5);

gen pet = tuactdur24 if
(tutier1code==2 & tutier2code ==6 )| 				/* Animals and Pets */
(tutier1code==18 & tutier2code ==2 & tutier3code ==6);

gen obtaining_goods = tuactdur24 if
(tutier1code == 7) | 							/* Consumer Purchases */
(tutier1code == 8 & tutier2code~=4) |				/* Professional and Personal Care Services excluding medical */ 
(tutier1code == 9) |							/* Household Services */
tutier1code ==10 | 							/* Goverment Services and Civic Obligations*/
(tutier1code == 18 & tutier2code==7) |			 	/* Travel related to consumer purchases */
(tutier1code == 18 & tutier2code==8 & tutier3code~=4) |	/* Travel related to Professional and Personal Care Services except medical*/
(tutier1code == 18 & tutier2code==9) |				/* Travel related to household services */
(tutier1code == 18 & tutier2code ==10)  				/* Travel Related to Using Government Services and Civic Obligations */;


gen obtaining_services_alt = tuactdur24 if 
(tutier1code == 8 & tutier2code==4) |				/* Medical Care Services*/ 
(tutier1code == 10) |							/* Gov't and Civic Services */
(tutier1code == 18 & tutier2code==8 & tutier3code==4) |	/* Travel related to Medical Care Services except medical*/
(tutier1code == 18 & tutier2code==10) ;				/* Travel related to government services */




/*Market Work*/

gen work_travel = tuactdur24 if
(tutier1code == 18 & tutier2code==5 &tutier3code~=3 &tutier3code~=4);				/* Travel related to work */

gen work_related = tuactdur24 if
(tutier1code == 5 & tutier2code==2) |				/* Work-related activities */
(tutier1code == 5 & tutier2code==3) |			 	/* Other Income-generating Activities */
(tutier1code == 18 & tutier2code==5 &tutier3code==3) |
(tutier1code == 5 & tutier2code==99);				/* Work and Work-Related Activities, n.e.c. */

gen work_core = tuactdur24 if 
(tutier1code == 5 & tutier2code==1);				/* Working */


gen work_unemp = tuactdur24 if 
(tutier1code == 5 & tutier2code==4)|				/* Job Search and Interviewing */
(tutier1code == 18 & tutier2code==5 & tutier3code==4);

gen people_time_at_work = tuactdur24 if
(tutier1code ==5 & tutier2code==2 & tutier3code==1); 		/*Socializing, relaixing, and leisure as part of job*/;

gen eating_time_at_work = tuactdur24 if
(tutier1code ==5 & tutier2code==2 & tutier3code==2); 		/*Eating and drinking as part of job*/;

gen work_activities = tuactdur24 if
(tutier1code == 5 & tutier2code==3)|			 	/* Other Income-generating Activities */
(tutier1code == 18 & tutier2code==5 & tutier3code==3);

/*Education*/

gen education = tuactdur24 if 
(tutier1code == 6) |							/* Education */
(tutier1code == 18 & tutier2code==6);				/* Travel Related to Education */



/*Civic*/;
gen civic = tuactdur24 if
tutier1code ==14 |							/* Religious and Spiritual Activities*/
tutier1code ==15 |							/* Volunteer Activities */
(tutier1code == 18 & tutier2code ==14) | 				/* Travel Related to Religious/Spiritual Activities */
(tutier1code == 18 & tutier2code ==15);				/* Travel Related to Volunteer Activities */

/*Leisure*/

gen exercise_sports = tuactdur24 if
(tutier1code == 13) |							/* Sports, Exercise, and Recreation */
(tutier1code == 18 & tutier2code==13);				/* Travel Related to Sports, Exercise, and Recreation */

gen tv = tuactdur24 if
(tutier1code == 12 & tutier2code == 3 & tutier3code == 3) |	/* Television and movies (not religious) */
(tutier1code == 12 & tutier2code == 3 & tutier3code == 4);	/* Television (religious) */

gen email= tuactdur if 
(tutier1code==2 & tutier2code ==9 & tutier3code==3 ) |	/* Household and personal mail */
(tutier1code==2 & tutier2code ==9 & tutier3code==4 ) 		/* Household and personal email */;

gen socializing= tuactdur24 if
(tutier1code==12 & tutier2code ==1) |	/* Socializing and Communicating */
(tutier1code==12 & tutier2code ==2) |	/* Attending or Hosting Social Events*/
(tutier1code==12 & tutier2code ==3 & tutier3code==07) |	/* Playing games  */
(tutier1code==12 & tutier2code ==5 & tutier3code==01) |	/* Waiting Associated with Socializing and Communicating  */
(tutier1code==12 & tutier2code ==5 & tutier3code==02) |	/* Waiting Associated with Attending or Hosting Social Events  */
tutier1code==16 	|							/* Telephone Calls */
(tutier1code==18 & tutier2code ==12 & tutier3code==01) |	/* Travel Related to Socializing and Communicating  */
(tutier1code==18 & tutier2code ==12 & tutier3code==02) |	/* Travel Related to Attending or Hosting Social Events  */
(tutier1code==18 & tutier2code ==16) ; 				/* Travel related to telephone calls */

gen reading = tuactdur24 if
(tutier1code==12 & tutier2code ==3 & tutier3code==12) |	/* Reading for personal interest */
(tutier1code==2 & tutier2code ==9 & tutier3code==3 ) |	/* Household and personal mail */
(tutier1code==2 & tutier2code ==9 & tutier3code==4 );  	/* Household and personal email */;

gen ent_not_tv = tuactdur24 if 
(tutier1code==12 & tutier2code ==3 & tutier3code==05 ) |	/* Listening to the radio */
(tutier1code==12 & tutier2code ==3 & tutier3code==06 ) |	/* Listening to/playing music (not radio) */
(tutier1code==12 & tutier2code ==3 & tutier3code==8 ) |	/* Computer use for leisure (not games) */
(tutier1code==12 & tutier2code ==4 ) |				/* Arts and Entertainment (other than Sports) */
(tutier1code==12 & tutier2code ==5 & tutier3code==04) ;	/* Waiting Associated with Arts and Entertainment  */

gen hobbies= tuactdur24 if
(tutier1code==12 & tutier2code ==3 & tutier3code==09 ) |	/* Arts and crafts as a hobby */
(tutier1code==12 & tutier2code ==3 & tutier3code==10 ) |	/* Collecting as a hobby */
(tutier1code==12 & tutier2code ==3 & tutier3code==11 ) |	/* Hobbies, except arts and crafts and collecting */
(tutier1code==12 & tutier2code ==3 & tutier3code==13) ;	/* Writing for personal interest */



gen leisure_0 = tuactdur24 if
(tutier1code==2 & tutier2code ==5)	|				/* Lawn, Garden, and Houseplants */
(tutier1code==2 & tutier2code ==6 ) | 				/* Animals and Pets */
(tutier1code==18 & tutier2code ==2 & tutier3code==5)|
(tutier1code==18 & tutier2code ==2 & tutier3code==6)|
tutier1code ==12 	|							/* Socializing, Relaxing, and Leisure */
tutier1code==13	|							/* Sports, Exercise, and Recreation */
tutier1code==16 	|							/* Telephone Calls */
(tutier1code==18 & tutier2code ==12) | 				/* Travel related to socializing, relaxing, and leisure */
(tutier1code==18 & tutier2code ==13) | 				/* Travel related to sports, exercise, and recreation */
(tutier1code==18 & tutier2code ==16) | 				/* Travel related to telephone calls */
(tutier1code==2 & tutier2code ==9 & tutier3code==3 ) |	/* Household and personal mail */
(tutier1code==2 & tutier2code ==9 & tutier3code==4 );  	/* Household and personal email */;


gen other = tuactdur24 if 
(tutier1code ==50) |							/* Unable to Code */
(tutier1code==18 & tutier2code ==18 ) |				/* Security procedures related to travelling */
(tutier1code ==18 & tutier2code==99);				/* Traveling, n.e.c. */


collapse (mean) age male black married num_child hv_child age_youngest child_4 child_5 grade spouse_emp spouse_workhours working unemp retired disabled student 
homemaker work_part hh_income wage_03 wage_03_alt year dataset interview_day interview_date tufinlwgt  gestfips gereg
(sum) child_care_basic child_care_teach child_care_play
civic
eating sleeping personal_care self_care own_medical_care other_care 
meals housework home_car_maintenance home_other obtaining_goods obtaining_services_alt 
work_travel work_related work_core work_unemp work_activities pet garden homeown_pre people_time_at_work eating_time_at_work
education
exercise_sports tv socializing  reading ent_not_tv  hobbies 
garden_pet email leisure_0
other, by(tucaseid);


gen weight=tufinlwgt;
/*Note:  days of week are not equally represented in weight.  ATUS adjusts so that
days of week reflect frequency within the month of interview*/
tab interview_day [aw=weight], matcell(freq);
matrix define Sum=trace(diag(freq));
scalar define F=Sum[1,1];
matrix define Freq=freq/F;
gen dywt = .;
foreach day of numlist 1/7 {;
replace dywt = 1/7 * 1/Freq[`day',1] if interview_day==`day';
};

gen daywt=weight*dywt; 
sum daywt;
gen weight_adj = daywt/(r(N)*r(mean)); /*adjusted so sum of weights is one to conform with other years*/


gen identifier=tucaseid;
drop tucaseid;
gen child_care_full = child_care_basic+child_care_teach+child_care_play;
gen esp=eating+sleeping+personal_care;
gen home_production = meals+housework+home_car_maintenance+home_other+garden_pet;
gen nonmarket_work=home_production+obtaining_goods;
gen work = work_core+work_travel + work_related+work_unemp;
gen leisure_1 = leisure_0;
gen leisure_2 = leisure_1+esp;
gen leisure_3 = leisure_2+child_care_play+child_care_basic + child_care_teach;


gen total_time = leisure_3   + nonmarket_work + work+education +own_medical_care+other_care+other+civic-garden_pet;

gen full_day =  total_time == 1440;

tab full_day;


#delimit ;

keep age male black married num_child hv_child age_youngest child_4 child_5 grade spouse_emp spouse_workhours
working homemaker student unemp retired disabled work_part 
hh_income_03 wage_03 wage_03_alt
year interview_day interview_date weight daywt weight_adj identifier
child_care_basic child_care_teach child_care_play child_care_full civic
eating sleeping personal_care self_care own_medical_care other_care esp 
meals housework home_car_maintenance home_other home_production obtaining_goods nonmarket_work 
work_travel work_related work_core work_unemp work_activities pet garden homeown_pre work education people_time_at_work eating_time_at_work
exercise_sports tv socializing  reading ent_not_tv  hobbies 
garden_pet leisure_0 leisure_1 leisure_2 leisure_3
total_time full_day dataset other gestfips gereg;


/*Convert to hours per week*/;

foreach var of varlist child_care_basic child_care_teach child_care_play child_care_full civic
eating sleeping personal_care self_care own_medical_care other_care esp 
meals housework home_car_maintenance home_other home_production obtaining_goods nonmarket_work 
work_travel work_related work_core work_unemp work_activities pet garden homeown_pre work education people_time_at_work eating_time_at_work
exercise_sports tv socializing  reading ent_not_tv  hobbies 
garden_pet leisure_0 leisure_1 leisure_2 leisure_3 other {;

replace `var'=`var'/60*7;
};

gen total_work_core=work_core+nonmarket_work;
gen total_work=work+nonmarket_work;




/*********************************************/
/*********************************************/
/*********************************************/
/*********************************************/
/*********************************************/
/*********************************************/
/*HERE ARE THE TIME USE CATEGORIES CONSIDERED IN THE PAPER*/

gen work_paper = work-work_unemp-work_activities;

gen worka_paper = work_activities;

gen worku_paper = work_unemp;

gen leisure_paper = leisure_2-garden_pet+pet;
gen esp_paper = esp;
gen sleeping_paper=sleeping;
gen ep_paper=esp_paper-sleeping;
gen tv_paper = tv;
gen socializing_paper=socializing;
gen otherleisure_paper = leisure_paper-sleeping_paper-ep_paper-tv_paper-socializing_paper;
gen pet_paper=pet;

gen shopping_paper = obtaining_goods;
gen othercare_paper = other_care;
gen homeown_paper = homeown_pre + garden;
gen garden_paper = garden;
gen homeproduction_paper = home_production-garden_pet-homeown_pre;
gen home_paper = homeproduction_paper+shopping_paper+othercare_paper+homeown_paper;

gen childcare_paper=child_care_full;

gen other_paper = education+civic+other+own_medical;
gen education_paper = education;
gen civic_paper = civic;
gen ownmedical_paper=own_medical;
gen unclassified_paper=other;

gen twoyear=1;
replace twoyear=2 if (year==2006|year==2007|year==2008);
replace twoyear=3 if (year==2009|year==2010);
replace twoyear=4 if (year==2011|year==2012|year==2013);
replace twoyear=5 if (year==2014|year==2015|year==2016);
replace twoyear=6 if (year==2017|year==2018|year==2019);
replace twoyear=7 if (year==2020);

gen division=1;
replace division=2 if (gestfips==34|gestfips==36|gestfips==42);
replace division=3 if (gestfips==18|gestfips==17|gestfips==26|gestfips==39|gestfips==55);
replace division=4 if (gestfips==19|gestfips==20|gestfips==27|gestfips==29|gestfips==31|gestfips==38|gestfips==46);
replace division=5 if (gestfips==10|gestfips==11|gestfips==12|gestfips==13|gestfips==24|gestfips==37|gestfips==45|gestfips==51|gestfips==54);
replace division=6 if (gestfips==1|gestfips==21|gestfips==28|gestfips==47);
replace division=7 if (gestfips==5|gestfips==22|gestfips==40|gestfips==48);
replace division=8 if (gestfips==4|gestfips==8|gestfips==16|gestfips==35|gestfips==30|gestfips==49|gestfips==32|gestfips==56);
replace division=9 if (gestfips==2|gestfips==6|gestfips==15|gestfips==41|gestfips==53);
gen dummyrecession=1;
replace dummyrecession=0 if (year>=2003 & year<=2008);


save "18_subset", replace;

save "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\ALL\18_subset.dta", replace;
