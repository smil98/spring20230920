SELECT ProductName
FROM products
WHERE Price > (SELECT Price FROM products
               WHERE ProductName LIKE 'Ipoh Coffee');
-- sub query = smt inside ()

SELECT BirthDate FROM employees
WHERE LastName = 'Leverling';

-- 1 col : 1 row
SELECT ShipperID
FROM orders
WHERE OrderDate = '1996-07-08';

-- 1 col : n row
SELECT CustomerName
FROM customers
WHERE Country = 'Mexico';

-- n col : n row
SELECT CustomerID, CustomerName
FROM customers
WHERE Country = 'Mexico';

-- Practice 1 col 1 row

SELECT SupplierID
FROM products
WHERE ProductName = 'tofu';

SELECT SupplierID, SupplierName
FROM suppliers
WHERE SupplierID = 6;

SELECT SupplierID, SupplierName
FROM suppliers
WHERE SupplierID = (
    SELECT SupplierID
    FROM products
    WHERE ProductName = 'tofu'
);

SELECT s.SupplierID, s.SupplierName
FROM suppliers s NATURAL JOIN products p
# ON s.SupplierID = p.SupplierID
WHERE ProductName = 'tofu';

-- mexico customers order date
SELECT *
FROM customers
WHERE Country = 'mexico';

SELECT OrderDate
FROM orders o NATURAL JOIN customers c
WHERE c.Country = 'mexico';

-- orderID of products from category 1
SELECT DISTINCT OrderID
FROM products NATURAL JOIN orderdetails
WHERE CategoryID = 1;

SELECT DISTINCT OrderID
FROM orderdetails
WHERE ProductID IN (SELECT ProductID
                FROM products WHERE CategoryID = 1);

-- OrderDate of products in category 1
SELECT OrderDate FROM orders
WHERE OrderID IN (SELECT OrderID FROM orderdetails
                  WHERE ProductID IN (SELECT ProductID FROM products WHERE CategoryID = 1));

SELECT DISTINCT o.OrderID, o.OrderDate
FROM orders o JOIN orderdetails od ON o.OrderID = od.OrderID
              JOIN products p ON od.ProductID = p.ProductID
WHERE p.CategoryID = 1;

-- Customers who hasn't ordered yet
SELECT CustomerID
FROM orders;

SELECT * FROM customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM orders);

