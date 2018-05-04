function sessionID = getSession(date,subjectID)
    conn = openDatabaseConnection();
    sessionID = makeSelectQuery(conn,'idsession','jnddata.session', ...
        sprintf('date="%s" AND subjectID=%i',date,subjectID));
    sessionID = sessionID{1};
    close(conn);
end