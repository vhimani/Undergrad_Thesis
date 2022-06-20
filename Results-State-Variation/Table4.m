%Calculations in Table 4 in Aguiar, Hurst and Karabarbounis (2012) 

clear all;
clc;


%column 2:
coeff=[0.99;
    1.26;
    4.06;
    28.38;
    10.79;
    6.78;
    5.84;
    4.95;
    52.16;
    12.60;
    3.88;
    20.82;
    -1.23;
    16.08;
    13.12;
    7.19;
    2.10;
    3.81;];
column2=(1/100)*2.11*coeff
column1=coeff;

%column 3
column3=(1/100)*0.54*coeff

%column 4
column4=(1/100)*1.57*coeff    

%column6
coeffi=[1.28;
    0.30;
    3.72;
    30.03;
    10.80;
    7.30;
    8.89;
    3.03;
    55.85;
    10.21;
    6.50;
    15.27;
    5.04;
    18.81;
    8.72;
    4.66;
    2.24;
    1.81];
column5=coeffi;
coeffe=coeff+(coeff-coeffi).*(column3./column4);
column6=coeffe

%column7
column7=(1/100)*0.54*coeffi

%column 8
column8=(1/100)*1.57*coeffe


[column1,column2,column3,column4,column5,column6,column7,column8]











