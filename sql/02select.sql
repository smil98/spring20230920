-- SELECT : reads data

SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.employees;
SELECT * FROM w3schools.products;
SELECT CustomerID, CustomerName
FROM w3schools.customers
WHERE CustomerName = 'Alfreds Futterkiste';


SELECT * FROM customers;
SELECT * FROM categories;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM shippers;
SELECT * FROM suppliers;

-- after select, col name
-- after from, table name

SELECT CustomerName
FROM customers;

SELECT CustomerID, CustomerName
FROM customers;

SELECT CustomerID, CustomerName, Country -- shows up in order listed
FROM customers;

SELECT CustomerName, Country, CustomerID
FROM customers;

-- Practice

SELECT LastName, FirstName, BirthDate
FROM employees;

SELECT ProductName, Unit, Price
FROM products;

SELECT SupplierName, Address, Country
FROM suppliers;

-- this allows duplicate data show up
SELECT Country from customers;

-- to only select unique data, use DISTINCT
SELECT DISTINCT Country from customers;

SELECT City, Country FROM customers;
SELECT DISTINCT City, Country FROM customers;

-- COUNT : counts tuples

SELECT COUNT(Country) FROM customers; -- 91
SELECT COUNT(DISTINCT Country) FROM customers; -- 21

SELECT COUNT(*) FROM customers; -- entire tuple = 91

SELECT products.ProductID, products.ProductName, suppliers.SupplierName
FROM products
INNER JOIN suppliers
ON products.SupplierID = suppliers.SupplierID;

SELECT COUNT(DISTINCT Country)
FROM suppliers;

SELECT COUNT(*) FROM orders;

SELECT COUNT(*) FROM categories;

SELECT COUNT(DISTINCT City) FROM customers;