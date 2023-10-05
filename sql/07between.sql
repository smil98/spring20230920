SELECT * FROM products
WHERE Price >= 10 AND Price <= 13;

-- Between is used with AND
-- includes 13
SELECT * FROM products
WHERE Price BETWEEN 10 AND 13;

SELECT * FROM products
WHERE Price >= 10 AND Price < 13;

SELECT * FROM products
WHERE Price BETWEEN 10 AND 12.99;

SELECT * FROM products
WHERE Price BETWEEN '10' AND '13';

SELECT * FROM customers
WHERE CustomerName BETWEEN 'a' AND 'b';

SELECT * FROM orders
WHERE OrderDate BETWEEN '1971-01-01' AND '1971-12-31';

-- Practice

SELECT * FROM products
WHERE Price BETWEEN 30 AND 40;

SELECT * FROM orders
WHERE OrderDate BETWEEN '1998-02-01' AND '1998-02-28';

SELECT * FROM employees
WHERE BirthDate BETWEEN '1958-09-01' AND '1958-09-31';



