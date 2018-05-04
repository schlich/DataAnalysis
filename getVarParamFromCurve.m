function varparamID = getVarParamFromCurve(curveID)

    data = makeSelectQuery('varparamsID','jnddata.curves',makeConditionString('idcurves',curveID));
    
    varparamID = cell2mat(data);

end