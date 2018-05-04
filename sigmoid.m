function [y] = sigmoid(A0,x)
    a = A0(1);
    b = A0(2);
    y = 1./(1+exp(-(x-a)./b));
    
end