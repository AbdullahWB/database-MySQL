SELECT * FROM cwnu.department;
SELECT * FROM cwnu.dependent;
SELECT * FROM cwnu.employee;
SELECT * FROM cwnu.project;
SELECT * FROM cwnu.works_on;
SELECT * FROM cwnu.employee;
SELECT * FROM cwnu.dept_locations;

SELECT CONCAT(Fname, ' ', Lname) AS Name, dno, salary
FROM Employee;

SELECT CONCAT(Fname, ' ', Lname) AS Name, dno, ssn
FROM Employee;

SELECT Dname,(
	SELECT Dlocation 
    FROM DEPT_LOCATIONS 
    WHERE DEPT_LOCATIONS.Dnumber = DEPARTMENT.Dnumber
) AS Dlocation 
FROM DEPARTMENT LIMIT 2;


SELECT CONCAT(Fname, ' ', Lname) AS FullName,
(
	SELECT Dependent_name
    FROM dependent
    WHERE dependent.Essn = employee.Ssn
) AS Dependent_name
FROM employee;


SELECT CONCAT(Fname, ' ', Lname) AS FullName
FROM employee WHERE Salary =
(
	SELECT max(Salary)
    FROM employee
);

SELECT CONCAT(Fname, ' ', Lname) AS FullName 
FROM employee
WHERE Dno = 
(
	SELECT Dnumber
    FROM department
    WHERE Dname = 'Research'
);

SELECT e.Fname, e.Lname
FROM employee e 
WHERE e.Salary > (SELECT AVG(Salary) FROM employee WHERE Dno = e.Dno);

SELECT fname, lname, Salary
FROM employee
WHERE Salary > (SELECT AVG(Salary) FROM employee WHERE Dno = 5);


SELECT Fname, Lname 
FROM employee
WHERE Ssn IN
(
	SELECT Essn 
    FROM works_on 
    WHERE pno IN 
    (
		SELECT Pnumber 
        FROM project 
        WHERE pname = 'ProductX'
    )
);



DELETE FROM employee
WHERE Ssn = '123456789';

DELETE FROM dependent
WHERE Essn = '123456789';

DELETE FROM works_on
WHERE Essn = '123456789';


UPDATE employee SET Salary = 125000 WHERE Ssn = '123';

SELECT fname, lname
FROM employee
WHERE ssn = '123';

UPDATE employee
SET Salary = Salary * 1.1
WHERE ssn = '123456789';

UPDATE department
SET Mgr_ssn = '987654321',
Mgr_start_date = '2024-01-01'
WHERE Dnumber = 3;

SET SQL_SAFE_UPDATES = 1;
UPDATE employee
SET salary = salary * 1.5;

UPDATE project
SET Plocation = 'New York'
WHERE Pname = 'ProductX';

UPDATE DEPENDENT 
SET Relationship = 'Son' 
WHERE Essn = '123456789' AND Dependent_name = 'John';


SELECT Fname, Lname 
FROM employee
WHERE Salary > 50000;

SELECT * FROM department
WHERE Mgr_ssn
IS NOT NULL;


SELECT Dlocation
FROM dept_locations
WHERE Dnumber = (
	SELECT Dnumber
	FROM department
	WHERE Dname = 'Research'
);

-- SELECT Fname, Lname, (SELECT AVG())


SELECT Pname
FROM project
WHERE Plocation = 'Houston';

SELECT Fname, Lname, salary
FROM employee
WHERE  Salary > 150000 AND Ssn IN 
(
	SELECT Essn
    FROM works_on
    WHERE Pno IN 
    (
		SELECT Pnumber
		FROM project
		WHERE Plocation = 'Houston'
	)
);


-- SELECT COUNT(*)

 











