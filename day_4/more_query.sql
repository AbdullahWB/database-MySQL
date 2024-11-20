SELECT * FROM cwnu.employee;

-- Find all employees working in the 'Research' department.
SELECT E.Fname, E.Lname 
FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.Dno = D.Dnumber
WHERE D.Dname = 'Research';


-- Find employees earning more than 30,000.
SELECT Fname, Lname, Salary 
FROM EMPLOYEE
WHERE Salary > 30000;


-- Get the count of employees in each department.
SELECT D.Dname, COUNT(E.Ssn) AS EmployeeCount
FROM DEPARTMENT D
LEFT JOIN EMPLOYEE E ON D.Dnumber = E.Dno
GROUP BY D.Dname;


-- Find employees supervised by 'John Smith'.
SELECT E.Fname, E.Lname 
FROM EMPLOYEE E
JOIN EMPLOYEE S ON E.Super_ssn = S.Ssn
WHERE S.Fname = 'John' AND S.Lname = 'Smith';


-- List all projects managed by the 'Research' department.
SELECT P.Pname 
FROM PROJECT P
JOIN DEPARTMENT D ON P.Dnum = D.Dnumber
WHERE D.Dname = 'Research';


-- Find projects worked on by 'Franklin Wong'.
SELECT P.Pname 
FROM WORKS_ON W
JOIN PROJECT P ON W.Pno = P.Pnumber
JOIN EMPLOYEE E ON W.Essn = E.Ssn
WHERE E.Fname = 'Franklin' AND E.Lname = 'Wong';


-- Fetch dependents of employees in the 'Research' department.
SELECT D.Dependent_name, D.Relationship 
FROM DEPENDENT D
JOIN EMPLOYEE E ON D.Essn = E.Ssn
WHERE E.Dno = (SELECT Dnumber FROM DEPARTMENT WHERE Dname = 'Research');


-- Find the total salary paid by each department.
SELECT D.Dname, SUM(E.Salary) AS TotalSalary
FROM DEPARTMENT D
JOIN EMPLOYEE E ON D.Dnumber = E.Dno
GROUP BY D.Dname;


-- Find the average salary of employees in the 'Administration' department.
SELECT AVG(E.Salary) AS AvgSalary
FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.Dno = D.Dnumber
WHERE D.Dname = 'Administration';


-- List employees who work on more than 2 projects.
SELECT Fname, Lname 
FROM EMPLOYEE
WHERE Ssn IN (
    SELECT Essn 
    FROM WORKS_ON
    GROUP BY Essn
    HAVING COUNT(Pno) > 2
);


-- Find the names of employees who do not supervise anyone.
SELECT Fname, Lname 
FROM EMPLOYEE
WHERE Ssn NOT IN (SELECT Super_ssn FROM EMPLOYEE WHERE Super_ssn IS NOT NULL);


-- Get employees who work on all projects in the 'Houston' location.
SELECT Fname, Lname
FROM EMPLOYEE
WHERE Ssn IN (
    SELECT Essn 
    FROM WORKS_ON W
    WHERE NOT EXISTS (
        SELECT Pnumber 
        FROM PROJECT
        WHERE Plocation = 'Houston' AND Pnumber NOT IN (SELECT Pno FROM WORKS_ON WHERE Essn = W.Essn)
    )
);

-- List employees, their departments, and the department managers.
SELECT E.Fname, E.Lname, D.Dname, M.Fname AS ManagerFname, M.Lname AS ManagerLname
FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.Dno = D.Dnumber
JOIN EMPLOYEE M ON D.Mgr_ssn = M.Ssn;


-- Find all employees working on the 'Apollo' project.
SELECT E.Fname, E.Lname
FROM EMPLOYEE E
JOIN WORKS_ON W ON E.Ssn = W.Essn
JOIN PROJECT P ON W.Pno = P.Pnumber
WHERE P.Pname = 'Apollo';


-- Find employees with the highest salary in each department.
SELECT E.Fname, E.Lname, E.Salary, D.Dname
FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.Dno = D.Dnumber
WHERE E.Salary = (
    SELECT MAX(Salary)
    FROM EMPLOYEE
    WHERE Dno = D.Dnumber
);


-- Find employees who do not have any dependents.
SELECT Fname, Lname 
FROM EMPLOYEE
WHERE Ssn NOT IN (SELECT Essn FROM DEPENDENT);


-- Find departments that have more than one location.
SELECT D.Dname, COUNT(DL.Dlocation) AS LocationCount
FROM DEPARTMENT D
JOIN DEPT_LOCATIONS DL ON D.Dnumber = DL.Dnumber
GROUP BY D.Dname
HAVING LocationCount > 1;


-- List employees who work fewer than 20 hours on any project.
SELECT DISTINCT E.Fname, E.Lname
FROM EMPLOYEE E
JOIN WORKS_ON W ON E.Ssn = W.Essn
WHERE W.Hours < 20;


-- Get employees and the number of projects they are working on.
SELECT E.Fname, E.Lname, COUNT(W.Pno) AS ProjectCount
FROM EMPLOYEE E
LEFT JOIN WORKS_ON W ON E.Ssn = W.Essn
GROUP BY E.Fname, E.Lname;


-- Find the names of all employees who are in the same department as 'John Smith'.
SELECT Fname, Lname
FROM EMPLOYEE
WHERE Dno = (SELECT Dno FROM EMPLOYEE WHERE Fname = 'John' AND Lname = 'Smith');


-- Find employees who earn more than their department’s average salary.
SELECT E.Fname, E.Lname, E.Salary, D.Dname
FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.Dno = D.Dnumber
WHERE E.Salary > (
    SELECT AVG(Salary) 
    FROM EMPLOYEE 
    WHERE Dno = E.Dno
);


-- Find all department managers who manage at least 5 employees.
SELECT M.Fname, M.Lname, D.Dname, COUNT(E.Ssn) AS EmployeeCount
FROM DEPARTMENT D
JOIN EMPLOYEE M ON D.Mgr_ssn = M.Ssn
JOIN EMPLOYEE E ON D.Dnumber = E.Dno
GROUP BY M.Fname, M.Lname, D.Dname
HAVING EmployeeCount >= 5;





























