function [curveID, flag] = getCurrentCurve(prev_trial,curr_trial,sessionID)
    
    curveID = cell2mat(makeSelectQuery('MAX(idcurves)','jnddata.curves'));
    if isnan(curveID)
        curveID = 0;
    end
        
    if isNewCurve(prev_trial,curr_trial);
        curveID = curveID + 1;
        makeInsertQuery('jnddata.curves','idcurves',curveID);
        initializeCurveTallies(curveID);
        setRefAmp(curr_trial,curveID);
        setSession(sessionID,curveID);
        flag = 1;
    else
        flag = 0;
    end
    
    
    
    
end