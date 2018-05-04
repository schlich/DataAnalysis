function [ID,flag] = makeRowIfDoesntExist(IDstring, table, conditionColumns, conditionValues)
    
    ID = makeSelectQuery(IDstring,table,makeConditionString(conditionColumns,conditionValues));
    ID = cell2mat(ID);
    if (isempty(ID) || strcmp(ID,'No Data') || ID==0) 
        makeInsertQuery(table,conditionColumns,conditionValues)
        ID = makeSelectQuery(IDstring,table,makeConditionString(conditionColumns,conditionValues));
        ID = cell2mat(ID);
        flag = 0;
    else
        flag = 1;
    end
    
end