function makeInsertQuery(table, columns, values)
    query = makeInsertQueryString(table, columns, values);
    makeQuery(query);
end