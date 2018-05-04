function FArate = getFArate(curveID)
    conn = openDatabaseConnection();
    data = makeSelectQuery(conn,'FArate','jnddata.curves', ...
        sprintf('idcurves=%i', curveID));
    
    FArate = cell2mat(data);
    close(conn)
end