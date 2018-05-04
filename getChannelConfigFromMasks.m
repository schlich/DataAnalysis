function channelConfigID = getChannelConfigFromMasks(actchanmask,retchanmask)

    
    column = 'idchannelconfig';
    table = 'jnddata.channelconfigs';
    conditionColumns = {'actchanmask','retchanmask'};
    conditionValues = {actchanmask,retchanmask};
    
    channelConfigID = makeRowIfDoesntExist(column,table,conditionColumns,conditionValues);
    
       
end