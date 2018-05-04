function curves = getCurvesFromSession(sessionID)
    data = makeSelectQuery('idcurves', 'jnddata.curves', ... 
        sprintf('sessionID=%i',sessionID));
    curves = cell2mat(data(:,1));
end