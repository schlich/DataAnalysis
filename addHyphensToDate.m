function date = addHyphensToDate(date)
    date = num2str(date);
    date = [date(1:4) '-' date(5:6) '-' date(7:8)];
end