function setSession(sessionID,curveID)
    
    makeUpdateQuery('jnddata.curves','sessionID',sessionID,['idcurves = ' stringify(curveID)]);
    
end