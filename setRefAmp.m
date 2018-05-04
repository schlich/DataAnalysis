function setRefAmp(curr_trial,curveID)

    refParamID = getRefParamID(curr_trial);
    
    makeUpdateQuery('jnddata.curves','refparams',refParamID,makeConditionString('idcurves',curveID));
    
end
    