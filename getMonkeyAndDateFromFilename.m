function [subjID, date] = getMonkeyAndDateFromFilename(filename)
    
    subjID = subj_str2id(filename(1));
    
    date = addHyphensToDate(filename(2:9));
end