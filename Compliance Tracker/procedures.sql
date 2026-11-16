-- Procedures Script CFG C/W SR

-- Select Database
USE Regulatory_Tracker;

DROP PROCEDURE IF EXISTS High_Risk_Reviews;

-- Stored Procedures 

CREATE PROCEDURE High_Risk_Reviews ()
BEGIN 
	
	SELECT 
		project_id,
		compliance_area,
		compliance_score,
		high_risk_items,
		review_status
	FROM Compliance_Review
	WHERE high_risk_items >= 3
	ORDER BY high_risk_items DESC;
	
END; 

-- check status
SHOW PROCEDURE STATUS
WHERE Db = 'regulatory_tracker';

CALL High_Risk_Reviews();
