function x = getXValueFromCompParamID(compparamID, varparamID)
    if (varparamID==1 || varparamID ==3)
        data = makeSelectQuery(getStringFromVarParam(varparamID),'jnddata.compparams',makeConditionString('idcompparams',compparamID));
    
        x = cell2mat(data);
    else
        x = NaN;
    end
end
