-- Insert data Script (AI Test data) CFG C/W SR

-- Select Database
USE Regulatory_Tracker


-- DELETE FROM TEST
DELETE FROM Projects;
DELETE FROM Duty_Holder;
DELETE FROM Compliance_Review;

-- check count
SELECT COUNT(*) FROM projects;
SELECT COUNT(*) FROM duty_holder;
SELECT COUNT(*) FROM compliance_review;


-- reset autoincrement

ALTER TABLE Compliance_Review AUTO_INCREMENT = 1;
ALTER TABLE Duty_Holder AUTO_INCREMENT = 1;

-- insert data into project table (AI created test data)

INSERT INTO Projects
VALUES
('Q26-100','Riverside Apartments','Birmingham','Residential','ABC Developments Ltd','joe.jones@abcdevelopments.co.uk','Technical Design','Gateway 2','2026-01-15','2027-06-30'),
('Q26-101','Central Office Refurbishment','Manchester','Commercial','North West Estates Ltd','sarah.smith@northwestestates.co.uk','Construction','Not Applicable','2026-02-01','2026-12-01'),
('Q26-102','Green Park Energy Centre','Leeds','Energy','Green Energy UK Ltd','michael.brown@greenenergyuk.co.uk','Concept Design','Gateway 1','2026-03-10','2027-09-15'),
('Q26-103','Westside Care Home','Worcester','Healthcare','Care Services Group','emma.wilson@careservicesgroup.co.uk','Technical Design','Gateway 2','2026-04-01','2027-08-30'),
('Q26-104','City Academy Extension','Coventry','Education','Midlands Education Trust','david.evans@midlandseducationtrust.org.uk','Spatial Design','Gateway 1','2026-05-12','2027-05-31'),
('Q26-105','Retail Park Expansion','Nottingham','Retail','Retail Estates Ltd','lisa.taylor@retailestates.co.uk','Construction','Not Applicable','2026-01-20','2026-11-30'),
('Q26-106','East Midlands Logistics Hub','Derby','Industrial','Logistics UK Ltd','andrew.clark@logisticsuk.co.uk','Technical Design','Gateway 2','2026-06-01','2027-12-15'),
('Q26-107','Student Accommodation Block','Bristol','Residential','Urban Living Ltd','olivia.green@urbanliving.co.uk','Concept Design','Gateway 1','2026-07-15','2028-01-31'),
('Q26-108','Community Health Centre','Gloucester','Healthcare','NHS Property Services','james.white@nhspropertyservices.nhs.uk','Spatial Design','Gateway 1','2026-02-15','2027-04-30'),
('Q26-109','Innovation Science Park','Cambridge','Commercial','Future Labs Ltd','charlotte.harris@futurelabs.co.uk','Strategy','Gateway 1','2026-08-01','2028-03-31'),
('Q26-110','Riverside Towers Phase 2','Birmingham','Residential', 'ABC Developments Ltd','joe.jones@abcdevelopments.co.uk','Concept Design','Gateway 1','2026-09-01','2028-06-30'),
('Q26-111','Northside Assisted Living Scheme','Hereford','Healthcare','Care Services Group','emma.wilson@careservicesgroup.co.uk','Spatial Design','Gateway 1','2026-10-01','2028-02-28');

-- insert data into duty holder table (AI created test data)

INSERT INTO Duty_Holder
(project_id, dutyholder_role, organisation_name, contact_name, contact_email)
VALUES

('Q26-100','Client','ABC Developments Ltd','Joe Jones','joe.jones@abcdevelopments.co.uk'),
('Q26-100','Principal Designer (CDM)','Summit Compliance Ltd','Alex Turner','alex.turner@summitcompliance.co.uk'),
('Q26-100','Building Regulations Principal Designer','Apex Building Safety Ltd','Rachel Moore','rachel.moore@apexbuildingsafety.co.uk'),
('Q26-100','Fire Safety Advisor','Ignis Fire Consultants Ltd','Sam Taylor','sam.taylor@ignisfire.co.uk'),

