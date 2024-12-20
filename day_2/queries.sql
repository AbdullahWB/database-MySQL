SELECT * FROM LIBRARYBOOKS.LIBRARYBOOKS;

-- BOOKID, TITLE, AUTHOR, GENER, PUBLISHEDDATA, ISBN, Pages, LANGUAGES, AVAILABLECOPIES, SHELFLOCATION, ADDEDDATE, BORROWED

SELECT TITLE, AUTHOR
FROM LIBRARYBOOKS
WHERE BORROWED = 'Yes';


SELECT TITLE, AUTHOR, PUBLISHEDDATA
FROM LIBRARYBOOKS
WHERE PUBLISHEDDATA > '2000-01-01';


SELECT GENER, COUNT(*) AS TOTAL_BOOKS
FROM LIBRARYBOOKS
WHERE AVAILABLECOPIES > 0
GROUP BY GENER;


SELECT TITLE, AUTHOR, PAGES
FROM librarybooks
WHERE PAGES > 300;


SELECT TITLE, PUBLISHEDDATA
FROM librarybooks
WHERE AUTHOR = 'J.K. Rowling';
