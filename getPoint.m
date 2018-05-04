function pointID = getPoint(curr_trial,curveID)

    compParamID = getCompParamID(curr_trial);
    
    [pointID,flag] = makeRowIfDoesntExist('pointsID','jnddata.points',{'compparamID','curveID'},{compParamID,curveID});
    
    if flag==0
        initializePointTallies(pointID);
    end
    
    addTrialResultToTally(curr_trial,pointID, curveID);
    
    
end

