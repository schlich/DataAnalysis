function recordThresholds(thresholds,curveID)

      makeInsertQuery('jnddata.thresholds',{'curveID','HR'},{curveID,thresholds.HR})
      
end