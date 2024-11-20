CREATE DATABASE Student;
USE Student;

CREATE TABLE Student(
	StudentID INT PRIMARY KEY AUTO_INCREMENT,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Gender ENUM('male','female','other'),
	DateOfBirth DATE
);

CREATE TABLE Course(
	CourseID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    Descriptions TEXT,
    CreditHours INT
);

CREATE TABLE Enrollment(
	EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentData DATE,
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);


INSERT INTO Student (FirstName, LastName, Gender, DateOfBirth)
VALUES 
('John', 'Doe', 'male', '2000-05-21'),
('Jane', 'Smith', 'female', '1999-07-11'),
('Alice', 'Johnson', 'female', '2001-01-25'),
('Bob', 'Brown', 'male', '1998-03-14'),
('Charlie', 'Davis', 'other', '2002-12-05'),
('Emily', 'White', 'female', '1997-09-10'),
('Michael', 'Williams', 'male', '2000-02-18'),
('Sophia', 'Martinez', 'female', '2001-06-07'),
('James', 'Clark', 'male', '1999-11-29'),
('Olivia', 'Taylor', 'female', '1998-04-30'),
('Liam', 'Lee', 'male', '2001-03-19'),
('Noah', 'Anderson', 'male', '2002-08-17'),
('Emma', 'Thomas', 'female', '2003-10-14'),
('Lucas', 'Harris', 'male', '1997-12-22'),
('Mia', 'Jackson', 'female', '1999-06-20');



INSERT INTO Course (Title, Descriptions, CreditHours)
VALUES 
('Introduction to Computer Science', 'Basic concepts of programming and computer science', 4),
('Calculus I', 'Fundamental principles of calculus including differentiation and integration', 3),
('English Literature', 'Study of classic English literature from the 18th century onwards', 3),
('Data Structures', 'In-depth exploration of data structures and algorithms', 4),
('Psychology 101', 'Introduction to basic principles of psychology', 3),
('Physics I', 'Fundamental concepts in mechanics and thermodynamics', 4),
('Sociology', 'Study of society, social institutions, and relationships', 3),
('World History', 'Comprehensive study of world history and civilizations', 3),
('Database Management', 'Fundamentals of database design, SQL, and transactions', 4),
('Statistics', 'Introduction to statistical methods and analysis', 3),
('Artificial Intelligence', 'Study of AI concepts, machine learning, and neural networks', 4),
('Discrete Mathematics', 'Mathematical structures used in computer science', 3),
('Environmental Science', 'Overview of environmental issues and sustainability', 3),
('Creative Writing', 'Practice and analysis of writing fiction, poetry, and non-fiction', 3),
('Economics', 'Introduction to economic principles and theory', 3);




INSERT INTO Enrollment (StudentID, CourseID, EnrollmentData, Grade)
VALUES
(1, 1, '2023-08-25', 'A'),
(2, 2, '2023-08-26', 'B'),
(3, 3, '2023-08-27', 'A'),
(4, 4, '2023-08-28', 'C'),
(5, 5, '2023-08-29', 'B'),
(6, 6, '2023-08-30', 'A'),
(7, 7, '2023-08-31', 'B'),
(8, 8, '2023-09-01', 'A'),
(9, 9, '2023-09-02', 'C'),
(10, 10, '2023-09-03', 'A'),
(11, 11, '2023-09-04', 'B'),
(12, 12, '2023-09-05', 'A'),
(13, 13, '2023-09-06', 'C'),
(14, 14, '2023-09-07', 'B'),
(15, 15, '2023-09-08', 'A');

