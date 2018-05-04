function isnew = isNewCurve(trial1,trial2)
    %trial 1 = previous trial, trial 2 = current trial
    
    if trial1.newsession==1
        isnew = true;       
    elseif (trial1.Amp2 == trial2.Amp2 && ...
        trial1.Width2 == trial2.Width2 && ...
        trial1.Freq2 == trial2.Freq2 && ...
        trial1.Dur2 == trial2.Dur2 && ...
        trial1.Actchanmask == trial2.Actchanmask && ...
        trial1.Retchanmask == trial2.Retchanmask)
        isnew = false;
    else
        isnew = true;
    end
    
end