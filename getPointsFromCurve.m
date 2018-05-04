function pointIDs = getPointsFromCurve(curveID)

    data = makeSelectQuery('pointsID','jnddata.points',makeConditionString('curveID',curveID));
    pointIDs = cell2mat(data);
    
    
end