-- Functions and Joins Script CFG C/W SR

-- Select Database
USE Regulatory_Tracker

-- Function one:- Count and Avergae

SELECT 
review_status,
COUNT(*) AS total_reviews
FROM compliance_review
GROUP BY review_status
ORDER BY total_reviews DESC;

SELECT 
compliance_area,
AVG(compliance_score) AS average_score
FROM compliance_review 
GROUP BY compliance_area 
ORDER BY averaGe_score DESC;


-- Function 2 - Built in functions

SELECT 
UPPER (project_title) AS project_title_upper
FROM projects 
ORDER BY project_title; 

SELECT 
project_title,
DATEDIFF(end_date, start_date) AS project_duration
FROM projects 
ORDER BY project_duration ASC;


-- Join function 1 - Project title and compliance score

SELECT 
	p.project_title,
	cr.compliance_area, 
	cr.compliance_score, 
	cr.review_status
FROM Projects AS p
INNER JOIN Compliance_Review AS cr
	ON p.project_id =cr.project_id
ORDER BY cr.compliance_score DESC;

-- Join function2 -- Title, contact and dutyholder, compliance score. 
SELECT 
	p.project_title, 
	dh.contact_name, 
	dh.dutyholder_role, 
	cr.compliance_area,
	cr.compliance_score, 
	cr.review_status
FROM Projects AS p
INNER JOIN Duty_holder AS dh
	ON p.project_id = dh.project_id
INNER JOIN Compliance_review AS cr
	ON dh.dutyholder_id = cr.dutyholder_id
ORDER BY p.project_title; 
