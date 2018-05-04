function id = subj_str2id(monkey)
    if strcmp(monkey,'U') || strcmp(monkey,'Urquell')
        id = 1;
    elseif strcmp(monkey,'X') || strcmp(monkey,'Dos Equis') || strcmp(monkey,'XX')
        id = 2;
    elseif strcmp(monkey,'Y') || strcmp(monkey,'Yuengling') || strcmp(monkey,'t')
        id = 3;
    elseif strcmp(monkey,'Z') || strcmp(monkey,'Zwickel')
        id = 4;
    end
    
end