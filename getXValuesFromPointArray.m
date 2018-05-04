function X = getXValuesFromPointArray(points,varparam)

    for i = 1:length(points)
        compparam = getCompParamID(points(i));
        X(i) = getXValueFromCompParamID(compparam,varparam);
    end

end
