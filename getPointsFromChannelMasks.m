function points = getPointsFromChannelMasks(actchanmask,retchanmask)

    channelConfig = getChannelConfigFromMasks(actchanmask,retchanmask);
    conn = openDatabaseConnection();
    
    column = 'pointsID';
    table = 'jnddata.points';
    conditions = makeConditionString({'channelsid'},channelConfig);
    
    data = makeSelectQuery(conn,column,table,conditions);
    
    points = cell2mat(data);
    
end