USE w3schools;

SELECT Country FROM customers;

SELECT Country FROM customers
UNION
SELECT Country FROM suppliers;

SELECT Country FROM customers
UNION ALL
SELECT Country FROM suppliers;

SELECT CustomerName, Country, City, CustomerID FROM customers
UNION
SELECT SupplierName, Country, City, Address FROM suppliers;

-- employee's last & first name in ONE column
SELECT LastName Name FROM employees
UNION
SELECT FirstName FROM employees;

USE mydb1;
-- FULL OUTER JOIN
SELECT *
FROM my_table44_a a LEFT JOIN my_table45_b b
ON a.col1 = b.col1;
UNION
SELECT *
FROM my_table44_a a RIGHT JOIN my_table45_b b
ON a.col1 = b.col1;
-- LEFT OUTER JOIN
SELECT *
FROM my_table44_a a LEFT JOIN my_table45_b b
ON a.col1 = b.col1;

-- RIGHT OUTER JOIN
SELECT *
FROM my_table44_a RIGHT JOIN my_table45_b b
ON a.col1 = b.col1;