SELECT p.ProductName, c.CategoryName
FROM products p JOIN categories c
ON p.CategoryID = c.CategoryID
ORDER BY ProductName;

SELECT *
FROM employees
ORDER BY 4; -- Can choose by attribute #

SELECT *
FROM products
ORDER BY CategoryID; -- or 4

SELECT *
FROM products
ORDER BY CategoryID DESC; -- ASC automatically so omitted

-- can order by multiple columns
SELECT *
FROM products
ORDER BY CategoryID DESC, Price DESC;

-- Practice

SELECT *
FROM customers
ORDER BY Country;

SELECT *
FROM products
ORDER BY Price DESC;

SELECT *
FROM employees
ORDER BY BirthDate DESC;

