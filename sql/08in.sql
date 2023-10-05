-- IN : similar to OR
SELECT *
FROM customers
WHERE Country IN ('UK', 'Spain', 'italy');

-- Practice
-- Select products in category 3,4
SELECT * FROM products
WHERE CategoryID IN (3, 4);

-- Select orders ordered in July 4th and 5th in 1996
SELECT * FROM orders
WHERE OrderDate IN('1996-07-04', '1996-07-05');

-- Customers in london, madrid, or sevilla
SELECT * FROM customers
WHERE City IN ('London', 'Madrid', 'Sevilla');