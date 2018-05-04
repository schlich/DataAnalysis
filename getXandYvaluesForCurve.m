function [X,Y] = getXandYvaluesForCurve(curveID)
    points = getPointsFromCurve(curveID);
    X = zeros(size(points));
    Y = zeros(size(points));
    varparam = getVarParamFromCurve(curveID);
        
    for i = 1:length(points)
        
        condition = makeConditionString({'pointsID'},points(i));
        data = makeSelectQuery('HR,compparamID','jnddata.points',condition);
        hitrate = data{1};
        compparamID = data{2};
        x = getXValueFromCompParamID(compparamID, varparam);
        X(i) = x;
        Y(i) = hitrate;
        
    end
    
end
    