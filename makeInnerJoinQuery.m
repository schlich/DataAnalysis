function data = makeInnerJoinQuery(columns,table1,table2,joincondition,rowcondition)
    query = ['SELECT ' columns ' FROM ' table1 ' INNER JOIN ' table2 ' ON ' joincondition];
    
    if nargin > 4
         query = [query ' WHERE ' rowcondition];
    end
    
    data = makeQuery(query);
    
end