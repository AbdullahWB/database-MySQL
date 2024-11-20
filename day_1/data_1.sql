-- CREATE DATABASE STUDENT;
-- USE STUDENT;

-- CREATE TABLE INTERNATIONALGRADUATES(
--     GRADUATEID INT PRIMARY KEY AUTO_INCREMENT,
--     FIRSTNAME VARCHAR(50) NOT NULL,
--     MIDDLENAME VARCHAR(50) NULL,
--     LASTNAME VARCHAR(50) NOT NULL,
--     GENDER ENUM('MALE', 'FEMALE', 'OTHERS'),
--     DATEOFBIRTH DATE,
--     NATIONALITY VARCHAR(50),
--     CITY VARCHAR(50),	
--     UNIVERSITY VARCHAR(50),
--     DEGREE VARCHAR(50),
--     MAJOR VARCHAR(50),
--     GRADUATIONDATE DATE,
--     GPA DECIMAL(3,2),
--     EMAIL VARCHAR(100),
--     PHONENUMBER VARCHAR(15),
--     ADDRESS VARCHAR(255),
--     SCHOLARSHIPSTATUS ENUM('YES', 'NO'),
--     EMPLOYMENTSTATUS ENUM('EMPLOYED', 'UNEMPLOYED', 'SELF-EMPLOYED'),
--     CURRENTJOBTITLE VARCHAR(100),
--     CURRENTEMPLOYER VARCHAR(100),
--     WORKEXPERIENCEYEARS INT DEFAULT 0,
--     SKILLS VARCHAR(255),
--     LANGUAGESSPOKEN VARCHAR(100),
--     CREATEDAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- );


-- INSERT INTO INTERNATIONALGRADUATES 
-- (FIRSTNAME, LASTNAME, GENDER, DATEOFBIRTH, NATIONALITY, CITY, UNIVERSITY, DEGREE, MAJOR, GRADUATIONDATE, GPA, EMAIL, PHONENUMBER, ADDRESS, SCHOLARSHIPSTATUS, EMPLOYMENTSTATUS, CURRENTJOBTITLE, CURRENTEMPLOYER, WORKEXPERIENCEYEARS, SKILLS, LANGUAGESSPOKEN, CREATEDAT) 
-- VALUES 
-- ('Aisha', 'Khan', 'FEMALE', '1998-05-14', 'Pakistan', 'Beijing', 'Tsinghua University', 'Master''s', 'Computer Science', '2023-07-15', 3.85, 'aisha.khan@example.com', '1234567890', '123 Main St, Beijing, China', 'YES', 'EMPLOYED', 'Software Engineer', 'Tech Solutions', 1, 'Java, Python, Data Analysis', 'English, Mandarin', NOW()),
-- ('John', 'Doe', 'MALE', '1997-11-25', 'USA', 'Shanghai', 'Fudan University', 'Bachelor''s', 'Business Administration', '2022-06-30', 3.60, 'john.doe@example.com', '0987654321', '456 Elm St, Shanghai, China', 'NO', 'UNEMPLOYED', NULL, NULL, 0, 'Marketing, Finance', 'English', NOW()),
-- ('Maria', 'Gomez', 'FEMALE', '1996-03-22', 'Spain', 'Guangzhou', 'Sun Yat-sen University', 'Master''s', 'International Relations', '2024-01-10', 3.90, 'maria.gomez@example.com', '1122334455', '789 Pine St, Guangzhou, China', 'YES', 'SELF-EMPLOYED', 'Consultant', 'Global Insights', 2, 'Negotiation, Research', 'Spanish, English, Mandarin', NOW()),
-- ('Liam', 'Smith', 'MALE', '1995-07-12', 'Canada', 'Shenzhen', 'Peking University', 'Master''s', 'Data Science', '2022-09-10', 3.70, 'liam.smith@example.com', '2233445566', '123 Oak St, Shenzhen, China', 'YES', 'EMPLOYED', 'Data Scientist', 'AI Innovations', 2, 'Python, R, Machine Learning', 'English, French', NOW());

