function enterTrial(point, curr_trial)
    
    makeInsertQuery('jnddata.trials',{'nervetrialID','Result','pointID'},{curr_trial.Trialid,curr_trial.Result,point});   
    
    
end