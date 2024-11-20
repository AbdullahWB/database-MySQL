CREATE DATABASE CWNU;
USE CWNU;

CREATE TABLE DEPARTMENT(
	Dname VARCHAR(30),
    Dnumber INT PRIMARY KEY,
    Mgr_ssn CHAR(9),
    Mgr_start_date DATE
);

CREATE TABLE EMPLOYEE(
	Fname VARCHAR(30),
    Minit CHAR(1),
    Lname VARCHAR(30),
    Ssn CHAR(9) PRIMARY KEY,
    Bdate DATE,
    Address VARCHAR(100),
    Sex CHAR(1),
    Salary DECIMAL(10, 2),
    Super_ssn CHAR(9),
    Dno INT,
    FOREIGN KEY (Super_ssn) REFERENCES EMPLOYEE(Ssn),
    FOREIGN KEY (Dno) REFERENCES DEPARTMENT(Dnumber)
);

CREATE TABLE DEPT_LOCATIONS(
	Dnumber INT,
    Dlocation VARCHAR(50),
    PRIMARY KEY (Dnumber,Dlocation),
    FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber)
);

CREATE TABLE PROJECT(
	Pname VARCHAR(30),
    Pnumber INT PRIMARY KEY,
    Plocation VARCHAR(50),
    Dnum INT,
    FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Dnumber)
);

CREATE TABLE WORKS_ON(
	Essn CHAR(9),
    Pno INT,
	Hours DECIMAL(5,2),
    PRIMARY KEY (Essn, Pno),
    FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn),
    FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber)
);

CREATE TABLE DEPENDENT(
	Essn CHAR(9),
    Dependent_name VARCHAR(30),
    Sex CHAR(1),
    Bdate DATE,
    Relationship VARCHAR(20),
    PRIMARY KEY (Essn, Dependent_name),
    FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn)
);

SHOW DATABASES;
SHOW SCHEMAS;
SHOW DATABASES LIKE 'C%';
SHOW TABLES;
SELECT SCHEMA_NAME
FROM information_schema.SCHEMATA
WHERE schema_name LIKE '%c';
DESCRIBE EMPLOYEE;



INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
VALUES 
    ('John', 'B', 'Smith', '123456789', '1970-01-15', '731 Fondren, Houston, TX', 'M', 30000, NULL, 5),
    ('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, '123456789', 4);
    
INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
VALUES 
	('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, '987654321', 5),
    ('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle, Spring, TX', 'F', 25000, '123456789', 4);
    
INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
VALUES 
	('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, '333445555', 5),
    ('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, '999887777', 5);

INSERT INTO DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
VALUES 
('Research', 5, '333445555', '1988-05-22'),
('Administration', 4, '987654321', '1995-01-01'),
('Headquarters', 1, '888665555', '1981-06-19');


INSERT INTO DEPT_LOCATIONS (Dnumber, Dlocation)
VALUES 
(5, 'Houston'),
(5, 'Bellaire'),
(4, 'Stafford'),
(1, 'Houston');

INSERT INTO PROJECT (Pname, Pnumber, Plocation, Dnum)
VALUES 
('ProductX', 1, 'Bellaire', 5),
('ProductY', 2, 'Sugarland', 5),
('ProductZ', 3, 'Houston', 5),
('Computerization', 10, 'Stafford', 4),
('Reorganization', 20, 'Houston', 1),
('Apollo', 30, 'Houston', 1);

INSERT INTO WORKS_ON (Essn, Pno, Hours)
VALUES 
('123456789', 1, 32.5),
('123456789', 2, 7.5),
('333445555', 2, 10),
('333445555', 3, 10),
('999887777', 10, 35),
('987654321', 20, 20),
('666884444', 30, 30),
('453453453', 30, 5);

INSERT INTO DEPENDENT (Essn, Dependent_name, Sex, Bdate, Relationship)
VALUES 
('123456789', 'Alice', 'F', '1986-04-05', 'Daughter'),
('333445555', 'Michael', 'M', '1988-05-05', 'Son'),
('987654321', 'Elizabeth', 'F', '1967-05-05', 'Spouse'),
('999887777', 'Joy', 'F', '1958-05-03', 'Spouse'),
('666884444', 'Raj', 'M', '1986-01-05', 'Son');









