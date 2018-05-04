function [sessionID] = recordSession(filename)
    [subjID,date] = getMonkeyAndDateFromFilename(filename);

    [sessionID,flag] = makeRowIfDoesntExist('idsession','jnddata.session',{'subjectID','date'},{subjID,date});
    
    if flag == 1
        return
    end

    fid = fopen(['Data/' filename],'r');
    line = textscan(fid,'%s',2,'Delimiter','\n');

    curr_trial = struct();
    prev_trial = struct('newsession',1);
    
    curveIDs = [];
    %start recording trials
    while (~feof(fid))
        line = textscan(fid,'%s %f',1);
        if length(line)==2
            param = line{1,1}{1};
            param = normalizeParamName(param);
            value = line{1,2};
            if strcmp(param,'Trialid')
                if completeTrial(curr_trial)
                    sessionID
                    curr_trial.Trialid
                    curr_trial = addChannelMasks(curr_trial);
                    curr_trial = addRefAmps(curr_trial);
                    [curveID,isNewCurve] = getCurrentCurve(prev_trial,curr_trial,sessionID);
                    if (isNewCurve)
                        curveIDs = [curveIDs curveID];
                    end
                    pointID = getPoint(curr_trial,curveID);
                    enterTrial(pointID, curr_trial);
                    prev_trial = curr_trial;
                    prev_trial.newsession = 0;
                    curr_trial = struct(); 
                end
            end
        curr_trial.(param) = value;
        end
    
    end
    postProcess(curveIDs);
    
end