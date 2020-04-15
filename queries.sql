-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p.ProductName, c.CategoryName 
FROM Product AS p
JOIN Category AS c
ON p.CategoryId = c.id 

-- Display the order Id and shipper CompanyName for all orders placed before "OrderDate" August 9 2012. Shows 429 records.

select o.Id, s.CompanyName
from [order] AS o
join shipper AS s ON s.Id = o.ShipVia
WHERE o.OrderDate < '2012-08-09';


SELECT o.OrderDate, o.id, c.CompanyName
FROM [order] AS o
JOIN Customer AS c ON o.CustomerId = c.id
WHERE o.OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, p.id, od.quantity
FROM Product AS p
JOIN OrderDetail as od
ON od.ProductId = p.id
WHERE od.OrderId = 10251
ORDER BY p.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT
    o.Id as 'OrderID',
    cust.CompanyName as 'Company Name',
    empl.LastName as 'employee Last Name'
FROM 
    [Order] as o
JOIN
    Customer as cust on o.CustomerId = cust.Id
JOIN Employee as empl on o.EmployeeId = empl.Id 

