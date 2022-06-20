%Figure 4 and Column 6 of Table 1 and Table 2 in Aguiar, Hurst and Karabarbounis (2012) 

clear all;
clc;

year=linspace(2003,2010,8);
X=xlsread('aggregate_trends.xls');
Data_all=X(1:8,:);
Data_men=X(11:18,:);


%trend calculation: all sample: Table 1, Column 6 and Figure 4
Y=Data_all(:,[17,18,19,32,27,28,29,30,31,20,24,26,22,21,25,33,34,35,36]);

    TREND=[2003;2004;2005;2006;2007;2008;2009;2010];
    CONSTANT=[1; 1; 1; 1; 1; 1;1;1];
    DEP=[CONSTANT,TREND];
    for i=1:length(Y)
        coeff(i,:)=(inv(DEP'*DEP))*(DEP'*Y(1:8,i));
    end    
    for i=1:length(Y)
        Ytrend(:,i) = (coeff(i,:)*DEP')';
    end
    Ycycle=Y-Ytrend;
    shock0910_all=(Y(7,:)+Y(8,:))/2-(Ytrend(7,:)+Ytrend(8,:))/2;
    display('Table 1, Column 6:')
    Table1_Column6=shock0910_all'
    fraction_all=(-100*shock0910_all./shock0910_all(1))'
    %sum=Y(:,1)+Y(:,2)+Y(:,3)+Y(:,4)+Y(:,5)+Y(:,10)+Y(:,16)
    %sumtrend=Ytrend(:,1)+Ytrend(:,2)+Ytrend(:,3)+Ytrend(:,4)+Ytrend(:,5)+Ytrend(:,10)+Ytrend(:,16)
    work=Y(:,1);
    worktrend=Ytrend(:,1);
    leisure=Y(:,10);
    leisuretrend=Ytrend(:,10);
    home=Y(:,5);
    hometrend=Ytrend(:,5);
    %Figure 4 of the paper
    figure(4)
    subplot(1,3,1)
    plot(year,[worktrend,work])
    subplot(1,3,2)
    plot(year,[leisuretrend,leisure])
    subplot(1,3,3)
    plot(year,[hometrend,home])

    %trend calculation: men sample: Table 2, Column 6 
    Y=Data_men(:,[17,18,19,32,27,28,29,30,31,20,24,26,22,21,25,33,34,35,36]);
    TREND=[2003;2004;2005;2006;2007;2008;2009;2010];
    CONSTANT=[1; 1; 1; 1; 1; 1; 1; 1];
    DEP=[CONSTANT,TREND];
    for i=1:length(Y)
        coeff(i,:)=(inv(DEP'*DEP))*(DEP'*Y(1:8,i));
    end
    for i=1:length(Y)
        Ytrend(:,i) = (coeff(i,:)*DEP')';
    end
    shock0910_men=(Y(7,:)+Y(8,:))/2-(Ytrend(7,:)+Ytrend(8,:))/2;
    display('Table 2, Column 6:')
    Table2_Column6=shock0910_men'
    fraction_men=(-100*shock0910_men./shock0910_men(1))'











