function trialStructWithMasks = addChannelMasks(trialStruct)
    
    act_mask_binary = [trialStruct.Active1, trialStruct.Active2, trialStruct.Active3,...
        trialStruct.Active4, trialStruct.Active5, trialStruct.Active6, ...
        trialStruct.Active7, trialStruct.Active8];
    ret_mask_binary = [trialStruct.Return1, trialStruct.Return2, trialStruct.Return3,...
        trialStruct.Return4, trialStruct.Return5, trialStruct.Return6, ...
        trialStruct.Return7, trialStruct.Return8];
    
    actchanmask = bi2de(logical(act_mask_binary));
    retchanmask = bi2de(logical(ret_mask_binary));
    
    makeRowIfDoesntExist('idchanmask','jnddata.chanmask',{'binarymask','intmask'},{mat2str(act_mask_binary),actchanmask});
    makeRowIfDoesntExist('idchanmask','jnddata.chanmask',{'binarymask','intmask'},{mat2str(ret_mask_binary),retchanmask});
    
    trialStruct.Actchanmask = actchanmask;
    trialStruct.Retchanmask = retchanmask;
    
    trialStructWithMasks = trialStruct;
    
    
end