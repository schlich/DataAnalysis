function plotAllDetectionCurves(subjectID,grouping)
    %grouping = separate==1 , together==2
    conn = openDatabaseConnection();
    
    dates = getAllDates();
    
    for i = 1:size(dates,2)
        session = makeSelectQuery(conn,'idsession','jnddata.session', ...
            sprintf('subjectID=%i AND date="%s"',subjectID,dates(i)));
        [curves,~,refamp,refPW] = getCurvesFromSession(session);
        for i=1:length(curves)
            if (refamp==0)
                for i = 1:length(curves)
                    [x,y,n] = getPointsFromCurve(curveID, 'percent');
                    [X,Y] = fit_sigmoid(x,y);
                    figure 
                    plotCurveByID(curves(i));
                    
                end
            end
        end
    end
    
    
end
    
    