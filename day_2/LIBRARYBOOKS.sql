CREATE DATABASE LIBRARYBOOKS;
USE LIBRARYBOOKS;

CREATE TABLE LIBRARYBOOKS (
	BOOKID INT PRIMARY KEY ,
    TITLE VARCHAR(255),
    AUTHOR VARCHAR(255),
    GENER ENUM('Fiction', 'Non-Fiction', 'Fantasy', 'Science Fiction', 'Biography', 'Mystery', 'History', 'Other'),
    PUBLISHEDDATA DATE,
    ISBN VARCHAR(13),
    PAGES INT,
    LANGUAGES VARCHAR(50),
    AVAILABLECOPIES INT,
    SHELFLOCATION VARCHAR(50),
    ADDEDDATE DATE,
    BORROWED ENUM('Yes','No')
);


INSERT INTO LIBRARYBOOKS (BOOKID, TITLE, AUTHOR, GENER, PUBLISHEDDATA, ISBN, Pages, LANGUAGES, AVAILABLECOPIES, SHELFLOCATION, ADDEDDATE, BORROWED)
VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', '1960-07-11', '9780061120084', 281, 'English', 3, 'A1', '2015-05-15', 'No'),
(2, '1984', 'George Orwell', 'Science Fiction', '1949-06-08', '9780451524935', 328, 'English', 1, 'B2', '2017-02-19', 'Yes'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', '1925-04-10', '9780743273565', 180, 'English', 2, 'C1', '2016-08-21', 'No'),
(4, 'A Brief History of Time', 'Stephen Hawking', 'Non-Fiction', '1988-04-01', '9780553380163', 212, 'English', 4, 'D3', '2018-01-30', 'No'),
(5, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Fantasy', '1997-06-26', '9780439708180', 309, 'English', 5, 'F5', '2015-12-02', 'Yes'),
(6, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', '1951-07-16', '9780316769488', 214, 'English', 2, 'A3', '2014-07-19', 'No'),
(7, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', '1937-09-21', '9780345339683', 310, 'English', 3, 'F4', '2019-11-18', 'Yes'),
(8, 'Moby Dick', 'Herman Melville', 'Fiction', '1851-11-14', '9781503280786', 635, 'English', 2, 'B1', '2013-03-27', 'No'),
(9, 'Pride and Prejudice', 'Jane Austen', 'Fiction', '1813-01-28', '9781503290563', 279, 'English', 4, 'C2', '2016-04-11', 'No'),
(10, 'The Da Vinci Code', 'Dan Brown', 'Mystery', '2003-03-18', '9780307474278', 489, 'English', 1, 'E5', '2018-05-21', 'Yes'),
(11, 'The Alchemist', 'Paulo Coelho', 'Fiction', '1988-01-01', '9780061122415', 208, 'English', 6, 'D2', '2012-09-13', 'No'),
(12, 'War and Peace', 'Leo Tolstoy', 'Fiction', '1869-01-01', '9781503275928', 1225, 'Russian', 3, 'B3', '2011-05-22', 'Yes'),
(13, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', '1954-07-29', '9780618640157', 1178, 'English', 2, 'F1', '2014-11-30', 'No'),
(14, 'Gone with the Wind', 'Margaret Mitchell', 'Fiction', '1936-06-30', '9781451635621', 1037, 'English', 4, 'A4', '2016-02-17', 'Yes'),
(15, 'Brave New World', 'Aldous Huxley', 'Science Fiction', '1932-08-31', '9780060850524', 311, 'English', 2, 'B5', '2020-07-09', 'No'),
(16, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Fiction', '1866-01-01', '9780143058144', 430, 'Russian', 1, 'C3', '2013-04-12', 'Yes'),
(17, 'Anna Karenina', 'Leo Tolstoy', 'Fiction', '1877-01-01', '9781593080273', 964, 'Russian', 2, 'C4', '2019-06-25', 'No'),
(18, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Fiction', '1890-06-20', '9780141442464', 254, 'English', 3, 'A2', '2015-08-16', 'Yes'),
(19, 'The Kite Runner', 'Khaled Hosseini', 'Fiction', '2003-05-29', '9781594631931', 371, 'English', 5, 'E1', '2021-01-22', 'No'),
(20, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Non-Fiction', '2011-09-04', '9780062316097', 443, 'English', 2, 'D1', '2018-04-19', 'Yes'),
(21, 'Educated', 'Tara Westover', 'Non-Fiction', '2018-02-20', '9780399590504', 352, 'English', 4, 'D5', '2020-03-15', 'No'),
(22, 'The Road', 'Cormac McCarthy', 'Fiction', '2006-09-26', '9780307387899', 287, 'English', 2, 'A5', '2018-12-11', 'No'),
(23, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Non-Fiction', '2011-10-25', '9780374533557', 499, 'English', 1, 'E3', '2019-08-02', 'Yes'),
(24, 'The Handmaid\'s Tale', 'Margaret Atwood', 'Science Fiction', '1985-08-17', '9780385490818', 311, 'English', 3, 'B4', '2017-01-23', 'No'),
(25, 'The Shining', 'Stephen King', 'Mystery', '1977-01-28', '9780307743657', 659, 'English', 5, 'E4', '2020-10-19', 'Yes');



