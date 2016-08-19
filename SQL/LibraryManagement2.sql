CREATE DATABASE LibraryManagement
GO

USE LibraryManagement

GO
--Create Tables

CREATE TABLE BOOK
(
BookId int,
Title Varchar(40),
PublisherName Varchar(40),
);

GO

CREATE TABLE BOOK_AUTHORS
(
BookId int,
AuthorName Varchar(40),
);

GO

CREATE TABLE PUBLISHER
(
Name Varchar(30),
Address Varchar(30),
Phone Varchar(30),
);

GO

CREATE TABLE BOOK_COPIES
(
BookId int,
BranchId Varchar(10),
No_Of_Copies int
);

GO

CREATE TABLE BOOK_LOANS
(
BookId int,
BranchId Varchar(10),
CardNo int,
DateOut Varchar(15),
DueDate Varchar (15)
);

GO

CREATE TABLE LIBRARY_BRANCH
(
BranchId Varchar(10),
BranchName Varchar(30),
Address Varchar(30)
);

GO

CREATE TABLE BORROWER
(
CardNo int,
Name Varchar(40),
Address Varchar(30),
Phone Varchar(15)
);

GO

--SELECT * FROM BOOK
--Insert Values into BOOK
INSERT INTO BOOK
VALUES (1,'Fly Like an Eagle','SimonSchuster'),
	(2,'Desperado','Penguin'),
	(3,'Running on Empty','Chronicle'),
	(4,'The Gambler','DollarBooks'),
	(5,'Diver Down','CityLights'),
	(6,'Scenes From New York','Pearson'),
	(7,'Crazy Train','SimonSchuster'),
	(8,'The Lost Tribe','DBPennyworth'),
	(9,'Wheels in the Sky','King'),
	(10,'Basic Surgery','MedWorks'),
	(11,'Making Money Making Love','Stallion'),
	(12,'El Poco Loco','SimonSchuster'),
	(13,'To The Edge of Time','Penguin'),
	(14,'Dog Daze','Wendt'),
	(15,'Power Players','Pearson'),
	(16,'Loose Lips Sink Ships','StewartInc'),
	(17,'Summer Nights','SimonSchuster'),
	(18,'The Keeper of Time','Fantasia'),
	(19,'CIA Secrets','BigCity'),
	(20,'Swedish Nights','TopPaper'),
	(21,'To Fast for Love','WorldWide'),
	(22,'Team Faction','SimonSchuster'),
	(23,'On With the Show','Pearson'),
	(24,'Poor Boys','CleanWord'),
	(25,'After Midnight','Stallion')

GO

--SELECT * FROM BOOK_AUTHORS
--Insert Values into BOOK_AUTHORS	

INSERT INTO BOOK_AUTHORS
VALUES (1,'Clint Goodman'),
	(2,'Peter Griffin'),
	(3,'Colt Peterson'),
	(4,'Tim Northridge'),
	(5,'Nolan Praytor'),
	(6,'Mark Pohl'),
	(7,'Tony Martinez'),
	(8,'Matt Erwin'),
	(9,'John Pasko'),
	(10,'Bruce Overly'),
	(11,'Ben Brey'),
	(12,'Lemmy Kilmister'),
	(16,'Clint Goodman'),
	(17,'Peter Griffin'),
	(19,'Colt Peterson'),
	(20,'Tim Northridge'),
	(21,'Nolan Praytor'),
	(18,'Mark Pohl'),
	(13,'Tony Martinez'),
	(14,'Matt Erwin'),
	(15,'John Pasko'),
	(24,'Bruce Overly'),
	(23,'Ben Brey'),
	(22,'Lemmy Kilmister'),	
	(25,'Stephen King')
	
GO
	
	--SELECT PublisherName FROM BOOK ORDER BY PublisherName;
	--SELECT * FROM PUBLISHER
	