-- INSERT INTO INTERNATIONALGRADUATES (FIRSTNAME, LASTNAME, GENDER, DATEOFBIRTH, NATIONALITY, CITY, UNIVERSITY, DEGREE, MAJOR, GRADUATIONDATE, GPA, EMAIL, PHONENUMBER, ADDRESS, SCHOLARSHIPSTATUS, EMPLOYMENTSTATUS, CURRENTJOBTITLE, CURRENTEMPLOYER, WORKEXPERIENCEYEARS, SKILLS, LANGUAGESSPOKEN, CREATEDAT) 
-- VALUES
-- ('Aisha', 'Khan', 'Female', '1998-05-14', 'Pakistan', 'Beijing', 'Tsinghua University', 'Master\'s', 'Computer Science', '2023-07-15', 3.85, 'aisha.khan@example.com', '1234567890', '123 Main St, Beijing, China', 'Yes', 'Employed', 'Software Engineer', 'Tech Solutions', 1, 'Java, Python, Data Analysis', 'English, Mandarin'),
-- ('John', 'Doe', 'Male', '1997-11-25', 'USA', 'Shanghai', 'Fudan University', 'Bachelor\'s', 'Business Administration', '2022-06-30', 3.60, 'john.doe@example.com', '0987654321', '456 Elm St, Shanghai, China', 'No', 'Unemployed', NULL, NULL, 0, 'Marketing, Finance', 'English'),
-- ('Maria', 'Gomez', 'Female', '1996-03-22', 'Spain', 'Guangzhou', 'Sun Yat-sen University', 'Master\'s', 'International Relations', '2024-01-10', 3.90, 'maria.gomez@example.com', '1122334455', '789 Pine St, Guangzhou, China', 'Yes', 'Self-employed', 'Consultant', 'Global Insights', 2, 'Negotiation, Research', 'Spanish, English, Mandarin'),
-- ('Liam', 'Smith', 'Male', '1995-07-12', 'Canada', 'Shenzhen', 'Peking University', 'Master\'s', 'Data Science', '2022-09-10', 3.70, 'liam.smith@example.com', '2233445566', '123 Oak St, Shenzhen, China', 'Yes', 'Employed', 'Data Scientist', 'AI Innovations', 2, 'Python, R, Machine Learning', 'English, French'),
-- ('Emma', 'Johnson', 'Female', '1999-03-15', 'Australia', 'Hangzhou', 'Zhejiang University', 'Bachelor\'s', 'Environmental Science', '2023-12-20', 3.55, 'emma.johnson@example.com', '3344556677', '456 Maple St, Hangzhou, China', 'No', 'Unemployed', NULL, NULL, 0, 'Environmental Analysis, Research', 'English'),
-- ('Noah', 'Brown', 'Male', '1996-02-22', 'UK', 'Nanjing', 'Nanjing University', 'PhD', 'Physics', '2024-05-25', 3.95, 'noah.brown@example.com', '4455667788', '789 Birch St, Nanjing, China', 'Yes', 'Employed', 'Research Scientist', 'Quantum Labs', 3, 'Quantum Mechanics, Python', 'English, Mandarin'),
-- ('Sophia', 'Williams', 'Female', '1998-10-05', 'Germany', 'Chengdu', 'Sichuan University', 'Master\'s', 'Biomedical Engineering', '2022-11-30', 3.80, 'sophia.williams@example.com', '5566778899', '123 Willow St, Chengdu, China', 'Yes', 'Employed', 'Biomedical Engineer', 'HealthTech', 2, 'MATLAB, Bioinformatics', 'German, English'),
-- ('Oliver', 'Garcia', 'Male', '1997-09-13', 'Mexico', 'Xiamen', 'Xiamen University', 'Bachelor\'s', 'Architecture', '2023-06-05', 3.40, 'oliver.garcia@example.com', '6677889900', '456 Spruce St, Xiamen, China', 'No', 'Self-employed', 'Architect', 'Design Studio', 1, 'AutoCAD, SketchUp', 'Spanish, English'),
-- ('Isabella', 'Martinez', 'Female', '1995-11-17', 'Argentina', 'Harbin', 'Harbin Institute of Technology', 'Master\'s', 'Mechanical Engineering', '2022-04-18', 3.65, 'isabella.martinez@example.com', '7788990011', '789 Cedar St, Harbin, China', 'Yes', 'Employed', 'Mechanical Engineer', 'Innovative Machines', 3, 'CAD, SolidWorks', 'Spanish, English, Mandarin'),
-- ('James', 'Lee', 'Male', '1996-08-30', 'South Korea', 'Xi\'an', 'Xi\'an Jiaotong University', 'PhD', 'Artificial Intelligence', '2024-03-15', 4.00, 'james.lee@example.com', '8899001122', '123 Pine St, Xi\'an, China', 'Yes', 'Employed', 'AI Researcher', 'Future AI Labs', 2, 'Deep Learning, Python', 'Korean, English, Mandarin'),
-- ('Mia', 'Wang', 'Female', '1998-01-10', 'Malaysia', 'Wuhan', 'Wuhan University', 'Bachelor\'s', 'Economics', '2023-05-20', 3.75, 'mia.wang@example.com', '9900112233', '456 Cherry St, Wuhan, China', 'No', 'Employed', 'Economist', 'Global Finances', 1, 'Data Analysis, Financial Modeling', 'Malay, English, Mandarin'),
-- ('Benjamin', 'Davis', 'Male', '1995-12-25', 'USA', 'Suzhou', 'Soochow University', 'Master\'s', 'Materials Science', '2022-07-11', 3.85, 'benjamin.davis@example.com', '1122334455', '789 Oak St, Suzhou, China', 'Yes', 'Employed', 'Materials Engineer', 'EcoTech', 3, 'Material Research, Lab Techniques', 'English, Spanish'),
-- ('Emily', 'Wilson', 'Female', '1997-04-18', 'France', 'Chongqing', 'Chongqing University', 'PhD', 'Civil Engineering', '2024-06-10', 3.90, 'emily.wilson@example.com', '2233445566', '123 Elm St, Chongqing, China', 'Yes', 'Employed', 'Civil Engineer', 'Urban Development Inc.', 4, 'Structural Analysis, AutoCAD', 'French, English'),
-- ('Lucas', 'Moore', 'Male', '1996-07-25', 'Brazil', 'Tianjin', 'Tianjin University', 'Master\'s', 'Chemical Engineering', '2023-08-20', 3.65, 'lucas.moore@example.com', '3344556677', '456 Oak St, Tianjin, China', 'No', 'Self-employed', 'Chemical Consultant', 'Moore Chemicals', 1, 'Process Engineering, Lab Work', 'Portuguese, English'),
-- ('Charlotte', 'Anderson', 'Female', '1999-05-20', 'New Zealand', 'Kunming', 'Yunnan University', 'Bachelor\'s', 'Environmental Science', '2023-09-30', 3.50, 'charlotte.anderson@example.com', '4455667788', '789 Maple St, Kunming, China', 'No', 'Unemployed', NULL, NULL, 0, 'Ecology, Environmental Management', 'English, Mandarin'),
-- ('Henry', 'Taylor', 'Male', '1997-02-11', 'Italy', 'Changsha', 'Hunan University', 'Master\'s', 'Business Administration', '2023-12-01', 3.95, 'henry.taylor@example.com', '5566778899', '123 Oak St, Changsha, China', 'Yes', 'Employed', 'Business Analyst', 'Global Consults', 2, 'Data Analysis, Financial Modeling', 'Italian, English'),
-- ('Amelia', 'Thomas', 'Female', '1996-11-09', 'Russia', 'Dalian', 'Dalian University of Technology', 'PhD', 'Marine Engineering', '2024-02-28', 3.80, 'amelia.thomas@example.com', '6677889900', '456 Cedar St, Dalian, China', 'Yes', 'Employed', 'Marine Engineer', 'Oceanic Technologies', 3, 'Hydrodynamics, MATLAB', 'Russian, English'),
-- ('Daniel', 'Kim', 'Male', '1995-06-22', 'South Korea', 'Jinan', 'Shandong University', 'Master\'s', 'Robotics Engineering', '2023-07-17', 3.75, 'daniel.kim@example.com', '7788990011', '789 Birch St, Jinan, China', 'Yes', 'Employed', 'Robotics Engineer', 'Robotics Innovations', 2, 'Robot Design, Python', 'Korean, English, Mandarin'),
-- ('Evelyn', 'Hernandez', 'Female', '1998-12-19', 'Colombia', 'Zhengzhou', 'Zhengzhou University', 'Bachelor\'s', 'Information Technology', '2023-08-25', 3.70, 'evelyn.hernandez@example.com', '8899001122', '123 Spruce St, Zhengzhou, China', 'No', 'Unemployed', NULL, NULL, 0, 'Network Administration, Python', 'Spanish, English'),
-- ('Matthew', 'White', 'Male', '1997-09-14', 'South Africa', 'Shenyang', 'Northeastern University', 'Master\'s', 'Computer Engineering', '2023-04-18', 3.90, 'matthew.white@example.com', '9900112233', '456 Pine St, Shenyang, China', 'Yes', 'Employed', 'Computer Engineer', 'Tech Masters', 2, 'C++, Java, Hardware Design', 'English, Afrikaans'),
-- ('Abigail', 'Clark', 'Female', '1999-06-13', 'Canada', 'Hefei', 'University of Science and Technology of China', 'Bachelor\'s', 'Physics', '2023-05-11', 3.80, 'abigail.clark@example.com', '1122334455', '789 Cedar St, Hefei, China', 'No', 'Employed', 'Physics Researcher', 'Quantum Dynamics', 1, 'Quantum Mechanics, Research', 'English, French'),
-- ('Jack', 'Rodriguez', 'Male', '1995-10-30', 'Mexico', 'Taiyuan', 'Taiyuan University of Technology', 'PhD', 'Mining Engineering', '2024-08-15', 3.85, 'jack.rodriguez@example.com', '2233445566', '123 Oak St, Taiyuan, China', 'Yes', 'Employed', 'Mining Engineer', 'MineTech', 3, 'Mine Planning, AutoCAD', 'Spanish, English'),
-- ('Scarlett', 'Lopez', 'Female', '1998-03-27', 'Philippines', 'Shijiazhuang', 'Hebei University', 'Bachelor\'s', 'Journalism', '2023-10-01', 3.55, 'scarlett.lopez@example.com', '3344556677', '456 Birch St, Shijiazhuang, China', 'No', 'Self-employed', 'Freelance Journalist', 'Media Insights', 2, 'Writing, Editing', 'Filipino, English'),
-- ('Aiden', 'Martins', 'Male', '1997-05-08', 'Portugal', 'Ningbo', 'University of Nottingham Ningbo', 'Master\'s', 'International Business', '2023-12-22', 3.65, 'aiden.martins@example.com', '4455667788', '789 Elm St, Ningbo, China', 'Yes', 'Employed', 'International Business Analyst', 'Global Enterprises', 2, 'Market Analysis, Business Strategy', 'Portuguese, English');












