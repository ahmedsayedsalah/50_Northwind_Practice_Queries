

/*[1] Create a report that shows the CategoryName and Description
    from the categories table sorted by CategoryName. */
SELECT c.CategoryName,c.Description FROM Categories c ORDER BY c.CategoryName;

/*[2] Create a report that shows the ContactName, CompanyName, ContactTitle and
Phone number from the customers table sorted by Phone */
SELECT C.ContactName,C.CompanyName,C.ContactTitle,C.Phone FROM Customers C ORDER BY C.Phone;

/*[3] Create a report that shows the capitalized FirstName and capitalized LastName renamed as FirstName and Lastname
respectively and HireDate from the employees table sorted from the newest to the oldest employee */
SELECT UPPER(E.FirstName) AS "FirstName",UPPER(E.LastName) AS "LastName",E.HireDate FROM Employees E ORDER BY E.HireDate;

/*[4] Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight from the orders table sorted
by Freight in descending order */
SELECT TOP(10) O.OrderID,O.OrderDate,O.ShippedDate,O.CustomerID,O.Freight FROM Orders O ORDER BY O.Freight DESC;

/*[5] Create a report that shows all the CustomerID in lowercase letter and renamed as ID from the customers table */
SELECT LOWER(C.CustomerID) AS "ID" FROM Customers C;

/*[6] Create a report that shows the CompanyName, Fax, Phone, Country, HomePage from the suppliers table sorted by the
Country in descending order then by CompanyName in ascending order. */
SELECT S.CompanyName,S.Fax,S.Phone,S.Country,S.HomePage FROM Suppliers S ORDER BY S.Country DESC,S.CompanyName ASC;

/*[7] Create a report that shows CompanyName, ContactName of all customers from ‘Buenos Aires' only.*/
SELECT C.CompanyName,C.ContactName FROM Customers C WHERE C.City= 'Buenos Aires';

/*[8] Create a report showing ProductName, UnitPrice, QuantityPerUnit of products that are out of stock.*/
SELECT p.ProductName,P.UnitPrice,P.QuantityPerUnit FROM Products p WHERE P.UnitsInStock = 0;

/*[9]  Create a report showing all the ContactName, Address, City of all customers not from Germany, Mexico, Spain.*/
SELECT C.ContactName,C.Address,C.City FROM Customers C WHERE C.Country NOT IN ('Germany','Mexico','Spain');

/*[10] Create a report showing OrderDate, ShippedDate, CustomerID, Freight of all orders placed on 21 May 1996.*/
SELECT O.OrderDate,O.ShippedDate,O.CustomerID,O.Freight FROM Orders O WHERE O.OrderDate = '1996-05-21 ';

/*[11] Create a report showing FirstName, LastName, Country from the employees not from United States */
SELECT E.FirstName,E.LastName,E.Country FROM Employees E WHERE E.Country NOT IN ('USA');
SELECT E.FirstName,E.LastName,E.Country FROM Employees E WHERE E.Country != 'USA';
SELECT E.FirstName,E.LastName,E.Country FROM Employees E WHERE E.Country <> 'USA';

/*[12] Create a report that showsthe EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate from all orders shipped later
than the required date */
SELECT O.EmployeeID,O.OrderID,O.CustomerID,O.RequiredDate,O.ShippedDate FROM Orders O WHERE O.ShippedDate>O.RequiredDate;

/*[13] Create a report that shows the City, CompanyName, ContactName of customers from cities starting with A or B */
SELECT C.City,C.CompanyName,C.ContactName FROM Customers C WHERE  C.City LIKE '[AB]%';

/*[14] Create a report showing all the even numbers of OrderID from the orders table. */
SELECT O.OrderID FROM Orders O WHERE O.OrderID % 2 =0;

/*[15] Create a report that shows all the orders where the freight cost more than $500 */
SELECT*FROM Orders O WHERE O.Freight > 500;

/*[16] Create a report that shows the ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel of all products that are up for reorder */
SELECT P.ProductName,P.UnitsInStock,P.UnitsOnOrder,P.ReorderLevel FROM Products P WHERE ReorderLevel=0;

/*[17] Create a report that shows the CompanyName, ContactName number of all customer that have no fax number */
SELECT C.CompanyName,C.ContactName FROM Customers C WHERE C.Fax IS NULL;

/*[18] Create a report that shows the FirstName, LastName of all employees that do not report to anybody.*/
SELECT E.FirstName,E.LastName FROM Employees E WHERE E.ReportsTo IS NULL;

/*[19] Create a report showing all the odd numbers of OrderID from the orders table. */
SELECT O.OrderID FROM Orders O WHERE O.OrderID % 2 =1;

/*[20] Create a report that shows the CompanyName, ContactName, Fax of all customersthat do not have Fax number and sorted
by ContactName. */
SELECT C.CompanyName,C.ContactName,C.Fax  FROM Customers C WHERE C.Fax IS NULL ORDER BY C.CompanyName;