INSERT INTO PUBLISHER
VALUES('CityLights','547 Howe Ave WA','243-883-0371'),
	('CleanWord','1493 Ford Way NY','305-786-1522'),
	('DBPennyworth','719 Lone Star Blvd TX','812-228-1931'),
	('DollarBooks','62 4th St NY','305-787-8291'),
	('Fantasia','45 Tree Ave WA','243-782-1916'),
	('King','2237 Boone St NY','305-513-2847'),
	('MedWorks','5589 28th St, NY','305-822-4297'),
	('Pearson','923 2nd St SF','415-634-1433'),
	('SimonSchuster','310 Madison Ave NY','305-692-2539'),
	('Stallion','213 Sunset Blvd LA','818-578-3956'),
	('StewartInc','1344 48th St NY','305-534-6093'),
	('TopPaper','345 Broad St NY','305-521-1856'),
	('Wendt','1187 Folsom St SF','415-532-0753'),
	('WorldWide','235 22th St NY','305-877-1469')

GO

--SELECT * FROM LIBRARY_BRANCH

INSERT INTO LIBRARY_BRANCH
VALUES('LB01','Sharpstown','1924 Coffee Rd'),
	('LB02','Central','8294 Central Ave'),
	('LB03','City','281 McHenry Blvd'),
	('LB04','Eagle Heights','2200 Palendale Rd')

GO
	
--SELECT * FROM BOOK_COPIES


INSERT INTO BOOK_COPIES
VALUES(2,'LB01',3),
	(4,'LB01',4),
	(6,'LB01',2),
	(8,'LB01',3),
	(10,'LB01',2),
	(12,'LB01',2),
	(14,'LB01',4),
	(16,'LB01',3),
	(18,'LB01',3),
	(22,'LB01',2),
	(1,'LB02',2),
	(3,'LB02',2),
	(5,'LB02',3),
	(7,'LB02',2),
	(9,'LB02',4),
	(11,'LB02',2),
	(13,'LB02',2),
	(15,'LB02',3),
	(17,'LB02',3),
	(18,'LB02',2),
	(25,'LB02',2),
	(1,'LB03',2),
	(2,'LB03',3),
	(5,'LB03',2),
	(8,'LB03',2),
	(12,'LB03',2),
	(14,'LB03',2),
	(15,'LB03',2),
	(18,'LB03',2),
	(21,'LB03',4),
	(22,'LB03',2),
	(24,'LB03',2),
	(25,'LB03',3),
	(3,'LB04',4),
	(4,'LB04',3),
	(8,'LB04',2),
	(9,'LB04',2),
	(12,'LB04',2),
	(16,'LB04',3),
	(17,'LB04',2),
	(18,'LB04',2),
	(22,'LB04',3),
	(25,'LB04',2)

GO

--SELECT * FROM BORROWER

INSERT INTO BORROWER
VALUES(231,'Glen Frey','16 Eagle Way','818-320-2234'),
	(310,'Steve Winters','358 Staffod St','818-409-3930'),
	(208,'Charlie Downs','286 Fort St','818-567-2807'),
	(453,'Tom Cole','440 Newport Way','818-213-1689'),
	(852,'Bill Corgan','765 Crane St','402-539-8123'),
	(422,'Peter North','233 Fowler Ave','310-468-2045'),
	(165,'Richard Christy','964 Fallon Rd','818-786-3989'),
	(124,'Jim Thomas','843 Adams Ct','402-868-1487')

GO

--SELECT * FROM BOOK_LOANS --use date form: YYYY-MM-DD

