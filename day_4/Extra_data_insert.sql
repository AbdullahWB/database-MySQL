-- insert --

INSERT INTO DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date) 
VALUES
	('BIO',11,'123456789','2024-01-01'),
    ('CHEM',12,'234567890','2024-02-01'),
    ('PHY',13,'234567890','2024-02-01');


Insert INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) 
VALUES ('Awais', 'A', 'Ahmed', '123', '1985-06-15', '123 Elm St', 'M', 50000, NULL, 1),
('Basit', 'A', 'Ali', '345', '1990-07-20', '456 Oak St', 'F', 60000, '123', 1);


INSERT INTO DEPT_LOCATIONS (Dnumber, Dlocation) 
VALUES 
(11, 'New York'),
(12, 'Los Angeles');

Insert INTO PROJECT (Pname, Pnumber, Plocation, Dnum) 
VALUES 
('ProductX', 101, 'New York', 1),
('ProductY', 102, 'Los Angeles', 5);


Insert INTO WORKS_ON (Essn, Pno, Hours) 
VALUES 
('123', 101, 20.5),
('345', 102, 35.0);

Insert INTO DEPENDENT (Essn, Dependent_name, Sex, Bdate, Relationship) 
VALUES 
('123', 'Aiza', 'F', '2021-09-23', 'Daughter'),
('345', 'Bob', 'M', '2018-03-10', 'Son');

-- insert --