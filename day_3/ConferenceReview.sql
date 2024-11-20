CREATE DATABASE ConferenceReview;
USE ConferenceReview;

CREATE TABLE Author(
	EmailID VARCHAR(255) PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100)
);

CREATE TABLE Paper(
	PaperID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255),
    Abstract TEXT,
    FileName VARCHAR(255),
    ContactAuthorEmail VARCHAR(255),
    FOREIGN KEY (ContactAuthorEmail) REFERENCES Author(EmailID)
);

CREATE TABLE Reviewer(
	EmailID VARCHAR(255) PRIMARY KEY,
	FirstName VARCHAR(100),
    LastName VARCHAR(100),
    PhoneNumber VARCHAR(100),
    Affiliation VARCHAR(255),
    TopicsOfInterest TEXT
);

CREATE TABLE Review(
	ReviewID INT PRIMARY KEY AUTO_INCREMENT, 
    PaperID INT,
    ReviewerEmail VARCHAR(255),
    TechnicalMerit INT CHECK(TechnicalMerit BETWEEN 1 AND 10),
    Readability INT CHECK(Readability BETWEEN 1 AND 10),
    Originality INT CHECK(Originality BETWEEN 1 AND 10),
    Relevance INT CHECK(Relevance BETWEEN 1 AND 10),
    Recommendation VARCHAR(10), -- values: Accept or Reject
    CommitteeComments TEXT,
    AuthorFeedback TEXT,
    FOREIGN KEY(PaperID) REFERENCES Paper(PaperID),
    FOREIGN KEY(ReviewerEmail) REFERENCES Reviewer(EmailID) 
);



INSERT INTO Author (EmailID, FirstName, LastName)
VALUES
('john.doe@example.com', 'John', 'Doe'),
('jane.smith@example.com', 'Jane', 'Smith'),
('michael.brown@example.com', 'Michael', 'Brown'),
('emily.white@example.com', 'Emily', 'White'),
('daniel.green@example.com', 'Daniel', 'Green'),
('sophia.williams@example.com', 'Sophia', 'Williams'),
('james.johnson@example.com', 'James', 'Johnson'),
('linda.thomas@example.com', 'Linda', 'Thomas'),
('robert.lee@example.com', 'Robert', 'Lee'),
('elizabeth.taylor@example.com', 'Elizabeth', 'Taylor'),
('kevin.moore@example.com', 'Kevin', 'Moore'),
('olivia.martin@example.com', 'Olivia', 'Martin'),
('william.jackson@example.com', 'William', 'Jackson'),
('emma.harris@example.com', 'Emma', 'Harris'),
('chris.evans@example.com', 'Chris', 'Evans');





INSERT INTO Paper (Title, Abstract, FileName, ContactAuthorEmail)
VALUES
('AI in Healthcare', 'Exploring the use of AI in healthcare settings.', 'ai_healthcare.pdf', 'john.doe@example.com'),
('Blockchain for Security', 'Blockchain technology for secure transactions.', 'blockchain_security.pdf', 'jane.smith@example.com'),
('Quantum Computing', 'Introduction to quantum computing.', 'quantum_computing.pdf', 'michael.brown@example.com'),
('Machine Learning', 'Applications of machine learning in finance.', 'ml_finance.pdf', 'emily.white@example.com'),
('IoT in Smart Cities', 'IoT applications for smart city development.', 'iot_smartcities.pdf', 'daniel.green@example.com'),
('Big Data Analytics', 'Analyzing large datasets with big data tools.', 'bigdata_analytics.pdf', 'sophia.williams@example.com'),
('Cybersecurity Risks', 'Mitigating risks in cybersecurity.', 'cybersecurity_risks.pdf', 'james.johnson@example.com'),
('Data Privacy', 'Protecting user data in modern applications.', 'data_privacy.pdf', 'linda.thomas@example.com'),
('Autonomous Vehicles', 'The future of autonomous driving.', 'autonomous_vehicles.pdf', 'robert.lee@example.com'),
('Natural Language Processing', 'NLP techniques for text analysis.', 'nlp_text.pdf', 'elizabeth.taylor@example.com'),
('Cloud Computing', 'Benefits and challenges of cloud adoption.', 'cloud_computing.pdf', 'kevin.moore@example.com'),
('Edge Computing', 'Edge computing for faster data processing.', 'edge_computing.pdf', 'olivia.martin@example.com'),
('Ethical AI', 'The ethical implications of AI use.', 'ethical_ai.pdf', 'william.jackson@example.com'),
('Deep Learning', 'Deep learning for image recognition.', 'deep_learning.pdf', 'emma.harris@example.com'),
('Virtual Reality', 'Virtual reality applications in gaming.', 'vr_gaming.pdf', 'chris.evans@example.com');





