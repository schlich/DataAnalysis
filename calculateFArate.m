function calculateFArate(curveID)

    data = cell2mat(makeSelectQuery('FAs,CRs','jnddata.curves',makeConditionString('idcurves',curveID)));
    FAs = data(1);
    CRs = data(2);
    FArate = FAs/(FAs+CRs);
    makeUpdateQuery('jnddata.curves','FArate',FArate,makeConditionString('idcurves',curveID));
    
end