function plotCurvesForSession(sessionID)
    %returns nxm cell array of curves from the day
    
    
    curves = getCurvesFromSession(sessionID);
    
    colors = colormap(winter(length(curves)));
    h = zeros(size(curves));
    for i = 1:length(curves)
        hold on
        h(i) = plotCurveByID(curves(i),colors(i,:));
    end
    
    M = cellstr(num2str(curves(~isnan(h))));
    h = h(~isnan(h));
    legend(h,M);
    
    
end