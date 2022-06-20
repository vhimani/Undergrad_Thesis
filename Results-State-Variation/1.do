

cd "\\cnsdisk.austin.utexas.edu\home\hv3793\Desktop\Time-Use-Great-Recession\Results-State-Variation"


use state_dataset_temp1
xtset idn twoyear, yearly
regress D.workapaper D.workpaper D.male
regress D.workupaper D.workpaper   D.male   
regress D.childcarepaper D.workpaper    D.male   
regress D.homepaper D.workpaper      D.male       
regress D.homeproductionpaper D.workpaper D.male   
regress D.homeownpaper D.workpaper   D.male       
regress D.shoppingpaper D.workpaper   D.male      
regress D.othercarepaper D.workpaper  D.male      
regress D.leisurepaper D.workpaper    D.male       
regress D.tvpaper D.workpaper         D.male        
regress D.socializingpaper D.workpaper   D.male   
regress D.sleepingpaper D.workpaper    D.male     
regress D.eppaper D.workpaper          D.male      
regress D.otherleisurepaper D.workpaper D.male    
regress D.otherpaper D.workpaper       D.male    
regress D.educationpaper D.workpaper   D.male    
regress D.civicpaper D.workpaper       D.male  
regress D.ownmedicalpaper D.workpaper   D.male    
clear all

/*Column 2 and 3;
use state_dataset_temp
xtset idn twoyear, yearly
regress D.workapaper D.workpaper    , vce(cluster idn)     
regress D.workupaper D.workpaper     , vce(cluster idn)    
regress D.childcarepaper D.workpaper     , vce(cluster idn)
regress D.homepaper D.workpaper          , vce(cluster idn) 
regress D.homeproductionpaper D.workpaper , vce(cluster idn)
regress D.homeownpaper D.workpaper        , vce(cluster idn)
regress D.shoppingpaper D.workpaper       , vce(cluster idn)
regress D.othercarepaper D.workpaper      , vce(cluster idn)
regress D.leisurepaper D.workpaper        , vce(cluster idn)
regress D.tvpaper D.workpaper             , vce(cluster idn)
regress D.socializingpaper D.workpaper    , vce(cluster idn)
regress D.sleepingpaper D.workpaper       , vce(cluster idn)
regress D.eppaper D.workpaper             , vce(cluster idn)
regress D.otherleisurepaper D.workpaper   , vce(cluster idn)
regress D.otherpaper D.workpaper          , vce(cluster idn)
regress D.educationpaper D.workpaper      , vce(cluster idn)
regress D.civicpaper D.workpaper          , vce(cluster idn)
regress D.ownmedicalpaper D.workpaper     , vce(cluster idn)
clear all



use state_dataset_temp1
xtset idn twoyear, yearly
regress D.workapaper D.workpaper    
regress D.workupaper D.workpaper     
regress D.childcarepaper D.workpaper     
regress D.homepaper D.workpaper          
regress D.homeproductionpaper D.workpaper 
regress D.homeownpaper D.workpaper        
regress D.shoppingpaper D.workpaper       
regress D.othercarepaper D.workpaper      
regress D.leisurepaper D.workpaper        
regress D.tvpaper D.workpaper             
regress D.socializingpaper D.workpaper    
regress D.sleepingpaper D.workpaper       
regress D.eppaper D.workpaper             
regress D.otherleisurepaper D.workpaper   
regress D.otherpaper D.workpaper          
regress D.educationpaper D.workpaper      
regress D.civicpaper D.workpaper          
regress D.ownmedicalpaper D.workpaper    
clear all
