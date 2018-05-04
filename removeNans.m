function [noNans1 noNans2] = removeNans(array1,array2)

    notNans_1 = ~isnan(array1);
    if nargin>1
        notNans_2 = ~isnan(array2);
        notNans = notNans_2 & notNans_1;
    else
        notNans = notNans_1;
    end
    noNans1 = array1(notNans);
    if nargin > 1
        noNans2 = array2(notNans);
    end
    
end