create database Students;  
Use Students;

CREATE TABLE InternationalGraduates (
    GraduateID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each graduate
    FirstName VARCHAR(50) NOT NULL,              -- Graduate's first name
    LastName VARCHAR(50) NOT NULL,               -- Graduate's last name
    Gender ENUM('Male', 'Female', 'Other'),      -- Gender of the graduate
    DateOfBirth DATE,                             -- Date of birth
    Nationality VARCHAR(50),                      -- Nationality of the graduate
    City VARCHAR(50),                             -- City of origin
    University VARCHAR(100),                      -- University attended
    Degree VARCHAR(100),                          -- Degree obtained
    Major VARCHAR(100),                           -- Major field of study
    GraduationDate DATE,                          -- Date of graduation
    GPA DECIMAL(3, 2),                           -- Grade Point Average
    Email VARCHAR(100),                           -- Email address
    PhoneNumber VARCHAR(15),                      -- Contact number
    Address VARCHAR(255),                         -- Permanent address
    ScholarshipStatus ENUM('Yes', 'No'),         -- Scholarship status
    EmploymentStatus ENUM('Employed', 'Unemployed', 'Self-employed'),  -- Employment status
    CurrentJobTitle VARCHAR(100),                 -- Current job title (if applicable)
    CurrentEmployer VARCHAR(100),                 -- Current employer (if applicable)
    WorkExperienceYears INT DEFAULT 0,           -- Years of work experience
    Skills VARCHAR(255),                          -- Skills and competencies
    LanguagesSpoken VARCHAR(100),                 -- Languages spoken
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Record creation timestamp
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Record update timestamp
);

