function initializePointTallies(pointID)

    condition = makeConditionString('pointsID',pointID);
    makeUpdateQuery('jnddata.points',{'Hits','Misses'},{0,0},condition);
    
end