function sesh2db(filename)

    conn = database('MySQL','root','help123');

    monkey = filename(1);
    date = filename(2:end);
    date = [date(1:4) '-' date(5:6) '-' date(7:8)];
    
    sessionID = recordSession(conn,monkey,date,filename);
    
        
end
        