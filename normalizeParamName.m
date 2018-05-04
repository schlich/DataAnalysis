function fixedname = normalizeParamName(name)
   
    if (length(name) > 7 && strcmp(name(1:7),'Electro'))
        name = name(8:end);
    end
    
    k = strfind(name,'_');
    if ~isempty(k)
        name = [name(1:(k-1)) name((k+1):end)];
    end
    
    if strcmp(name,'Amp')
        name='Amp1';
        
    end
    if strcmp(name,'Freq')
        name='Freq1';
    end
    if strcmp(name,'Width')
        name='Width1';
    end
    if strcmp(name,'Dur')
        name='Dur1';
    end
    fixedname = name;
end
