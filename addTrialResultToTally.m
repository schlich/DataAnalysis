function addTrialResultToTally(trial,pointID,curveID)

    result = trial.Result;
    if result==0
        resultString = 'Misses';
        destination = 'points';
    elseif result==1
        resultString = 'Hits';
        destination = 'points';
    elseif result==2
        resultString = 'FAs';
        destination = 'curves';
    elseif result==3
        resultString = 'CRs';
        destination = 'curves';
    end
    
    if strcmp(destination,'points')
        condition = makeConditionString('pointsID',pointID);
        makeUpdateQuery('jnddata.points',resultString,[resultString ' + 1'],condition);
    elseif strcmp(destination,'curves')
        condition = makeConditionString('idcurves',curveID);
        makeUpdateQuery('jnddata.curves',resultString,[resultString ' + 1'],condition);
    end
end
    
    