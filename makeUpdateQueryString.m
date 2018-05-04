function updateString = makeUpdateQueryString(table, columns, values, condition)
        %columns/values are cell arrays
        if ~(iscell(columns))
            columns = {columns};
        end
        if ~(iscell(values))
            values = {values};
        end        
        updateString = ['UPDATE ' table ' SET '];
        for i = 1:length(columns)
            updateString = [updateString columns{i} ' = ' stringify(values{i})];
            if ~(i == length(columns))
                updateString = [updateString ', '];
            end
        end
        if nargin>3
            updateString = [updateString ' WHERE ' condition];
        end
end


                