INSERT INTO Reviewer (EmailID, FirstName, LastName, PhoneNumber, Affiliation, TopicsOfInterest)
VALUES
('reviewer1@example.com', 'Alice', 'Wang', '123-456-7890', 'Tech University', 'AI, Machine Learning, Healthcare'),
('reviewer2@example.com', 'Bob', 'Johnson', '321-654-0987', 'City College', 'Blockchain, Security, IoT'),
('reviewer3@example.com', 'Charlie', 'Smith', '456-789-0123', 'Institute of Technology', 'Quantum Computing, Data Privacy'),
('reviewer4@example.com', 'Diana', 'Brown', '789-012-3456', 'Tech Solutions', 'Big Data, Autonomous Vehicles'),
('reviewer5@example.com', 'Edward', 'Garcia', '234-567-8901', 'Smart Tech Corp', 'Cybersecurity, NLP, AI'),
('reviewer6@example.com', 'Fiona', 'Davis', '654-321-0987', 'Research Labs', 'Edge Computing, Cloud Computing'),
('reviewer7@example.com', 'George', 'Miller', '987-654-3210', 'Innovative Solutions', 'Ethical AI, Deep Learning'),
('reviewer8@example.com', 'Hannah', 'Taylor', '876-543-2109', 'Future Tech', 'Quantum Computing, Machine Learning'),
('reviewer9@example.com', 'Isaac', 'Wilson', '765-432-1098', 'NextGen Innovations', 'IoT, Blockchain, Security'),
('reviewer10@example.com', 'Jack', 'Martinez', '654-987-3210', 'City Tech Institute', 'Cloud Computing, Virtual Reality'),
('reviewer11@example.com', 'Karen', 'Anderson', '321-987-6543', 'Tech Revolution', 'Autonomous Vehicles, AI'),
('reviewer12@example.com', 'Liam', 'Thomas', '567-890-1234', 'Data Innovations', 'Deep Learning, Big Data'),
('reviewer13@example.com', 'Mia', 'White', '890-123-4567', 'Tech Labs', 'NLP, Data Privacy'),
('reviewer14@example.com', 'Nathan', 'Harris', '012-345-6789', 'CyberTech', 'Cybersecurity, Security, AI'),
('reviewer15@example.com', 'Olivia', 'Clark', '543-210-9876', 'Cloud Solutions', 'Cloud Computing, Edge Computing');





INSERT INTO Review (PaperID, ReviewerEmail, TechnicalMerit, Readability, Originality, Relevance, Recommendation, CommitteeComments, AuthorFeedback)
VALUES
(1, 'reviewer1@example.com', 8, 7, 9, 8, 'Accept', 'Good paper on AI applications.', 'Thanks for the feedback.'),
(2, 'reviewer2@example.com', 7, 8, 7, 9, 'Accept', 'Well-researched on blockchain.', 'Thank you!'),
(3, 'reviewer3@example.com', 9, 6, 8, 7, 'Reject', 'Lacks practical examples.', 'I will add more examples.'),
(4, 'reviewer4@example.com', 6, 7, 8, 6, 'Reject', 'Needs better structure.', 'Will improve the structure.'),
(5, 'reviewer5@example.com', 8, 8, 8, 9, 'Accept', 'Excellent work on cybersecurity.', 'Glad you liked it.'),
(6, 'reviewer6@example.com', 7, 9, 7, 7, 'Accept', 'Well-organized paper.', 'Appreciate the feedback.'),
(7, 'reviewer7@example.com', 9, 7, 8, 8, 'Accept', 'Strong technical merit.', 'Thank you.'),
(8, 'reviewer8@example.com', 6, 6, 6, 7, 'Reject', 'More depth is needed.', 'Will work on it.'),
(9, 'reviewer9@example.com', 8, 7, 8, 7, 'Accept', 'Good overview on IoT.', 'Thanks for the comments.'),
(10, 'reviewer10@example.com', 7, 8, 9, 8, 'Accept', 'Well-researched work.', 'Appreciate it!'),
(11, 'reviewer11@example.com', 9, 7, 7, 9, 'Accept', 'Thorough research.', 'Thanks!'),
(12, 'reviewer12@example.com', 8, 6, 7, 7, 'Accept', 'Interesting insights.', 'Thanks for the feedback.'),
(13, 'reviewer13@example.com', 7, 9, 7, 8, 'Accept', 'Well-written paper.', 'Appreciate it!'),
(14, 'reviewer14@example.com', 8, 8, 9, 9, 'Accept', 'Impressive research.', 'Thank you.'),
(15, 'reviewer15@example.com', 6, 7, 8, 7, 'Reject', 'Could be more detailed.', 'Will add more details.');
















