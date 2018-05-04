function bool = completeTrial(curr_trial)
    
    if isfield(curr_trial,'Return8') && isfield(curr_trial,'Result')
        bool = 1;
    else
        bool = 0;
    end
end