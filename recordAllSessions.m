function recordAllSessions()

    files = dir('data/*.txt');
    
    for i = 1:length(files)
        filename = files(i).name
        %filename = ['data/' filename];
        recordSession(filename);
    end
    
end