function theta = psyCurve(gamma, lambda, alpha, beta, F)

    theta = gamma + (1 - gamma - lambda).*F;
    
end