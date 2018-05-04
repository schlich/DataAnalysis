function [x,y] = fit_sigmoid(x_in,y_in)
    xmax = max(x_in);
    x_in = x_in/xmax;
    A0 = [.5, .5];
    A_fit = nlinfit(x_in,y_in,@sigmoid,A0);
    x = linspace(x_in(1),x_in(end));
    y = sigmoid(A_fit,x);
    
    x = x*xmax;
    
end
    