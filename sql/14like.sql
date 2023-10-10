SELECT *
FROM customers;

SELECT *
FROM customers
WHERE CustomerName like 'Alfreds Futterkiste';

SELECT *
FROM customers
WHERE CustomerName like '%the%';

SELECT *
FROM customers
WHERE CustomerName like '%ch%';

-- Like can be used for portions / whole search
-- used with % or _(wildcard characters), where % means 0 or more characters
-- _ means single character (2 letters = __)
-- [] means any single character within the brackets
-- ^ represents any character not in the brackets
-- - represents any single character within specified range
-- {} represents any escaped character (only supported in Oracle)

SELECT *
FROM customers
WHERE CustomerName like '%er';

-- Practice

SELECT *
FROM products
WHERE ProductName like 'ch%';

SELECT *
FROM products
WHERE ProductName like '%es';

SELECT *
FROM products
WHERE ProductName like '%use%';

SELECT *
FROM products
WHERE ProductName like '_u%';

SELECT CONCAT(LastName , ' ' , FirstName) AS fullName, Notes
FROM employees
WHERE FirstName LIKE '%a%';