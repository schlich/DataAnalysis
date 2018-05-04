function confirmCurve(curveID,judgement)
    
    conn = openDatabaseConnection();
    
    query = ['UPDATE jnddata.curves SET qualityConfirmed=' num2str(judgement) '  WHERE idcurves=' num2str(curveID)];
    cursor = exec(conn, query);
    
    close(conn);
    
end

