
clear all
clear matrix
set mem 800m
set more off

cd "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\Results-Aggregate-Trends"

use all_atus_qtr
drop if age>65 | age<18 | unclassified_paper>0
reg work_paper if (year==2019 & qtr==1) [aw=weight_adj], robust
reg work_paper if (year==2020 & qtr==1) [aw=weight_adj], robust
clear all

use all_atus_qtr
drop if age>65 | age<18 | unclassified_paper>0 | male==0
reg work_paper if (year==2019 & qtr==1) [aw=weight_adj], robust
reg work_paper if (year==2020 & qtr==1) [aw=weight_adj], robust
clear all

use all_atus_qtr
drop if age>65 | age<18 | unclassified_paper>0 | male==1
reg work_paper if (year==2019 & qtr==1) [aw=weight_adj], robust
reg work_paper if (year==2020 & qtr==1) [aw=weight_adj], robust
clear all

/*
drop if age>65 | age<18 | unclassified_paper>0
reg work_paper if (year==2003 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2004 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2005 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2006 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2007 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2008 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2009 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2010 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2011 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2012 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2013 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2014 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2015 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2016 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2017 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2018 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2019 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2020 & qtr==4) [aw=weight_adj], robust
clear all

use all_atus_qtr
drop if age>65 | age<18 | unclassified_paper>0 | male==0
reg work_paper if (year==2003 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2004 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2005 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2006 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2007 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2008 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2009 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2010 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2011 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2012 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2013 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2014 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2015 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2016 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2017 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2018 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2019 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2020 & qtr==4) [aw=weight_adj], robust
clear all


use all_atus_qtr
drop if age>65 | age<18 | unclassified_paper>0 | male==1
reg work_paper if (year==2003 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2004 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2005 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2006 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2007 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2008 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2009 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2010 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2011 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2012 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2013 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2014 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2015 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2016 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2017 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2018 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2019 & qtr==4) [aw=weight_adj], robust
reg work_paper if (year==2020 & qtr==4) [aw=weight_adj], robust
clear all

/*Table 1, Column 3 2017-2019; 
use all_atus_qtr;
drop if age>65 | age<18 | unclassified_paper>0 | interview_date >= td(01apr2020) | male==1;
reg work_paper if (year>=2019 & year<=2020) [aw=weight_adj], robust;
clear all;

use all_atus;
drop if age>65 | age<18 | unclassified_paper>0 | interview_date <= td(01apr2020) | male==1;
reg work_paper if (year>=2020) [aw=weight_adj], robust;
