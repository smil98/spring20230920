SELECT * FROM customers;

SELECT *
FROM customers
WHERE Country= 'Germany';

SELECT CustomerName, Country
FROM customers
WHERE NOT Country = 'Germany';

SELECT *
FROM products
WHERE NOT CategoryID = 1;

SELECT *
FROM suppliers
WHERE NOT Country = 'Japan';
