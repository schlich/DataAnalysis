function data = makeQuery(queryString)
    conn = openDatabaseConnection();
    cursor = exec(conn, queryString);
    cursor = fetch(cursor);
    data = cursor.Data;
    close(conn)
end