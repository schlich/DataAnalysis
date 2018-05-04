function HR = calculateHitRate(pointID)

    data = cell2mat(makeSelectQuery('Hits,Misses','jnddata.points',makeConditionString('pointsID',pointID)));
    hits = data(1);
    misses = data(2);
    HR = hits/(hits+misses);
    makeUpdateQuery('jnddata.points','HR',HR,makeConditionString('pointsID',pointID));

end