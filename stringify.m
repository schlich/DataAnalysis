function string = stringify(object)
    if ~ischar(object)
        string = num2str(object);
    elseif (strcmp(object,'FAs + 1') || strcmp(object,'CRs + 1') || ...
        strcmp(object,'Hits + 1') || strcmp(object,'Misses + 1'))
        string = object;
    else
        string = ['''' object ''''];
    end
end