('Q26-101','Client','North West Estates Ltd','Sarah Smith','sarah.smith@northwestestates.co.uk'),
('Q26-101','Principal Designer (CDM)','Vertex Safety Solutions Ltd','Daniel Cooper','daniel.cooper@vertexsafety.co.uk'),
('Q26-101','Building Regulations Principal Designer','Pinnacle Compliance Ltd','Laura Bennett','laura.bennett@pinnaclecompliance.co.uk'),
('Q26-101','Fire Safety Advisor','Phoenix Fire Engineering Ltd','Ben Foster','ben.foster@phoenixfire.co.uk'),

('Q26-102','Client','Green Energy UK Ltd','Michael Brown','michael.brown@greenenergyuk.co.uk'),
('Q26-102','Principal Designer (CDM)','Summit Compliance Ltd','Alex Turner','alex.turner@summitcompliance.co.uk'),
('Q26-102','Building Regulations Principal Designer','Vertex Safety Solutions Ltd','Daniel Cooper','daniel.cooper@vertexsafety.co.uk'),
('Q26-102','Fire Safety Advisor','FireSafe Design Ltd','Hannah Price','hannah.price@firesafedesign.co.uk'),

('Q26-103','Client','Care Services Group','Emma Wilson','emma.wilson@careservicesgroup.co.uk'),
('Q26-103','Principal Designer (CDM)','Pinnacle Compliance Ltd','Laura Bennett','laura.bennett@pinnaclecompliance.co.uk'),
('Q26-103','Building Regulations Principal Designer','Apex Building Safety Ltd','Rachel Moore','rachel.moore@apexbuildingsafety.co.uk'),
('Q26-103','Fire Safety Advisor','Ember Risk Consultants Ltd','Tom Walker','tom.walker@emberrisk.co.uk'),

('Q26-104','Client','Midlands Education Trust','David Evans','david.evans@midlandseducationtrust.org.uk'),
('Q26-104','Principal Designer (CDM)','Vertex Safety Solutions Ltd','Daniel Cooper','daniel.cooper@vertexsafety.co.uk'),
('Q26-104','Building Regulations Principal Designer','Pinnacle Compliance Ltd','Laura Bennett','laura.bennett@pinnaclecompliance.co.uk'),
('Q26-104','Fire Safety Advisor','Ignis Fire Consultants Ltd','Sam Taylor','sam.taylor@ignisfire.co.uk'),

('Q26-105','Client','Retail Estates Ltd','Lisa Taylor','lisa.taylor@retailestates.co.uk'),
('Q26-105','Principal Designer (CDM)','Summit Compliance Ltd','Alex Turner','alex.turner@summitcompliance.co.uk'),
('Q26-105','Building Regulations Principal Designer','Apex Building Safety Ltd','Rachel Moore','rachel.moore@apexbuildingsafety.co.uk'),
('Q26-105','Fire Safety Advisor','Phoenix Fire Engineering Ltd','Ben Foster','ben.foster@phoenixfire.co.uk'),

('Q26-106','Client','Logistics UK Ltd','Andrew Clark','andrew.clark@logisticsuk.co.uk'),
('Q26-106','Principal Designer (CDM)','Pinnacle Compliance Ltd','Laura Bennett','laura.bennett@pinnaclecompliance.co.uk'),
('Q26-106','Building Regulations Principal Designer','Vertex Safety Solutions Ltd','Daniel Cooper','daniel.cooper@vertexsafety.co.uk'),
('Q26-106','Fire Safety Advisor','FireSafe Design Ltd','Hannah Price','hannah.price@firesafedesign.co.uk'),

