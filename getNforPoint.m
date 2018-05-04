function n = getNforPoint(pointID)

    n = makeSelectQuery('n','jnddata.points',['pointsID=' stringify(pointID)]);
    n = cell2mat(n);
    
end