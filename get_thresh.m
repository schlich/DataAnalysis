function thresh = get_thresh(x,y,criteria)

    temp = y>=criteria;
    ind = diff(temp);
    pre_thresh = find(ind==1);
    post_thresh = pre_thresh+1;
    
    slope = (y(post_thresh)-y(pre_thresh))./(x(post_thresh)-x(pre_thresh));
    
    thresh = (1 - y(pre_thresh))./slope + x(pre_thresh);
    
    if isempty(thresh)
        thresh=nan;
    end
    
end