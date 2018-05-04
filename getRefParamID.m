function ID = getRefParamID(curr_trial)
    
    condition_column= {'Amp','PW','Freq','Dur','Chans'};
    
    condition_values = {curr_trial.Amp2,curr_trial.Width2,curr_trial.Freq2, ...
        curr_trial.Dur2,getChannelConfigFromMasks(curr_trial.Actchanmask,curr_trial.Retchanmask)};
    
    ID = makeRowIfDoesntExist('idrefparams','jnddata.refparams',condition_column,condition_values);
    
end