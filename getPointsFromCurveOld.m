function [x,y,n] = getPointsFromCurveOld(curveID,method)
    conn = openDatabaseConnection();
    FArate = getFArate(curveID);
    data = makeSelectQuery(conn,'dprime,Hits,Misses,Amp1,PW1','jnddata.points',...
        sprintf('curve=%i',curveID));
    
    %y = cell2mat(data(:,1));
    hits = cell2mat(data(:,2));
    misses = cell2mat(data(:,3));
    n = hits + misses;
    d_prime = dprime(hits./n,FArate);
    if strcmp(method,'dprime')
        y = d_prime;
    elseif strcmp(method,'percent')
        y = hits./n;
    end
    
    compamp = cell2mat(data(:,4));
    compPW = cell2mat(data(:,5));
    if length(unique(compamp))==1
        x = compPW;
    elseif length(unique(compPW))==1
        x = compamp;
    else
        x = zeros(size(compamp));
    end
end