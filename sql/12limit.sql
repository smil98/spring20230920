SELECT * FROM employees
ORDER BY BirthDate
LIMIT 2;

SELECT * FROM products
ORDER BY Price DESC
LIMIT 10;

SELECT * FROM employees
ORDER BY BirthDate DESC
LIMIT 3;

SELECT * FROM products
WHERE CategoryID = 2
ORDER BY Price
LIMIT 1;

-- Limit quantity = LIMIT n
-- Limit quantity by range = LIMIT n, m

SELECT ProductName, Price
FROM products
WHERE CategoryID = 2
ORDER BY Price
LIMIT 2, 5; -- limit from 2nd, and list 5
-- thus 2nd to 7th would be shown

-- Dividing pages (results)

SELECT CustomerID, CustomerName FROM customers
ORDER BY CustomerID; -- 91 row

SELECT CustomerID, CustomerName FROM customers
ORDER BY CustomerID
LIMIT 0,10; -- first page
SELECT CustomerID, CustomerName FROM customers
ORDER BY CustomerID
LIMIT 10,10; -- second page
SELECT CustomerID, CustomerName FROM customers
ORDER BY CustomerID
LIMIT 20,10; -- third page

-- Practice
SELECT *
FROM suppliers
ORDER BY SupplierID
LIMIT 10,5;

-- If a page shows n tuples, when viewing mth page
-- LIMIT (m-1)*n, n

SELECT *
FROM suppliers
ORDER BY SupplierID
LIMIT 28, 5;