INSERT INTO BOOK_LOANS --Sharpstown Library
VALUES(2,'LB01',124,'2015-03-04','2015-05-22'),
	(4,'LB01',165,'2015-10-08','2015-12-08'),
	(6,'LB01',422,'2015-10-04','2016-01-04'),
	(8,'LB01',852,'2015-11-22','2015-05-22'),
	(10,'LB01',453,'2015-08-04','2015-10-04'),
	(12,'LB01',208,'2015-10-05','2015-12-05'),
	(22,'LB01',208,'2015-02-22','2015-04-22'),
	(14,'LB01',310,'2015-09-12','2015-11-12'),
	(16,'LB01',231,'2015-12-19','2016-02-19'),
	(18,'LB01',124,'2015-08-27','2015-10-27'),
	(22,'LB01',165,'2015-03-29','2015-05-29'),
	--Central Library
	(1,'LB02',422,'2015-10-09','2015-12-09'),
	(3,'LB02',852,'2015-02-07','2015-04-07'),
	(5,'LB02',422,'2015-11-29','2016-01-29'),
	(25,'LB02',422,'2015-11-29','2016-01-29'),
	(18,'LB02',422,'2015-11-29','2016-01-29'),
	(2,'LB02',422,'2015-11-29','2016-01-29'),
	(7,'LB02',422,'2015-11-29','2016-01-29'),
	(11,'LB02',422,'2015-11-29','2016-01-29'),
	(7,'LB02',453,'2015-12-29','2016-02-29'),
	(1,'LB02',453,'2015-12-01','2016-02-01'),
	(9,'LB02',165,'2015-04-21','2015-06-21'),
	(11,'LB02',208,'2015-10-05','2015-12-05'),
	(13,'LB02',310,'2015-10-11','2015-12-11'),
	(25,'LB02',310,'2015-09-15','2015-11-15'),
	(15,'LB02',852,'2015-12-12','2016-02-12'),
	(17,'LB02',310,'2015-05-08','2015-07-08'),
	(18,'LB02',165,'2015-05-26','2015-07-26'),
	(25,'LB02',208,'2015-12-07','2016-02-07'),
	--City Library
	(1,'LB03',852,'2015-10-23','2015-12-23'),
	(2,'LB03',422,'2015-12-18','2016-02-18'),
	(5,'LB03',422,'2015-12-02','2016-02-02'),
	(5,'LB03',208,'2015-05-28','2015-07-28'),
	(8,'LB03',165,'2015-09-04','2015-11-04'),
	(12,'LB03',310,'2015-07-11','2015-09-11'),
	(14,'LB03',852,'2015-09-07','2015-11-07'),
	(15,'LB03',231,'2015-11-03','2016-01-03'),
	(18,'LB03',124,'2015-04-14','2015-06-14'),
	(1,'LB03',124,'2015-10-07','2016-02-07'),
	(24,'LB03',124,'2015-12-27','2016-02-27'),
	(21,'LB03',852,'2015-07-08','2015-09-08'),
	(22,'LB03',165,'2015-02-27','2015-04-27'),
	(24,'LB03',208,'2015-12-11','2016-02-11'),
	(25,'LB03',453,'2015-08-14','2015-10-14'),
	--Eagle Heights Library
	(3,'LB04',310,'2015-07-29','2015-09-29'),
	(4,'LB04',165,'2015-04-15','2015-06-15'),
	(8,'LB04',453,'2015-12-05','2016-02-05'),
	(9,'LB04',208,'2015-09-12','2015-11-12'),
	(12,'LB04',852,'2015-12-28','2016-02-28'),
	(22,'LB04',852,'2015-12-28','2016-02-28'),
	(19,'LB04',852,'2015-12-28','2016-02-28'),
	(17,'LB04',852,'2015-12-28','2016-02-28'),
	(19,'LB04',422,'2015-03-13','2015-05-13'),
	(11,'LB04',852,'2015-12-28','2016-02-28'),
	(17,'LB04',208,'2015-10-28','2015-12-28'),
	(18,'LB04',231,'2015-06-26','2015-08-26'),
	(4,'LB04',231,'2015-12-09','2016-02-09'),
	(22,'LB04',422,'2015-05-13','2015-07-13'),
	(25,'LB04',852,'2015-12-11','2016-02-11')
	

