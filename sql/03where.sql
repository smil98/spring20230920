SELECT CustomerName, Address, City, Country
FROM customers;

SELECT CustomerName, Address, City, Country
FROM customers
WHERE CustomerID = 1;

SELECT CustomerName, Address, City, Country
FROM customers
WHERE Country = 'USA'; -- String marked by ''

SELECT *
FROM customers
WHERE City like 'Berlin';

SELECT *
FROM customers
WHERE Country = 'MEXICO'; -- case insensitive

SELECT *
FROM customers
WHERE CustomerName like 'S%';

SELECT *
FROM customers
WHERE SUBSTR(CustomerName, -1, 1) = 'S'; -- 22

SELECT *
FROM customers
WHERE CustomerName like '%S'; -- 22

SELECT *
FROM customers
WHERE Country = 'UK';

SELECT *
FROM products
WHERE CategoryID = 1;

SELECT *
FROM suppliers
WHERE City like 'Osaka';

-- Practice

-- Read ProductName and Price for products in category 2
SELECT ProductName, Price
FROM products
WHERE CategoryID = 2;

-- Read SupplierName and Phone number for suppliers in Japan
SELECT SupplierName, Phone
FROM suppliers
WHERE Country like 'Japan';

-- Read categoryName for category no 2
SELECT CategoryName
FROM categories
WHERE CategoryID = 2;
