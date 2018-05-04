function trial = addRefAmps(trial)

    if ~isfield(trial,'Amp2');
        trial.Amp2 = 0;
        trial.Width2 = 0;
        trial.Freq2 = 0;
        trial.Dur2 = 0;
    end
    
end