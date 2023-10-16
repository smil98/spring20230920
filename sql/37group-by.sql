-- Group by: sets condition
USE w3schools;

SELECT COUNT(DISTINCT CategoryID) FROM products;

SELECT MAX(Price)FROM products;
SELECT CategoryId, MAX(Price)
FROM products
GROUP BY CategoryID;

SELECT CategoryID, MIN(Price)
FROM products
GROUP BY CategoryID;

SELECT CategoryID, MAX(Price), MIN(Price)
FROM products
GROUP BY CategoryID;

SELECT CategoryID, MAX(Price) maxPrice, MIN(Price) minPrice
FROM products
GROUP BY CategoryID
ORDER BY maxPrice DESC;

SELECT o.OrderDate, SUM(p.Price * od.Quantity) AS Income
FROM products p
         JOIN orderdetails od
              ON p.ProductID = od.ProductID
         JOIN orders o
              ON od.OrderID = o.OrderID
GROUP BY o.OrderDate
ORDER BY o.OrderDate;

SELECT CONCAT(e.FirstName, ' ', e.LastName) NAME, SUM(p.Price * od.Quantity) AS TOTAL
FROM employees e JOIN orders o ON e.EmployeeID = o.EmployeeID
                 JOIN orderdetails od ON o.OrderID = od.OrderID
                 JOIN products p ON p.ProductID = od.ProductID
GROUP BY NAME
ORDER BY NAME;

SELECT CustomerName NAME, SUM(p.price * od.Quantity) AS 'TOTAL ORDER AMOUNT'
FROM customers c JOIN orders o ON c.CustomerID = o.CustomerID
                 JOIN orderdetails od ON o.OrderID = od.OrderID
                 JOIN products p ON od.ProductID = p.ProductID
GROUP BY NAME
ORDER BY NAME;