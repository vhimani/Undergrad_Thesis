%Figures 1-3 in Aguiar, Hurst and Karabarbounis (2012) 

clear all;
clc;

%BEA: total hours table 6.9D
BEA=1000000*[224103;
    226650;
    229536;
    234818;
    238162;
    234696;
    222132;
    222736;];

% OECD US POP:
PopALL=[290242000
292936100
295618500
298431800
301393600
304177400
306656300
309050800];

POP65older=[9752194	8642400	7515065	5436905	4554239;
9967948	8558162	7484032	5578852	4663596;
10145050	8558578	7492209	5673569	4842195;
10389550	8595267	7480360	5723067	5047229;
10778480	8668668	7443627	5777852	5256953;
11363090	8839742	7395040	5834198	5450651;
11817460	9053458	7348651	5844145	5659959;
12205580	9226959	7371313	5876727	5857485;];

POP19younger=[19941620	19773080	21186940	20633460
20245800	19648080	21107310	20881980
20486110	19623770	20830910	21202660
20613100	19823430	20572450	21457050
20921460	20048150	20311750	21658220
21176290	20307070	20094410	21729210
21242980	20596850	19956100	21632990
21262400	20819250	19915850	21340460];


POP=(PopALL-sum(POP65older')'-sum(POP19younger')');

X=xlsread('aggregate_trends.xls');

Data_all=X(1:8,:);
Data_men=X(11:18,:);
Data_women=X(21:28,:);

year=linspace(2003,2010,8);
%Figure 1 in paper (market work)
figure(1)
plot(year,[Data_all(:,17),Data_men(:,17),Data_women(:,17),(BEA./POP)*(Data_all(1,17)/(BEA(1)/POP(1)))]')
legend('ATUS (All)','ATUS (Men)','ATUS (Women)','BEA (All)')

%Figure 2 in paper (leisure)
figure(2)
plot(year,[Data_all(:,20),Data_men(:,20),Data_women(:,20)]')
legend('All','Men','Women')

%Figure 3 in paper (non-market work)
figure(3)
plot(year,[Data_all(:,27),Data_men(:,27),Data_women(:,27)]')
legend('All','Men','Women')


