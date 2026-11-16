-- Database Script with three tables CFG C/W SR

-- Create Database

CREATE DATABASE Regulatory_Tracker;

USE Regulatory_Tracker

-- Create projects table - primary table. 

CREATE TABLE Projects(
	project_id VARCHAR (10) PRIMARY KEY,
	project_title VARCHAR (100) NOT NULL,
	project_location VARCHAR (100) NOT NULL,
	project_sector VARCHAR (100) NOT NULL, 
	client_name VARCHAR (100) NOT NULL, 
	client_contact VARCHAR (100) NOT NULL, 
	project_stage VARCHAR (50) NOT NULL, 
	gateway_stage VARCHAR (20) DEFAULT 'Not Applicable',
	start_date DATE NOT NULL, 
	end_date DATE); 
	
-- Create duty holder table - secondary table. 

CREATE TABLE Duty_Holder(
	dutyholder_id INT PRIMARY KEY AUTO_INCREMENT,
	project_id VARCHAR (10) NOT NULL,
	dutyholder_role VARCHAR (50) NOT NULL,
	organisation_name VARCHAR (100) NOT NULL,
	contact_name VARCHAR (100) NOT NULL, 
	contact_email VARCHAR (100) NOT NULL, 
	
	FOREIGN KEY (project_id) REFERENCES Projects(project_id) ); 
	

-- Create compliance review  table - tertiary table. 
	
	CREATE TABLE Compliance_Review (
		review_id INT PRIMARY KEY AUTO_INCREMENT, 
		project_id VARCHAR (10) NOT NULL,
		dutyholder_id INT NOT NULL,
		compliance_area VARCHAR (50) NOT NULL, 
		review_type VARCHAR (50) NOT NULL, 
		review_date DATE NOT NULL,
		compliance_score DECIMAL (5,2),
		high_risk_items INT DEFAULT 0, 
		actions_required INT DEFAULT 0, 
		review_status VARCHAR (50) NOT NULL, 
		next_review_date DATE, 
		
		FOREIGN KEY (PROJECT_ID) REFERENCES PROJECTS(PROJECT_ID),
		FOREIGN KEY (dutyholder_id) REFERENCES Duty_Holder (dutyholder_id)
		); 
		