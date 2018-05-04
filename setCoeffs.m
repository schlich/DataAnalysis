function setCoeffs(coeff_array, curveID)

    thresh = coeff_array(1);
    slope = coeff_array(2);
    g = coeff_array(3);
    l = coeff_array(4);
    
    makeUpdateQuery('jnddata.curves',{'threshold','slope','calcFArate','calcLapseRate'}, ...
        {thresh, slope, g, l}, makeConditionString('idcurves',curveID));
    
end