function ID = getCompParamID(curr_trial)
    
    condition_column= {'Amp','PW','Freq','Dur','Chans'};
    
    condition_values = {curr_trial.Amp1,curr_trial.Width1,curr_trial.Freq1, ...
        curr_trial.Dur1,getChannelConfigFromMasks(curr_trial.Actchanmask,curr_trial.Retchanmask)};
    
    ID = makeRowIfDoesntExist('idcompparams','jnddata.compparams',condition_column,condition_values);
    
end