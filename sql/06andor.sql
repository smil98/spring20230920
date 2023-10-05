SELECT CustomerName, City, Country
FROM customers;

SELECT CustomerName, City, Country
FROM customers
WHERE City = 'Madrid' AND Country='Spain';

SELECT CustomerName, City, Country
FROM customers
WHERE City != 'Madrid' AND Country ='Spain';

SELECT CustomerName, City, Country
FROM customers
WHERE City != 'Madrid' AND Country !='Spain';

SELECT CustomerName, City, Country
FROM customers
WHERE City = 'Madrid' OR Country = 'Spain';

SELECT CustomerName, City, Country
FROM customers
WHERE Country = 'Spain' OR Country = 'UK';

SELECT * FROM products
WHERE Price >= 10.00 AND Price <= 20.00;

SELECT * FROM customers
WHERE CustomerName >= 'c' AND CustomerName < 'd';

SELECT * FROM employees
WHERE BirthDate >= '1958-01-01' AND BirthDate < '1959-01-01';

-- Practice

SELECT * FROM suppliers
WHERE Country = 'Sweeden' OR Country = 'Italy';

SELECT * FROM employees
WHERE BirthDate >= '1963-08-01' AND BirthDate <= '1963-08-31';

SELECT * FROM products
WHERE Price >= 100.00 AND Price <= 200.00;

SELECT * FROM orders
WHERE OrderDate >= '1997-01-01' AND OrderDate <= '1997-12-31';








