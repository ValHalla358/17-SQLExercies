
1.
SELECT CategoryName, Description
FROM Categories 


2.
SELECT c.ContactName, c.CustomerID, c.CompanyName, c.City
FROM Customers c
WHERE c.City = 'London'

3.
Select * FROM Suppliers s
WHERE s.Fax IS NOT NULL

4.
SELECT o.CustomerID, o.RequiredDate, o.Freight
From Orders o 
WHERE o.RequiredDate BETWEEN '1997-01-01' AND '1998-01-01'
AND o.Freight < '100'


5.
Select c.CompanyName, c.ContactName, c.ContactTitle, c.Country
From Customers c
Where c.ContactTitle = 'OWNER'
And c.Country IN( 'Mexico' ,'Sweden','Germany')



SELECT * FROM Products


6.
Select COUNT(p.Discontinued) FROM Products p
Where p.Discontinued = '1'



7.
SELECT c.CategoryName, c.Description
From Categories c
Where c.CategoryName LIKE 'Co%'



8.
Select s.CompanyName, s.City, s.Country, s.PostalCode, s.Address
From Suppliers s
Where s.Address LIKE '%rue%'
ORDER BY s.CompanyName 

Select * FROM Shippers


9.
SELECT od.ProductID, SUM(od.Quantity) AS TotalOrderd
From [Order Details] od
GROUP BY od.ProductID




10.
SELECT o.CustomerID, c.ContactName, c.Address, o.ShipVia  
FROM Orders o Inner Join Customers c
On o.CustomerID=c.CustomerID
Where o.ShipVia=1

SELECT * FROM Products




11.
Select CompanyName, ContactName, ContactTitle, Region  
From Suppliers s 
Where Region IS NOT NULL 
ORDER BY CompanyName



12.
Select p.ProductName, p.CategoryID, c.CategoryName
From Products p Inner Join Categories c 
On p.CategoryID=c.CategoryID
Where c.CategoryID=2


Select * From Orders



13.
Select c.ContactName, o.customerID, o.OrderID
From Customers c Inner Join Orders o 
On o.CustomerID=c.CustomerID
Where o.OrderID IS NULL


14.
INSERT INTO Shippers(CompanyName,Phone)
Values('Amazon','911')

SELECT  OrderID, Freight FROM Orders


15.
UPDATE Shippers
SET CompanyName='Amazon Prime Shipping'
Where ShipperID=4


16.
SELECT s.CompanyName, Round(o.Freight,0) AS FreightRound, o.ShipVia
From Orders o JOIN Shippers s
On o.ShipVia=s.ShipperID
Where o.ShipVia IS NOT NULL



17.
Select LastName+', '+FirstName  AS DisplayName
From Employees


18.
INSERT INTO Customers(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone)
Values('VALS','Origin Code Academy','Valerie Smith','Student','101 WBroadway , SUITE 1125', 'San Diego','Pacific','92115','USA','8319176872')
INsert INTO Orders(CustomerID, OrderDate)
Values('VALS','1-2-17')
INsert INTO [Order Details](OrderID, ProductID)
Values('11078','6')


19.
Delete From [Order Details]
Where OrderID='11078'
Delete From ORders
WHere CustomerID='VALS'
Delete From Customers
Where CustomerID = 'VALS'


20.
Select *
From Products
Where UnitsInStock>=100
