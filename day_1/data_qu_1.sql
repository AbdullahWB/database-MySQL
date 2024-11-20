SELECT * FROM student.internationalgraduates;

SELECT * FROM student.internationalgraduates
WHERE city != 'New York';

SELECT * FROM student.internationalgraduates
WHERE city = 'New York';

SELECT * FROM student.internationalgraduates
WHERE ScholarshipStatus = 'Yes';

SELECT * FROM student.internationalgraduates
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) >= 25;

SELECT nationality, COUNT(*) AS graduate_count
FROM student.internationalgraduates
GROUP BY nationality;


SELECT nationality, COUNT(*) AS graduate_count
FROM student.internationalgraduates
GROUP BY nationality
HAVING graduate_count >= 2;


SELECT nationality, AVG(gpa) AS avg_gpa
FROM student.internationalgraduates
GROUP BY nationality
HAVING avg_gpa > 3.5;


SELECT University, employmentStatus, COUNT(*) AS graduate_count
FROM student.internationalgraduates
GROUP BY University, employmentStatus;

SELECT ScholarshipStatus, EmploymentStatus FROM student.internationalgraduates
WHERE ScholarshipStatus != 'Yes' AND EmploymentStatus = 'Unemployed';


SELECT Skills FROM student.internationalgraduates
WHERE Skills NOT LIKE '%python%';

SELECT EmploymentStatus, Skills FROM student.internationalgraduates
WHERE Skills LIKE '%python%' AND EmploymentStatus = 'Unemployed';


SELECT Gender, COUNT(*) AS gender
FROM student.internationalgraduates
GROUP BY Gender;


SELECT *
FROM student.internationalgraduates
WHERE WorkExperienceYears = 'Yes';


SELECT Degree, AVG(GPA) AS average_gpa
FROM student.internationalgraduates
GROUP BY Degree;


SELECT LanguagesSpoken
FROM student.internationalgraduates
WHERE LanguagesSpoken LIKE '%English%' AND LanguagesSpoken LIKE '%Spanish%';

SELECT DateOfBirth
FROM internationalgraduates
WHERE YEAR(DateOfBirth) = 1995;


SELECT GPA
FROM student.internationalgraduates
ORDER BY GPA DESC
LIMIT 5;



