function plotAllCurvesAndConfirm()

    conn = openDatabaseConnection();
    curves = makeSelectQuery(conn,'idcurves','jnddata.curves','qualityConfirmed IS NULL');
    curves = cell2mat(curves);
    
    for i=1:length(curves)
        curr_curve = curves(i);
        plotCurveByID(curr_curve,'r');
        confirm = input('Confirm curve?');
        query = makeUpdateQueryString('jnddata.curves','qualityConfirmed',num2str(confirm),['idcurves = ' num2str(curr_curve)]);
        makeQuery(conn,query);
    end
    
end