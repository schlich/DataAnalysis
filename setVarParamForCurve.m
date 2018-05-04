function setVarParamForCurve(curveID,varparamID)

    makeUpdateQuery('jnddata.curves','varparamsID',varparamID,makeConditionString('idcurves',curveID));

end

