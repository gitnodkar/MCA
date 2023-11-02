create database db;
USE db;
CREATE TABLE Borrower (ROLL_NO char(10), NAME varchar(30), ISSUE_DATE datetime, BOOK_NAME varchar(50), STATUS varchar(30));
CREATE TABLE Fine (ROLL_NO char(10), DATE datetime, AMOUNT char(10));
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (1,"Adhir","2023-09-14","MySQL Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (2,"Sam","2023-09-15","Python Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (3,"Vedant","2023-09-12","BigData Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (4,"Dhananjay","2023-08-16","Elon Musk Entrpreneurship Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (5,"Vasishtha","2023-09-01","Cloud Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (6,"Vishwamitra","2023-09-07","Ayurveda Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (7,"Arjun","2023-09-05","Gita Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (8,"Indra","2023-09-10","Monsoon Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (9,"Mukesh","2023-09-09","Business Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (10,"Narendranath","2023-09-08","America History", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (11,"Thackeray","2023-09-14","DIY Guide to remove Immigrants", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (12,"Chaplin","2023-09-02","Laughter Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (13,"Jane","2023-06-14","Rizz Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (14,"Bob","2023-08-27","Builder Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (15,"Saul","2023-08-26","Law Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (16,"Waltuh","2023-08-23","Chemistry Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (17,"Mike","2023-08-29","Parking Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (18,"Jessie","2023-08-20","MySQL Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (19,"Virat","2023-08-13","King Basics", "I");
INSERT INTO Borrower (ROLL_NO, NAME, ISSUE_DATE, BOOK_NAME, STATUS)
VALUES (20,"Mahendra","2023-07-10","Cricket Basics", "I");

CREATE DEFINER='root'@'localhost' PROCEDURE calculate_fine (pRollNo INT,pNameOfBook VARCHAR (50))
BEGIN
DECLARE NoOfDays INT;
DECLARE Fine DECIMAL (6,2);
SET NoOfDays= 0;
SET Fine = 0;
SELECT DATEDIFF (CURDATE(), DateOfIssue) INTO NoOfDays
FROM Borrower WHERE ROLL_NO = pRollNo AND BOOK_NAME = pNameOfBook AND Status 'I';
IF NoOfDays > 30 THEN
SET Fine = 50 * NoOfDays; 
ELSEIF NoOfDays> 15 and NoOfDays <= 30 THEN
SET Fine 5*NoOfDays;
END IF;
NoOfDays > 0 THEN
INSERT INTO Fine (ROLL_NO, DATE, AMOUNT) VALUES (pRollNo, CURDATE(), Fine);
UPDATE Borrower SET Status = 'R' WHERE ROLL_NO = pRollNo AND BOOK_NAME = pNameOfBook AND Status = 'I';
END