function coeff_array = calculateCurveCoeffs(curveID)

    [X,Y] = getXandYvaluesForCurve(curveID);
    
    [X,Y] = removeNans(X,Y);
    
    if length(X)>3

        SPs = [.20,.10,2000,200;
                .05,.01,200,50;
                0,0,0,0];
        [coeffs, curve] = ...
        FitPsycheCurveWH(X, Y, SPs);
        coeff_array = coeffvalues(coeffs);
    else
        coeff_array = [nan nan nan nan];
    end
end