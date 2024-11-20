SELECT * FROM conferencereview.author;
SELECT * FROM conferencereview.paper;
SELECT * FROM conferencereview.review;
SELECT * FROM conferencereview.reviewer;



SELECT Paper.PaperID, Paper.Title, Paper.Abstract, Paper.FileName
FROM Paper
WHERE Paper.ContactAuthorEmail = 'john.doe@example.com';


SELECT Reviewer.FirstName, Reviewer.LastName, Reviewer.TopicsOfInterest
FROM Reviewer;


SELECT Paper.PaperID, Paper.Title, AVG(Review.TechnicalMerit) AS AvgTechnicalMerit
FROM Paper
JOIN Review ON Paper.PaperID = Review.PaperID
GROUP BY Paper.PaperID, Paper.Title;



SELECT Paper.PaperID, Paper.Title, Review.Recommendation
FROM Paper
JOIN Review ON Paper.PaperID = Review.PaperID
WHERE Review.Recommendation = 'Accept';



-- SELECT Reviewer.FirstName, Reviewer.LastName, COUNT(Review.PaperID) AS PapersReviewed
-- FROM Reviewer
-- JOIN Review ON Reviewer.EmailID = Review.ReviewerEmail
-- GROUP BY Reviewer.EmailID, Reviewer.FirstName, Reviewer.LastName
-- HAVING COUNT(Review.PaperID) > 1;

SELECT Reviewer.FirstName, Reviewer.LastName, Review.PaperID
FROM Reviewer
LEFT JOIN Review ON Reviewer.EmailID = Review.ReviewerEmail;


SELECT Reviewer.FirstName, Reviewer.LastName, COUNT(Review.PaperID) AS PapersReviewed
FROM Reviewer
JOIN Review ON Reviewer.EmailID = Review.ReviewerEmail
GROUP BY Reviewer.EmailID, Reviewer.FirstName, Reviewer.LastName;



