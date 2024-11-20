CREATE DATABASE StudentTable;
USE StudentTable;

CREATE TABLE Advisor(
	Advisor_ID CHAR(4) PRIMARY KEY,
    Last_Name VARCHAR(15) NOT NULL,
    First_Name VARCHAR(15) NOT NULL
);

CREATE TABLE Course(
	Course_Code CHAR(8) PRIMARY KEY,
    Course_Name VARCHAR(100) NOT NULL,
    Credits INTEGER NOT NULL CHECK (Credits > 0)
);

CREATE TABLE Student(
	ID CHAR(4) PRIMARY KEY,
    First_Name VARCHAR(15) NOT NULL,
    Last_Name VARCHAR(15) NOT NULL,
    Major_Code CHAR(3) NOT NULL,
    Advisor_Code CHAR(4) NOT NULL,
    Credits INTEGER NOT NULL CHECK (Credits > 0),
    FOREIGN KEY (Major_Code) REFERENCES Major(Major_Code),
	FOREIGN KEY (Advisor_Code) REFERENCES Advisor(Advisor_ID),
    UNIQUE (ID)	
);

CREATE TABLE Section(
	Section_ID CHAR(8) PRIMARY KEY,
    Course_ID CHAR(8) NOT NULL,
    TERM CHAR(8) NOT NULL CHECK (Term IN ('Spring', 'Summer', 'Fall', 'Winter')),
    Section_Year CHAR(4) NOT NULL CHECK (Section_Year BETWEEN '1900' AND '2099'),
    Instructor VARCHAR(30) NOT NULL,
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_Code)
);


CREATE TABLE Registration(
	Student_ID CHAR(4),
    Section_ID CHAR(8),
    Grade TEXT(2) NOT NULL CHECK (Grade IN ('A', 'B', 'C', 'D', 'F')),
    PRIMARY KEY (Student_ID, Section_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student(ID),
    FOREIGN KEY (Section_ID) REFERENCES Section(Section_ID)
);


CREATE TABLE Major(
	Major_Code CHAR(3) PRIMARY KEY,
    Major_Name TEXT(30) NOT NULL
);


INSERT INTO Major (Major_Code, Major_Name) VALUES
('CS', 'Computer Science'),
('EE', 'Electrical Engineering'),
('ME', 'Mechanical Engineering'),
('CE', 'Civil Engineering'),
('BIO', 'Biology');

INSERT INTO Advisor (Advisor_ID, Last_Name, First_Name) VALUES
('A100', 'Smith', 'John'),
('A101', 'Johnson', 'Emma'),
('A102', 'Williams', 'Olivia'),
('A103', 'Jones', 'Liam'),
('A104', 'Brown', 'Sophia');

INSERT INTO Student (ID, Last_Name, First_Name, Major_Code, Advisor_Code, Credits) VALUES
('S001', 'Davis', 'James', 'CS', 'A100', 30),
('S002', 'Miller', 'Ava', 'EE', 'A101', 28),
('S003', 'Wilson', 'Noah', 'ME', 'A102', 32),
('S004', 'Moore', 'Isabella', 'CS', 'A100', 27),
('S005', 'Taylor', 'Lucas', 'BIO', 'A103', 24);

INSERT INTO Course (Course_Code, Course_Name, Credits) VALUES
('CS101', 'Introduction to Computer Science', 3),
('CS102', 'Data Structures', 4),
('EE101', 'Circuits and Electronics', 3),
('ME101', 'Mechanics', 3),
('BIO101', 'Biology 101', 3);

INSERT INTO Section (Section_ID, Course_ID, Term, Section_Year, Instructor) VALUES
('SEC01', 'CS101', 'Fall', '2024', 'Dr. Smith'),
('SEC02', 'CS102', 'Spring', '2024', 'Dr. Johnson'),
('SEC03', 'EE101', 'Fall', '2024', 'Dr. Williams'),
('SEC04', 'ME101', 'Spring', '2024', 'Dr. Jones'),
('SEC05', 'BIO101', 'Fall', '2024', 'Dr. Brown');

INSERT INTO Registration (Student_ID, Section_ID, Grade) VALUES
('S001', 'SEC01', 'A'),
('S002', 'SEC03', 'B'),
('S003', 'SEC04', 'C'),
('S004', 'SEC01', 'B'),
('S005', 'SEC05', 'A');

-- Insert a course that has no section
INSERT INTO Course (Course_Code, Course_Name, Credits) VALUES
('CS201', 'Advanced Programming', 3);