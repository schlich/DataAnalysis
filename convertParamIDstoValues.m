function values = convertParamIDstoValues(paramIDs,varparam)

    if varparam == 1
        param = 'Amp';
    elseif varparam==2
        param = 'Amp';
    elseif varparam==3
        param ='PW';
    elseif varparam==4
        param = 'Amp';
    else
        param = 'Amp';
    end
    values = [];
    for i = 1:length(paramIDs)
        paramID = paramIDs(i);
        value = makeSelectQuery(param,'jnddata.compparams',makeConditionString('idcompparams',paramID));
        values = [values value];
    end
    
    values = cell2mat(values);
end
        