/*[21] Create a report that shows the City, CompanyName, ContactName of customers from cities that has letter L in the name
sorted by ContactName. */
SELECT C.City,C.CompanyName,C.ContactName  FROM Customers C WHERE C.City LIKE '%L%' ORDER BY C.ContactName;

/*[22] Create a report that shows the FirstName, LastName, BirthDate of employees born in the 1950s */
SELECT E.FirstName,E.LastName,E.BirthDate FROM Employees E WHERE YEAR(E.BirthDate) BETWEEN 1950 AND 1959;
SELECT E.FirstName,E.LastName,E.BirthDate FROM Employees E where E.BirthDate >= '1950-01-01'
AND E.BirthDate < '1960-01-01';

/*[23] Create a report that shows the FirstName, LastName, the year of Birthdate as birth year from the employees table. */
SELECT E.FirstName,E.LastName,YEAR(E.BirthDate) AS "birth year" FROM Employees E;

/*[24] Create a report showing OrderID, total number of Order ID as NumberofOrders from the orderdetails table grouped by
OrderID and sorted by NumberofOrders in descending order. HINT: you will need to use a Groupby statement */
SELECT OD.OrderID,COUNT(*) NumberofOrders FROM [Order Details] OD GROUP BY OD.OrderID ORDER BY COUNT(*) DESC;

/*[25] Create a report that shows the SupplierID, ProductName, CompanyName from all product Supplied by Exotic Liquids,
Specialty Biscuits, Ltd., Escargots Nouveaux sorted by the supplier ID*/
SELECT S.SupplierID,P.ProductName,S.CompanyName FROM Suppliers S JOIN Products P ON S.SupplierID = P.SupplierID
WHERE S.CompanyName IN ('Exotic Liquids','Biscuits, Ltd.','Escargots Nouveaux') ORDER BY S.SupplierID;

/*[26] Create a report that shows the ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate, ShipAddress of all orders
with ShipPostalCode beginning with "98124" */
SELECT O.ShipPostalCode,O.OrderID,O.OrderDate,O.RequiredDate,O.ShippedDate FROM Orders O WHERE O.ShipPostalCode = '98124';

/*[27] Create a report that shows the ContactName, ContactTitle, CompanyName of customers that the has no "Sales" in their
ContactTitle. */
SELECT C.ContactName,C.ContactTitle,C.CompanyName FROM Customers C WHERE C.ContactTitle NOT LIKE '%Sales%';

/*[28] Create a report that shows the LastName, FirstName, City of employees in cities other than "Seattle" */
SELECT E.LastName,E.FirstName,E.City FROM Employees E WHERE E.City != 'Seattle';

/*[29] Create a report that shows the CompanyName, ContactTitle, City, Country of all customers in any city in Mexico or other
cities in Spain other than Madrid. */
SELECT C.CompanyName,C.ContactTitle,C.City,C.Country FROM Customers C WHERE C.Country = 'Mexico' OR (C.Country = 'Spain' AND C.City != 'Madrid');

/*[30] Create a select statement that outputs the following: */
SELECT CONCAT(E.FirstName,' ',E.LastName,' can be reached at x',E.Extension) ContactInfo FROM Employees E;

/*[31] Create a report that shows the ContactName of all customers that do not have letter A as the second alphabet in their
Contactname */
SELECT C.ContactName FROM Customers C WHERE C.ContactName NOT LIKE '_A%';

/*[32] Create a report that shows the average UnitPrice rounded to the next whole number, total price of UnitsInStock and
maximum number of orders from the products table. All saved as AveragePrice, TotalStock and MaxOrder respectively. */
SELECT ROUND(AVG(P.UnitPrice),0) AveragePrice,SUM(P.UnitsInStock) TotalStock,MAX(P.UnitsOnOrder) MaxOrder FROM Products P;

/*[33] Create a report that shows the SupplierID, CompanyName, CategoryName, ProductName and UnitPrice from the products,
suppliers and categories table. */
SELECT S.SupplierID,S.CompanyName,C.CategoryName,P.ProductName,P.UnitPrice FROM Suppliers S JOIN Products P 
ON S.SupplierID=P.SupplierID JOIN Categories C ON P.CategoryID=C.CategoryID;

/*[34] Create a report that showsthe CustomerID,sum of Freight, from the orderstable with sum of freight greater $200, grouped
by CustomerID. HINT: you will need to use a Groupby and a Having statement. */
SELECT O.CustomerID,SUM(O.Freight) "sum of Freight" FROM Orders O GROUP BY O.CustomerID HAVING SUM(O.Freight) > 200;

/*[35] Create a report that shows the OrderID, ContactName, UnitPrice, Quantity, Discount from the order details, orders and
customers table with discount given on every purchase */
SELECT O.OrderID,C.ContactName,OD.UnitPrice,OD.Quantity,OD.Discount FROM [Order Details] OD JOIN Orders O
ON OD.OrderID=O.OrderID JOIN Customers C ON O.CustomerID=C.CustomerID; 

