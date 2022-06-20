# delimit ;

clear all;
clear matrix;
set mem 800m;
set more off;



cd "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\Results State Variation";


use state_1865_base;
xtset idn twoyear, yearly;
gen dworkpaper=D.workpaper;

regress D.workapaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.workapaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.workapaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.workupaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.workupaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.workupaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.childcarepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.childcarepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.childcarepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.homepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.homepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.homepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.homeproductionpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.homeproductionpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.homeproductionpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.homeownpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.homeownpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.homeownpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.shoppingpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.shoppingpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.shoppingpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.othercarepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.othercarepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.othercarepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.leisurepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.leisurepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.leisurepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.tvpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.tvpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.tvpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.socializingpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.socializingpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.socializingpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.sleepingpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.sleepingpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.sleepingpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.eppaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.eppaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.eppaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.otherleisurepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.otherleisurepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.otherleisurepaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.otherpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.otherpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.otherpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.educationpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.educationpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.educationpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.civicpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.civicpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.civicpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;

regress D.ownmedicalpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==4        [aw=popweight];
est store four;
regress D.ownmedicalpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==3        [aw=popweight];
est store three;
regress D.ownmedicalpaper dworkpaper D.male D.black D.married D.hvchild D.age1 D.age2 D.age3 D.age4 D.age5 D.educ1 D.educ2 D.educ3 D.educ4 if twoyear==2        [aw=popweight];
est store two;
quietly quietly suest four two, cluster(idn);
test [four_mean]dworkpaper = [two_mean]dworkpaper;
quietly quietly suest four three, cluster(idn);
test [four_mean]dworkpaper = [three_mean]dworkpaper;
clear all;








