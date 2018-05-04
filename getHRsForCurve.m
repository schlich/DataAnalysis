function [HRs,xvals] = getHRsForCurve(curveID,varparam)
    
    

    data = makeSelectQuery('HR,compparamID','jnddata.points',makeConditionString('curveID',curveID));
    
    data = cell2mat(data);
    
    HRs = data(:,1);
    paramIDs = data(:,2);
    nonnans = ~isnan(HRs);
    HRs = HRs(nonnans);
    paramIDs = paramIDs(nonnans);
    xvals = convertParamIDstoValues(paramIDs,varparam);
    
    
end