/*[36] Create a report that shows the EmployeeID, the LastName and FirstName as employee, and the LastName and FirstName of
who they report to as manager from the employees table sorted by Employee ID. HINT: This is a SelfJoin */
SELECT E.EmployeeID,E.LastName+' '+E.FirstName employee,M.LastName+' '+M.FirstName manager
FROM Employees E LEFT JOIN Employees M ON E.EmployeeID=M.ReportsTo ORDER BY E.EmployeeID; 

/*[37] Create a report that shows the average, minimum and maximum UnitPrice of all products as AveragePrice, MinimumPrice
and MaximumPrice respectively */
SELECT AVG(P.UnitPrice) AveragePrice,MIN(P.UnitPrice) MinimumPrice,MAX(P.UnitPrice) MaximumPrice FROM Products P;

/*[38] Create a view named CustomerInfo that shows the CustomerID, CompanyName, ContactName, ContactTitle, Address, City,
Country, Phone, OrderDate, RequiredDate, ShippedDate from the customers and orders table. HINT: Create a View. */
CREATE VIEW CustomerInfo
AS
SELECT C.CustomerID,C.CompanyName,C.ContactName,C.ContactTitle,C.Address,C.City,C.Country,C.Phone,O.OrderDate,O.RequiredDate,O.ShippedDate
FROM Customers C JOIN Orders O ON C.CustomerID=O.CustomerID;

/*[39] Change the name of the view you created from customerinfo to customer details. */
EXEC SP_RENAME 'CustomerInfo' , 'CustomerDetails';

/*[40] Create a view named ProductDetails that shows the ProductID, CompanyName, ProductName, CategoryName, Description,
QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued from the supplier, products and
categories tables. HINT: Create a View */
CREATE VIEW ProductDetails
AS
SELECT P.ProductID,S.CompanyName,P.ProductName,C.CategoryName,C.Description,P.QuantityPerUnit,P.UnitPrice,P.UnitsInStock,P.UnitsOnOrder,P.ReorderLevel,
P.Discontinued FROM Categories C JOIN  Products P ON C.CategoryID=P.CategoryID JOIN Suppliers S ON P.SupplierID=S.SupplierID;

/*[41] Drop the customer details view */
DROP VIEW CustomerDetails;

/*[42] Create a report that fetch the first 5 character of categoryName from the category tables and renamed as ShortInfo */
SELECT SUBSTRING(C.CategoryName,1,5) AS "ShortInfo" FROM Categories C;

/*[43] Create a copy of the shipper table as shippers_duplicate. Then insert a copy ofshippers data into the new table HINT: Create
a Table, use the LIKE Statement and INSERT INTO statement */
SELECT*INTO shippers_duplicate FROM Shippers;

/*[44] Create a select statement that outputs the following from the shippers_duplicate Table: */
ALTER TABLE shippers_duplicate
ADD Email VARCHAR(50);
UPDATE shippers_duplicate
SET Email='hsjskll156@gmail.com'
WHERE ShipperID=1;
UPDATE shippers_duplicate
SET Email='AJAKl156@gmail.com'
WHERE ShipperID=2;
UPDATE shippers_duplicate
SET Email='SLSLAl156@gmail.com'
WHERE ShipperID=3;

/*[45] Create a report that shows the CompanyName and ProductName from all product in the Seafood category.*/
SELECT S.CompanyName,P.ProductName FROM Categories C JOIN  Products P ON C.CategoryID=P.CategoryID
JOIN Suppliers S ON P.SupplierID=S.SupplierID WHERE C.CategoryName='Seafood';

/*[46] Create a report that shows the CategoryID, CompanyName and ProductName from all product in the categoryID 5 */
SELECT C.CategoryID,S.CompanyName,P.ProductName FROM Categories C JOIN  Products P ON C.CategoryID=P.CategoryID
JOIN Suppliers S ON P.SupplierID=S.SupplierID WHERE C.CategoryID=5;

/*[47] Delete the shippers_duplicate table.*/
DROP TABLE shippers_duplicate;

/*[48] Create a select statement that ouputs the following from the employees table.
NB: The age might differ depending on the year you are attempting this query. */
SELECT E.LastName,E.FirstName,E.Title,CONCAT(YEAR(CURRENT_TIMESTAMP)-YEAR(E.BirthDate),' Years') FROM Employees E;

/*[49] Create a report that the CompanyName and total number of orders by customer renamed as number of orders since
December 31, 1994. Show number of Orders greater than 10. */
SELECT C.CompanyName,COUNT(*) "number of orders" FROM Customers C JOIN Orders O ON C.CustomerID=O.CustomerID
WHERE O.OrderDate >= '1994-12-31' GROUP BY C.CompanyName HAVING COUNT(*) > 10;

/*[50] Create a select statement that ouputs the following from the product table
NB: It should return 77rows. */
SELECT CONCAT(P.ProductName,' weighs/is ',P.QuantityPerUnit,' and cost $',ROUND(P.UnitPrice,0)) ProductInfo FROM Products P;