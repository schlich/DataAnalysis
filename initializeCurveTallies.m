function initializeCurveTallies(curveID)

    condition = makeConditionString('idcurves',curveID);
    makeUpdateQuery('jnddata.curves',{'FAs','CRs'},{0,0},condition);
    
end