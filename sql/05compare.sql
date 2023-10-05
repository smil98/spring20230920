SELECT *
FROM products
WHERE price < 10.00;

SELECT *
FROM products
WHERE price > 10.00;

SELECT *
FROM products
WHERE price >= 10.00;

SELECT *
FROM products
WHERE price <= 10.00;

SELECT *
FROM products
WHERE price = 10.00;

SELECT *
FROM products
WHERE NOT price = 10.00;

SELECT *
FROM products
WHERE price != 10.00; -- this works depending on sql version

SELECT *
FROM products
WHERE price <> 10.00;

SELECT *
FROM customers
WHERE CustomerID < 3;
-- WHERE CustomerID < '3' also works

SELECT *
FROM customers
WHERE CustomerName = 'Ana Trujillo Emparedados y helados';

SELECT *
FROM customers
WHERE CustomerName > 'D';

SELECT *
FROM customers
WHERE CustomerName <= 'D';

SELECT *
FROM employees
WHERE BirthDate >= '1960-01-01';

SELECT *
FROM employees
WHERE BirthDate < '1960-01-01';

