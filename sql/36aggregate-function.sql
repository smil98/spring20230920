USE w3schools;

-- aggregate function
-- MAX, MIN, SUM, COUNT, AVG
-- shows up as 1 tuple

SELECT * FROM products;

SELECT MAX(Price) MAX_PRICE
FROM products;

SELECT ProductName, Price
FROM products
WHERE Price = MAX(Price);

SELECT ProductName, Price
FROM products
HAVING MAX(Price);

SELECT ProductName, Price
FROM products
WHERE Price = (SELECT MAX(Price) FROM products);

SELECT MIN(Price) MIN_PRICE
FROM products;

SELECT ROUND(AVG(Price), 2) AVERAGE
FROM products;


-- Practice

SELECT CONCAT(FirstName, ' ', LastName) Name
FROM employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM employees);

SELECT CONCAT(FirstName, ' ', LastName) Name
FROM employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM employees);

SELECT * FROM employees;
SELECT COUNT(EmployeeID) FROM employees;
SELECT COUNT(LastName) FROM employees;
SELECT COUNT(FirstName) FROM employees;

-- Does not include NULL
INSERT INTO employees (LastName)
VALUE ('HeungMin');
SELECT * FROM employees ORDER BY 1 DESC;

SELECT MIN(BirthDate) FROM employees;
SELECT MAX(BirthDate) FROM employees;

INSERT INTO products (ProductName)
VALUE ('coffee');

SELECT * FROM products ORDER BY 1 DESC ;

SELECT MIN(Price) FROM products;

SELECT MIN(IFNULL(Price, 0)) FROM products;

SELECT *
FROM products
WHERE IFNULL(Price, 0) = (SELECT MIN(IFNULL(Price, 0)) FROM products);

-- SUM

SELECT SUM(Price) FROM products;

SELECT SUM(Quantity) 'Quantity ordered in July 4th, 1996'
FROM orders NATURAL JOIN orderdetails
WHERE OrderDate = '1996-07-04';

SELECT SUM(Quantity * Price) 'Total Income in July 4th, 1996'
FROM orders NATURAL JOIN orderdetails
NATURAL JOIN products
WHERE OrderDate = '1996-07-04';

-- AVG
SELECT AVG(Price) FROM products;
SELECT SUM(Price) FROM products;
SELECT COUNT(ProductID) FROM products;

