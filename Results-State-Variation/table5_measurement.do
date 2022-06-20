# delimit ;

clear all;
clear matrix;
set mem 800m;
set more off;



cd "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\Results State Variation";


*Column 1 and 2;
use state_1865_unempADJ;
xtset idn twoyear, yearly;
regress D.workapaper D.workpaper          , vce(cluster idn);
regress D.workupaper D.workpaper          , vce(cluster idn);
regress D.childcarepaper D.workpaper      , vce(cluster idn);
regress D.homepaper D.workpaper           , vce(cluster idn);
regress D.homeproductionpaper D.workpaper , vce(cluster idn);
regress D.homeownpaper D.workpaper        , vce(cluster idn);
regress D.shoppingpaper D.workpaper       , vce(cluster idn);
regress D.othercarepaper D.workpaper      , vce(cluster idn);
regress D.leisurepaper D.workpaper        , vce(cluster idn);
regress D.tvpaper D.workpaper             , vce(cluster idn);
regress D.socializingpaper D.workpaper    , vce(cluster idn);
regress D.sleepingpaper D.workpaper       , vce(cluster idn);
regress D.eppaper D.workpaper             , vce(cluster idn);
regress D.otherleisurepaper D.workpaper   , vce(cluster idn);
regress D.otherpaper D.workpaper          , vce(cluster idn);
regress D.educationpaper D.workpaper      , vce(cluster idn);
regress D.civicpaper D.workpaper          , vce(cluster idn);
regress D.ownmedicalpaper D.workpaper     , vce(cluster idn);
clear all;


*Column 3 and 4;
use state_1865_base;
xtset idn twoyear, yearly;
ivreg2  D.workapaper  (D.workpaper=D.urate)           , gmm2s cluster(idn) first;
ivreg2  D.workupaper  (D.workpaper=D.urate)           , gmm2s cluster(idn);
ivreg2  D.childcarepaper  (D.workpaper=D.urate)       , gmm2s cluster(idn);
ivreg2  D.homepaper  (D.workpaper=D.urate)            , gmm2s cluster(idn);
ivreg2  D.homeproductionpaper  (D.workpaper=D.urate)  , gmm2s cluster(idn);
ivreg2  D.homeownpaper  (D.workpaper=D.urate)         , gmm2s cluster(idn);
ivreg2  D.shoppingpaper  (D.workpaper=D.urate)        , gmm2s cluster(idn);
ivreg2  D.othercarepaper  (D.workpaper=D.urate)       , gmm2s cluster(idn);
ivreg2  D.leisurepaper  (D.workpaper=D.urate)         , gmm2s cluster(idn);
ivreg2  D.tvpaper  (D.workpaper=D.urate)              , gmm2s cluster(idn);
ivreg2  D.socializingpaper  (D.workpaper=D.urate)     , gmm2s cluster(idn);
ivreg2  D.sleepingpaper  (D.workpaper=D.urate)        , gmm2s cluster(idn);
ivreg2  D.eppaper  (D.workpaper=D.urate)              , gmm2s cluster(idn);
ivreg2  D.otherleisurepaper  (D.workpaper=D.urate)    , gmm2s cluster(idn);
ivreg2  D.otherpaper  (D.workpaper=D.urate)           , gmm2s cluster(idn);
ivreg2  D.educationpaper  (D.workpaper=D.urate)       , gmm2s cluster(idn);
ivreg2  D.civicpaper  (D.workpaper=D.urate)           , gmm2s cluster(idn);
ivreg2  D.ownmedicalpaper  (D.workpaper=D.urate)      , gmm2s cluster(idn);
clear all;


