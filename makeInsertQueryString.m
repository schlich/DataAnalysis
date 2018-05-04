function insertString = makeInsertQueryString(table, columns, values)
        if ~(iscell(columns))
        columns = {columns};
        end
        if ~(iscell(values))
            values = {values};
        end
        
        n = length(values);
        
        insertString = ['INSERT INTO ' table ' ('];
        for i = 1:n
            insertString = [insertString columns{i}];
            if ~(i == n)
                insertString = [insertString ', '];
            end
        end
        
        insertString = [insertString ') VALUES ('];
        
        for i = 1:n
            insertString = [insertString stringify(values{i})];
            if ~(i == n)
                insertString = [insertString ', '];
            end
        end
        
        insertString = [insertString ')'];
        
end