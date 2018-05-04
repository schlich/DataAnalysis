function data = makeSelectQuery(columns, table, conditions)

    if nargin==2
        whereclause = '';
    else
        whereclause = [' WHERE ' conditions];
    end
    query = ['SELECT ' columns ' FROM ' table whereclause];
    data = makeQuery(query);
    
end