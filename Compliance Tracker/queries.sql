-- Queries Script CFG C/W SR

-- Select Database
USE Regulatory_Tracker

-- Query one - Projects by Title and Projects by compliance score

SELECT *
FROM Projects
ORDER BY project_title;

SELECT *
FROM compliance_review
ORDER BY compliance_score DESC; 

-- Query two - Compliance scores below 80

SELECT 
project_id, 
compliance_area,
compliance_score, 
review_status
FROM compliance_review
WHERE compliance_score < 80
ORDER BY compliance_score; 

-- Query three - Duty holders assigned to multiple projects

SELECT 
	contact_name, 
	dutyholder_role,
	organisation_name, 
	COUNT(dh.project_id) AS number_of_projects,
	GROUP_CONCAT(dh.project_id) AS assigned_projects
FROM duty_holder AS dh
GROUP BY 
	dh.contact_name,
	dh.dutyholder_role, 
	dh.organisation_name 
ORDER BY numbeR_of_projects DESC;
