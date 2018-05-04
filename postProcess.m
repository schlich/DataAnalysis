function postProcess(curveIDs)
    for j = 1:length(curveIDs)
        curveID = curveIDs(j);
        pointIDs = getPointsFromCurve(curveID);
        for i = 1:length(pointIDs)
            pointID = pointIDs(i);
            calculateHitRate(pointID);
            %calculateAdjHitRate(pointID);
            %calculateDPrime(pointID,curveID);
        end

        varparamID = calculateVarParams(curveID);
        setVarParamForCurve(curveID,varparamID);

        calculateFArate(curveID);

        
        %[x,y] = fit_sigmoid(xvals,HRs');
        coeffs = calculateCurveCoeffs(curveID);
        
        setCoeffs(coeffs,curveID);
        
        
    end
end
    
    
    
    
    