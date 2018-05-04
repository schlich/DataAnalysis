function ID = calculateVarParams(curveID)
    
    pointIDs = getPointsFromCurve(curveID);
   
    leftside = cell(size(pointIDs));
    leftside(:) = {'pointsID'};
    
    condition = makeConditionStringOR(leftside,pointIDs);
    data = makeInnerJoinQuery('pointsID,PW,Amp,Freq,Dur','jnddata.compparams','jnddata.points','compparams.idcompparams= points.compparamID',condition);
    data = cell2mat(data);
    varPW = length(unique(data(:,2))) > 1;
    varAmp = length(unique(data(:,3))) > 1;
    varFreq = length(unique(data(:,4))) > 1;
    varDur = length(unique(data(:,5))) > 1;
    
    ID = makeRowIfDoesntExist('idvarparams','jnddata.varparams',{'Amp','PW','Freq','Dur'},{varAmp,varPW,varFreq,varDur});
    
    
end
