function conditionString = makeConditionStringOR(columns, values) 
    
    conditionString = '';
    if ~(iscell(columns)) && ~ischar(columns)
        columns = num2cell(columns);
    elseif ~(iscell(columns)) && ischar(columns)
        columns = {columns};
    end
    if ~(iscell(values)) && ~ischar(values)
        values = num2cell(values);
    elseif ~(iscell(values)) && ischar(values)
        values = {values};
    end
    
    for i = 1:length(columns)
        if i==1
            conditionString = [columns{i} ' = ' stringify(values{i})];
        else
            conditionString = [conditionString ' OR ' columns{i} ' = ' stringify(values{i})];
        end
    end
end