('Q26-107','Client','Urban Living Ltd','Olivia Green','olivia.green@urbanliving.co.uk'),
('Q26-107','Principal Designer (CDM)','Vertex Safety Solutions Ltd','Daniel Cooper','daniel.cooper@vertexsafety.co.uk'),
('Q26-107','Building Regulations Principal Designer','Apex Building Safety Ltd','Rachel Moore','rachel.moore@apexbuildingsafety.co.uk'),
('Q26-107','Fire Safety Advisor','Ember Risk Consultants Ltd','Tom Walker','tom.walker@emberrisk.co.uk'),

('Q26-108','Client','NHS Property Services','James White','james.white@nhspropertyservices.nhs.uk'),
('Q26-108','Principal Designer (CDM)','Summit Compliance Ltd','Alex Turner','alex.turner@summitcompliance.co.uk'),
('Q26-108','Building Regulations Principal Designer','Pinnacle Compliance Ltd','Laura Bennett','laura.bennett@pinnaclecompliance.co.uk'),
('Q26-108','Fire Safety Advisor','Ignis Fire Consultants Ltd','Sam Taylor','sam.taylor@ignisfire.co.uk'),

('Q26-109','Client','Future Labs Ltd','Charlotte Harris','charlotte.harris@futurelabs.co.uk'),
('Q26-109','Principal Designer (CDM)','Vertex Safety Solutions Ltd','Daniel Cooper','daniel.cooper@vertexsafety.co.uk'),
('Q26-109','Building Regulations Principal Designer','Apex Building Safety Ltd','Rachel Moore','rachel.moore@apexbuildingsafety.co.uk'),
('Q26-109','Fire Safety Advisor','Phoenix Fire Engineering Ltd','Ben Foster','ben.foster@phoenixfire.co.uk'),

('Q26-110','Client','ABC Developments Ltd','Joe Jones','joe.jones@abcdevelopments.co.uk'),
('Q26-110','Principal Designer (CDM)','Pinnacle Compliance Ltd','Laura Bennett','laura.bennett@pinnaclecompliance.co.uk'),
('Q26-110','Building Regulations Principal Designer','Vertex Safety Solutions Ltd','Daniel Cooper','daniel.cooper@vertexsafety.co.uk'),
('Q26-110','Fire Safety Advisor','FireSafe Design Ltd','Hannah Price','hannah.price@firesafedesign.co.uk'),

('Q26-111','Client','Care Services Group','Emma Wilson','emma.wilson@careservicesgroup.co.uk'),
('Q26-111','Principal Designer (CDM)','Summit Compliance Ltd','Alex Turner','alex.turner@summitcompliance.co.uk'),
('Q26-111','Building Regulations Principal Designer','Pinnacle Compliance Ltd','Laura Bennett','laura.bennett@pinnaclecompliance.co.uk'),
('Q26-111','Fire Safety Advisor','Ember Risk Consultants Ltd','Tom Walker','tom.walker@emberrisk.co.uk');

-- insert data into compliance review table (AI created test data)

INSERT INTO Compliance_Review
(project_id, dutyholder_id, compliance_area, review_type, review_date,
compliance_score, high_risk_items, actions_required,
review_status, next_review_date)

VALUES

('Q26-100',2,'CDM','Design Review','2026-07-01',85.00,2,3,'Review Required','2026-09-01'),
('Q26-100',3,'Building Regulations','Gateway Review','2026-07-05',91.00,1,1,'Compliant','2026-10-01'),
('Q26-100',4,'Fire Safety','Compliance Audit','2026-07-08',78.00,4,5,'Review Required','2026-09-15'),

('Q26-101',6,'CDM','Site Visit','2026-07-10',94.00,0,0,'Compliant','2026-10-10'),
('Q26-101',7,'Building Regulations','Design Review','2026-07-12',88.00,2,2,'Review Required','2026-09-12'),
('Q26-101',8,'Fire Safety','Compliance Audit','2026-07-14',70.00,5,6,'Non-Compliant','2026-08-15'),

