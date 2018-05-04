function pointIDs = enforceNThreshold(pointIDs,n)

    for i = 1:length(pointIDs)
        n_array(i) = getNforPoint(pointIDs(i));
    end
    
    pointIDs = pointIDs(n_array>4);
    
end