SELECT * FROM student.course;
SELECT * FROM student.enrollment;
SELECT * FROM student.student;

SELECT Title, 
(
	SELECT Grade FROM Enrollment 
    WHERE StudentID = 1 AND CourseID = Course.CourseID
)
AS Grade  FROM Course WHERE EXISTS 
(
	SELECT * FROM Enrollment 
    WHERE Enrollment.CourseID = Course.CourseID AND StudentID = 1
);


SELECT Title,
(
	SELECT COUNT(StudentID)
    FROM Enrollment 
    WHERE Enrollment.CourseID = Course.CourseID
)
AS NumberOfStudents FROM Course;


SELECT FirstName, LastName FROM student
WHERE EXISTS 
(
	SELECT * FROM Enrollment
    WHERE Enrollment.StudentID = Student.StudentID AND Grade = 'A'
);


SELECT FirstName, LastName, 
(
SELECT Title FROM Course 
WHERE CourseID = Enrollment.CourseID
)
AS CourseTitle, Grade 
FROM Student, Enrollment 
WHERE Student.StudentID = Enrollment.StudentID;