-- INSERT INTO InternationalGraduates 
-- (FirstName, LastName, Gender, DateOfBirth, Nationality, City, University, Degree, Major, GraduationDate, GPA, Email, PhoneNumber, Address, ScholarshipStatus, EmploymentStatus, CurrentJobTitle, CurrentEmployer, WorkExperienceYears, Skills, LanguagesSpoken, CreatedAt) 
-- VALUES 
-- ('John', 'Doe', 'Male', '1995-05-15', 'American', 'New York', 'Harvard University', 'Bachelor', 'Computer Science', '2020-06-01', 3.75, 'john.doe@example.com', '123-456-7890', '123 Main St, New York, NY', 'Yes', 'Employed', 'Software Engineer', 'Tech Solutions', 3, 'Java, Python, SQL', 'English, Spanish', NOW());

INSERT INTO InternationalGraduates (FirstName, LastName, Gender, DateOfBirth, Nationality, City, University, Degree, Major, GraduationDate, GPA, Email, PhoneNumber, Address, ScholarshipStatus, EmploymentStatus, CurrentJobTitle, CurrentEmployer, WorkExperienceYears, Skills, LanguagesSpoken)
VALUES
('Aisha', 'Khan', 'Female', '1998-05-14', 'Pakistan', 'Beijing', 'Tsinghua University', 'Master\'s', 'Computer Science', '2023-07-15', 3.85, 'aisha.khan@example.com', '1234567890', '123 Main St, Beijing, China', 'Yes', 'Employed', 'Software Engineer', 'Tech Solutions', 1, 'Java, Python, Data Analysis', 'English, Mandarin'),
('John', 'Doe', 'Male', '1997-11-25', 'USA', 'Shanghai', 'Fudan University', 'Bachelor\'s', 'Business Administration', '2022-06-30', 3.60, 'john.doe@example.com', '0987654321', '456 Elm St, Shanghai, China', 'No', 'Unemployed', NULL, NULL, 0, 'Marketing, Finance', 'English'),
('Maria', 'Gomez', 'Female', '1996-03-22', 'Spain', 'Guangzhou', 'Sun Yat-sen University', 'Master\'s', 'International Relations', '2024-01-10', 3.90, 'maria.gomez@example.com', '1122334455', '789 Pine St, Guangzhou, China', 'Yes', 'Self-employed', 'Consultant', 'Global Insights', 2, 'Negotiation, Research', 'Spanish, English, Mandarin'),
('Liam', 'Smith', 'Male', '1995-07-12', 'Canada', 'Shenzhen', 'Peking University', 'Master\'s', 'Data Science', '2022-09-10', 3.70, 'liam.smith@example.com', '2233445566', '123 Oak St, Shenzhen, China', 'Yes', 'Employed', 'Data Scientist', 'AI Innovations', 2, 'Python, R, Machine Learning', 'English, French'),
('Emma', 'Johnson', 'Female', '1999-03-15', 'Australia', 'Hangzhou', 'Zhejiang University', 'Bachelor\'s', 'Environmental Science', '2023-12-20', 3.55, 'emma.johnson@example.com', '3344556677', '456 Maple St, Hangzhou, China', 'No', 'Unemployed', NULL, NULL, 0, 'Environmental Analysis, Research', 'English'),
('Noah', 'Brown', 'Male', '1996-02-22', 'UK', 'Nanjing', 'Nanjing University', 'PhD', 'Physics', '2024-05-25', 3.95, 'noah.brown@example.com', '4455667788', '789 Birch St, Nanjing, China', 'Yes', 'Employed', 'Research Scientist', 'Quantum Labs', 3, 'Quantum Mechanics, Python', 'English, Mandarin'),
('Sophia', 'Williams', 'Female', '1998-10-05', 'Germany', 'Chengdu', 'Sichuan University', 'Master\'s', 'Biomedical Engineering', '2022-11-30', 3.80, 'sophia.williams@example.com', '5566778899', '123 Willow St, Chengdu, China', 'Yes', 'Employed', 'Biomedical Engineer', 'HealthTech', 2, 'MATLAB, Bioinformatics', 'German, English'),
('Oliver', 'Garcia', 'Male', '1997-09-13', 'Mexico', 'Xiamen', 'Xiamen University', 'Bachelor\'s', 'Architecture', '2023-06-05', 3.40, 'oliver.garcia@example.com', '6677889900', '456 Spruce St, Xiamen, China', 'No', 'Self-employed', 'Architect', 'Design Studio', 1, 'AutoCAD, SketchUp', 'Spanish, English'),
('Isabella', 'Martinez', 'Female', '1995-11-17', 'Argentina', 'Harbin', 'Harbin Institute of Technology', 'Master\'s', 'Mechanical Engineering', '2022-04-18', 3.65, 'isabella.martinez@example.com', '7788990011', '789 Cedar St, Harbin, China', 'Yes', 'Employed', 'Mechanical Engineer', 'Innovative Machines', 3, 'CAD, SolidWorks', 'Spanish, English, Mandarin'),
('James', 'Lee', 'Male', '1996-08-30', 'South Korea', 'Xi\'an', 'Xi\'an Jiaotong University', 'PhD', 'Artificial Intelligence', '2024-03-15', 4.00, 'james.lee@example.com', '8899001122', '123 Pine St, Xi\'an, China', 'Yes', 'Employed', 'AI Researcher', 'Future AI Labs', 2, 'Deep Learning, Python', 'Korean, English, Mandarin'),
('Mia', 'Wang', 'Female', '1998-01-10', 'Malaysia', 'Wuhan', 'Wuhan University', 'Bachelor\'s', 'Economics', '2023-05-20', 3.75, 'mia.wang@example.com', '9900112233', '456 Cherry St, Wuhan, China', 'No', 'Employed', 'Economist', 'Global Finances', 1, 'Data Analysis, Financial Modeling', 'Malay, English, Mandarin'),
('Benjamin', 'Davis', 'Male', '1995-12-25', 'USA', 'Suzhou', 'Soochow University', 'Master\'s', 'Materials Science', '2022-07-11', 3.85, 'benjamin.davis@example.com', '1122334455', '789 Oak St, Suzhou, China', 'Yes', 'Employed', 'Materials Engineer', 'EcoTech', 3, 'Material Research, Lab Techniques', 'English, Spanish'),
('Emily', 'Wilson', 'Female', '1997-04-18', 'France', 'Chongqing', 'Chongqing University', 'PhD', 'Civil Engineering', '2024-06-10', 3.90, 'emily.wilson@example.com', '2233445566', '123 Elm St, Chongqing, China', 'Yes', 'Employed', 'Civil Engineer', 'Urban Development Inc.', 4, 'Structural Analysis, AutoCAD', 'French, English'),
('Lucas', 'Moore', 'Male', '1996-07-25', 'Brazil', 'Tianjin', 'Tianjin University', 'Master\'s', 'Chemical Engineering', '2023-08-20', 3.65, 'lucas.moore@example.com', '3344556677', '456 Oak St, Tianjin, China', 'No', 'Self-employed', 'Chemical Consultant', 'Moore Chemicals', 1, 'Process Engineering, Lab Work', 'Portuguese, English'),
('Charlotte', 'Anderson', 'Female', '1999-05-20', 'New Zealand', 'Kunming', 'Yunnan University', 'Bachelor\'s', 'Environmental Science', '2023-09-30', 3.50, 'charlotte.anderson@example.com', '4455667788', '789 Maple St, Kunming, China', 'No', 'Unemployed', NULL, NULL, 0, 'Ecology, Environmental Management', 'English, Mandarin'),
('Henry', 'Taylor', 'Male', '1997-02-11', 'Italy', 'Changsha', 'Hunan University', 'Master\'s', 'Business Administration', '2023-12-01', 3.95, 'henry.taylor@example.com', '5566778899', '123 Oak St, Changsha, China', 'Yes', 'Employed', 'Business Analyst', 'Global Consults', 2, 'Data Analysis, Financial Modeling', 'Italian, English'),
('Amelia', 'Thomas', 'Female', '1996-11-09', 'Russia', 'Dalian', 'Dalian University of Technology', 'PhD', 'Marine Engineering', '2024-02-28', 3.80, 'amelia.thomas@example.com', '6677889900', '456 Cedar St, Dalian, China', 'Yes', 'Employed', 'Marine Engineer', 'Oceanic Technologies', 3, 'Hydrodynamics, MATLAB', 'Russian, English'),
('Daniel', 'Kim', 'Male', '1995-06-22', 'South Korea', 'Jinan', 'Shandong University', 'Master\'s', 'Robotics Engineering', '2023-07-17', 3.75, 'daniel.kim@example.com', '7788990011', '789 Birch St, Jinan, China', 'Yes', 'Employed', 'Robotics Engineer', 'Robotics Innovations', 2, 'Robot Design, Python', 'Korean, English, Mandarin'),
('Evelyn', 'Hernandez', 'Female', '1998-12-19', 'Colombia', 'Zhengzhou', 'Zhengzhou University', 'Bachelor\'s', 'Information Technology', '2023-08-25', 3.70, 'evelyn.hernandez@example.com', '8899001122', '123 Spruce St, Zhengzhou, China', 'No', 'Unemployed', NULL, NULL, 0, 'Network Administration, Python', 'Spanish, English'),
('Matthew', 'White', 'Male', '1997-09-14', 'South Africa', 'Shenyang', 'Northeastern University', 'Master\'s', 'Computer Engineering', '2023-04-18', 3.90, 'matthew.white@example.com', '9900112233', '456 Pine St, Shenyang, China', 'Yes', 'Employed', 'Computer Engineer', 'Tech Masters', 2, 'C++, Java, Hardware Design', 'English, Afrikaans'),
('Abigail', 'Clark', 'Female', '1999-06-13', 'Canada', 'Hefei', 'University of Science and Technology of China', 'Bachelor\'s', 'Physics', '2023-05-11', 3.80, 'abigail.clark@example.com', '1122334455', '789 Cedar St, Hefei, China', 'No', 'Employed', 'Physics Researcher', 'Quantum Dynamics', 1, 'Quantum Mechanics, Research', 'English, French'),
('Jack', 'Rodriguez', 'Male', '1995-10-30', 'Mexico', 'Taiyuan', 'Taiyuan University of Technology', 'PhD', 'Mining Engineering', '2024-08-15', 3.85, 'jack.rodriguez@example.com', '2233445566', '123 Oak St, Taiyuan, China', 'Yes', 'Employed', 'Mining Engineer', 'MineTech', 3, 'Mine Planning, AutoCAD', 'Spanish, English'),
('Scarlett', 'Lopez', 'Female', '1998-03-27', 'Philippines', 'Shijiazhuang', 'Hebei University', 'Bachelor\'s', 'Journalism', '2023-10-01', 3.55, 'scarlett.lopez@example.com', '3344556677', '456 Birch St, Shijiazhuang, China', 'No', 'Self-employed', 'Freelance Journalist', 'Media Insights', 2, 'Writing, Editing', 'Filipino, English'),
('Aiden', 'Martins', 'Male', '1997-05-08', 'Portugal', 'Ningbo', 'University of Nottingham Ningbo', 'Master\'s', 'International Business', '2023-12-22', 3.65, 'aiden.martins@example.com', '4455667788', '789 Elm St, Ningbo, China', 'Yes', 'Employed', 'International Business Analyst', 'Global Enterprises', 2, 'Market Analysis, Business Strategy', 'Portuguese, English');











