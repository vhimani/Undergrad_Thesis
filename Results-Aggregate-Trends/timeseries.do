# delimit ;

clear all;
clear matrix;
set mem 800m;
set more off;



cd "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\Results-Aggregate-Trends";
 
*Table 1, Column 1 ; 
use all_data;
drop if age>65 | age<18 ;
reg work_paper if (time==12019) [aw=weight_adj], robust;
reg work_paper if (time==22019) [aw=weight_adj], robust;
reg work_paper if (time==32019) [aw=weight_adj], robust;
reg work_paper if (time==42019) [aw=weight_adj], robust;
reg work_paper if (time==52019) [aw=weight_adj], robust;
reg work_paper if (time==62019) [aw=weight_adj], robust;
reg work_paper if (time==72019) [aw=weight_adj], robust;
reg work_paper if (time==82019) [aw=weight_adj], robust;
reg work_paper if (time==92019) [aw=weight_adj], robust;
reg work_paper if (time==102019) [aw=weight_adj], robust;
reg work_paper if (time==112019) [aw=weight_adj], robust;
reg work_paper if (time==122019) [aw=weight_adj], robust;
reg work_paper if (time==12020) [aw=weight_adj], robust;
reg work_paper if (time==22020) [aw=weight_adj], robust;
reg work_paper if (time==32020) [aw=weight_adj], robust;
reg work_paper if (time==52020) [aw=weight_adj], robust;
reg work_paper if (time==62020) [aw=weight_adj], robust;
reg work_paper if (time==72020) [aw=weight_adj], robust;
reg work_paper if (time==82020) [aw=weight_adj], robust;
reg work_paper if (time==92020) [aw=weight_adj], robust;
reg work_paper if (time==102020) [aw=weight_adj], robust;
reg work_paper if (time==112020) [aw=weight_adj], robust;
reg work_paper if (time==122020) [aw=weight_adj], robust;
clear all;
