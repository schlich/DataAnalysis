function plotAllCurvesByChannels(actchanmask, retchanmask)

    points = lookUpPointsWithChannels(actchanmask,retchanmask);
    
    [X,Y] = getXandYvaluesForPoints(points);
    
    curves = getCurveValuesForPoints(points);
    
    monkeys = getMonkeyValuesForCurves(curves);
    
    plotCurves(X,Y,curves);
    
end
    
    