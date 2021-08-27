#***************************************************************************
# Script to create ejdesign database & add test data.
# Name		Date		Description
# Jenny	8/27/2021	Initial deployment.
#
#***************************************************************************
DROP DATABASE IF EXISTS ejdesign;
CREATE DATABASE ejdesign;
USE ejdesign;
# Create objects
CREATE TABLE IF NOT EXISTS employee 
(
	employee_id	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	first_name	VARCHAR(255) NOT NULL,
	last_name	VARCHAR(255) NOT NULL,
	email_address	VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS visit
(
	visit_id 	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	first_name	VARCHAR(255) NOT NULL,
	last_name	VARCHAR(255) NOT NULL,
	email_address	VARCHAR(255) NOT NULL,
	visit_reason	VARCHAR(10)  NULL,
	visit_msg	VARCHAR(500) NOT NULL,
	visit_date	DATETIME     NOT NULL,
	employee_id    INT NOT NULL,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

# Insert statements for employee table
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Buster', 'Bronco', 'buster@eva.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Joe', 'Vandal', 'joe@eva.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('CWI', 'Otter', 'otter@eva.com');
	
	# Need 17 more rows
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Aubie', 'Tiger', 'aubie@eva.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Ralphie', 'Buffalo', 'ralphie@eva.com');	
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Cocky', 'Gamecock', 'cocky@eva.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Bucky', 'Badger', 'bucky@eva.com');	
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Sparty', 'Spartan', 'sparty@eva.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Gus', 'Gorilla', 'gus@eva.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('Brutus', 'Buckeye', 'brutus@eva.com');
INSERT INTO employee
	(first_name, last_name, email_address)
VALUES
	('CWI', 'Otter', 'otter@eva.com');



INSERT INTO visit
	(first_name, last_name, email_address, visit_reason, visit_msg, visit_date, employee_id)
VALUES
	('Mickey', 'Mouse', 'mickey@me.com', 'Comment', 'Hello', NOW(), 1);
INSERT INTO visit
	(first_name, last_name, email_address, visit_reason, visit_msg, visit_date, employee_id)
VALUES
	('Minnie', 'Mouse', 'minnie@me.com', 'Question', 'Can I get a quote?', NOW(), 1);
INSERT INTO visit
	(first_name, last_name, email_address, visit_reason, visit_msg, visit_date, employee_id)
VALUES
	('Daisy', 'Duck', 'daisy@me.com', 'Complaint', 'You need longer store hours.', NOW(), 1);
	
	# NeeDs 17 more rows
	
	