/*
SELECT * FROM BOOK_COPIES
SELECT * FROM BOOK WHERE Title = 'The Lost Tribe'
SELECT * FROM LIBRARY_BRANCH WHERE BranchName = 'Sharpstown'
*/




--#1
SELECT DISTINCT BOOK.Title, LIBRARY_BRANCH.BranchName, BOOK_COPIES.No_Of_Copies
FROM BOOK, LIBRARY_BRANCH, BOOK_COPIES
WHERE BranchName = 'Sharpstown' AND Title = 'The Lost Tribe'

GO
--#2
SELECT BookId, BranchName, No_Of_Copies
FROM BOOK, LIBRARY_BRANCH, BOOK_COPIES
WHERE BookId = 8


SELECT Title, BookId
FROM BOOK
WHERE Title = 'The Lost Tribe'
GO
--#3
--SELECT * FROM BORROWER SELECT * FROM BOOK_LOANS
SELECT B.Name, BL.DueDate
FROM BORROWER AS B LEFT OUTER JOIN BOOK_LOANS AS BL
ON B.CardNo = BL.CardNo
WHERE BL.DueDate > = '2015-12-30'
ORDER BY Name ASC;

SELECT DISTINCT Name, DueDate
FROM BORROWER, BOOK_LOANS
WHERE Name LIKE '[a-z]%' AND DueDate < = '2015-12-30';


CREATE PROCEDURE uspBorrowerCount @DueDate varchar(30), @Name varchar(30) OUTPUT
AS
SELECT @Name = COUNT(*)
FROM BORROWER
WHERE DueDate = @DueDate
GO
DECLARE @Name varchar(30)
EXEC uspBorrowerCount @DueDate = [WHERE DATE BETWEEN '01/01/2015' and '12/30/2015'], @Name = @Name OUTPUT
SELECT @Name



SELECT *
FROM BOOK , BOOK_COPIES, LIBRARY_BRANCH
WHERE Title = 'The Lost Tribe' and BranchId = 'LB01'

/*select Company.Company_Id,Company.Company_Name,
    Invoice_Details.Invoice_No, Product_Details.Price
from Company inner join Invoice_Details
    on Company.Company_Id=Invoice_Details.Company_Id
    inner join Product_Details
        on Invoice_Details.Invoice_No= Product_Details.Invoice_No
where Price='70000';*/

--#1	
SELECT BC.No_Of_Copies, B.Title, LB.BranchName
FROM BOOK_COPIES AS BC INNER JOIN BOOK AS B
ON BC.BookId = B.BookId
RIGHT JOIN LIBRARY_BRANCH AS LB
ON LB.BranchId = BC.BranchId
WHERE Title = 'The Lost Tribe' AND BranchName = 'Sharpstown'

--2
SELECT BC.No_Of_Copies, B.Title, LB.BranchName
FROM BOOK_COPIES AS BC INNER JOIN BOOK AS B
ON BC.BookId = B.BookId
RIGHT JOIN LIBRARY_BRANCH AS LB
ON LB.BranchId = BC.BranchId
WHERE Title = 'The Lost Tribe'

--3

/*SELECT *
FROM BOOK_LOANS AS BL INNER JOIN BORROWER AS B
ON BL.CardNo = B.CardNo
ORDER BY DateOut DESC, DueDate DESC;


SELECT BORROWER.Name, BORROWER.CardNo,BOOK_LOANS.DateOut, BOOK_LOANS.DueDate, BOOK_LOANS.BookId
FROM BORROWER INNER JOIN BOOK_LOANS
ON BORROWER.CardNo = BOOK_LOANS.CardNo
WHERE DueDate > '2015-12-30' 
ORDER BY Name DESC, DueDate DESC;*/


SELECT Name
FROM BORROWER
WHERE NOT EXISTS
    (SELECT * 
     FROM BOOK_LOANS
     WHERE BORROWER.CardNo = BOOK_LOANS.CardNo
        AND DueDate > '2015-12-30')
        
--4









