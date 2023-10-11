-- DELETE FROM tableName WHERE condition
-- !! WHERE MUST BE USED OTHERWISE ALL DATA WILL BE DELETED

SELECT * FROM employees;

-- Before Deleting, test the data you want to delete by SELECT

DELETE FROM employees WHERE EmployeeID = 10;
DELETE FROM employees WHERE LastName = 'Lee';

SELECT * FROM employees;

-- Practice
-- DELETE ALL employee data added today
SELECT * FROM employees WHERE EmployeeID >=12;
DELETE FROM employees WHERE EmployeeID >=12;

SELECT * FROM products WHERE ProductID BETWEEN 78 AND 82;
DELETE FROM products WHERE ProductID BETWEEN 78 AND 82;

SELECT * FROM products;