('Q26-102',10,'CDM','Gateway Review','2026-07-15',89.00,1,2,'Compliant','2026-10-15'),
('Q26-102',11,'Building Regulations','Design Review','2026-07-18',83.00,3,3,'Review Required','2026-09-18'),
('Q26-102',12,'Fire Safety','Site Visit','2026-07-20',92.00,1,1,'Compliant','2026-10-20'),

('Q26-103',14,'CDM','Compliance Audit','2026-07-22',76.00,4,4,'Review Required','2026-08-22'),
('Q26-103',15,'Building Regulations','Gateway Review','2026-07-24',87.00,2,2,'Compliant','2026-10-24'),
('Q26-103',16,'Fire Safety','Design Review','2026-07-26',73.00,5,4,'Non-Compliant','2026-08-26'),

('Q26-104',18,'CDM','Design Review','2026-07-28',90.00,1,1,'Compliant','2026-10-28'),
('Q26-104',19,'Building Regulations','Gateway Review','2026-07-29',84.00,2,2,'Review Required','2026-09-29'),
('Q26-104',20,'Fire Safety','Site Visit','2026-07-30',88.00,1,1,'Compliant','2026-10-30'),

('Q26-105',22,'CDM','Compliance Audit','2026-08-01',79.00,3,4,'Review Required','2026-09-01'),
('Q26-105',23,'Building Regulations','Design Review','2026-08-02',92.00,0,1,'Compliant','2026-11-02'),
('Q26-105',24,'Fire Safety','Gateway Review','2026-08-04',81.00,2,3,'Review Required','2026-10-04'),

('Q26-106',26,'CDM','Site Visit','2026-08-05',95.00,0,0,'Compliant','2026-11-05'),
('Q26-106',27,'Building Regulations','Compliance Audit','2026-08-07',89.00,1,1,'Compliant','2026-11-07'),
('Q26-106',28,'Fire Safety','Design Review','2026-08-08',77.00,3,5,'Review Required','2026-09-08'),

('Q26-107',30,'CDM','Gateway Review','2026-08-10',82.00,2,2,'Review Required','2026-10-10'),
('Q26-107',31,'Building Regulations','Design Review','2026-08-12',90.00,1,1,'Compliant','2026-11-12'),
('Q26-107',32,'Fire Safety','Compliance Audit','2026-08-14',68.00,6,7,'Non-Compliant','2026-09-14'),

('Q26-108',34,'CDM','Site Visit','2026-08-15',91.00,1,1,'Compliant','2026-11-15'),
('Q26-108',35,'Building Regulations','Gateway Review','2026-08-17',87.00,2,2,'Review Required','2026-10-17'),
('Q26-108',36,'Fire Safety','Design Review','2026-08-18',84.00,2,2,'Compliant','2026-11-18'),

('Q26-109',38,'CDM','Compliance Audit','2026-08-20',93.00,0,1,'Compliant','2026-11-20'),
('Q26-109',39,'Building Regulations','Design Review','2026-08-22',86.00,1,2,'Review Required','2026-10-22'),
('Q26-109',40,'Fire Safety','Gateway Review','2026-08-24',80.00,3,3,'Review Required','2026-10-24'),

('Q26-110',42,'CDM','Site Visit','2026-08-25',88.00,2,2,'Review Required','2026-10-25'),
('Q26-110',43,'Building Regulations','Compliance Audit','2026-08-26',94.00,0,0,'Compliant','2026-11-26'),
('Q26-110',44,'Fire Safety','Design Review','2026-08-27',75.00,4,5,'Review Required','2026-09-27'),

('Q26-111',46,'CDM','Gateway Review','2026-08-28',84.00,2,3,'Review Required','2026-10-28'),
('Q26-111',47,'Building Regulations','Design Review','2026-08-29',89.00,1,1,'Compliant','2026-11-29'),
('Q26-111',48,'Fire Safety','Compliance Audit','2026-08-30',72.00,5,6,'Non-Compliant','2026-09-30');
