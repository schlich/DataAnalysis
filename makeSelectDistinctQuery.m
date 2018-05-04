function data = makeSelectDistinctQuery(connection, columns, table)
    
    query = ['SELECT DISTINCT ' columns ' FROM ' table];
    cursor = exec(connection, query);
    cursor = fetch(cursor);
    data = cursor.Data;
    
end