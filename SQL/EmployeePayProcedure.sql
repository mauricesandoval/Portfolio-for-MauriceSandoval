SELECT * FROM AdventureWorks2008R2.Person.Address

CREATE PROCEDURE uspTryCatchTest
AS
BEGIN TRY 
	SELECT  1/0
END TRY
BEGIN CATCH
	SELECT ERROR_NUMBER() AS ErrorNumber
		,ERROR_SEVERITY() AS ErroeSeverity
		,ERROR_STATE() AS ErrorState
		,ERROR_PROCEDURE() AS ErrorProcedure
		,ERROR_LINE() AS ErrorLine
		,ERROR_MESSAGE() AS ErrorMessage;
END CATCH

SELECT * FROM Person.Person
WHERE LastName LIKE 'Ad%';







SELECT * FROM HumanResources.Employee
SELECT * FROM Person.Person
SELECT * FROM HumanResources.EmployeePayHistory



CREATE PROC GetEmployeePayJobTitle @LastName VARCHAR(20), @FirstName VARCHAR(10)
AS
SELECT P.LastName, P.FirstName, PH.Rate, E.JobTitle
FROM Person.Person AS P INNER JOIN HumanResources.EmployeePayHistory AS PH
ON P.BusinessEntityID = PH.BusinessEntityID 
INNER JOIN HumanResources.Employee AS E ON E.BusinessEntityID = PH.BusinessEntityID
WHERE LastName LIKE @LastName + '%' AND FirstName LIKE @FirstName + '%'
GO
 
 
 
 
 
/*select p.LastName, p.FirstName, ph.Rate, E.JobTitle
from Person.Person AS P inner join HumanResources.EmployeePayHistory AS PH ON P.BusinessEntityID = PH.BusinessEntityID  
inner join HumanResources.Employee AS E ON E.BusinessEntityID = PH.BusinessEntityID;*/




EXEC GetEmployeePayJobTitle @LastName = '%_', @FirstName = '%_'

