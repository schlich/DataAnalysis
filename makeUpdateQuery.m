function makeUpdateQuery(table, columns, values, conditions)
    query = makeUpdateQueryString(table, columns, values, conditions);
    makeQuery(query);
end