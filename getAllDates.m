function dates = getAllDates()
    conn = openDatabaseConnection();
    data = makeSelectDistinctQuery(conn,'date','jnddata.session');
    dates = cell2mat(data);
end