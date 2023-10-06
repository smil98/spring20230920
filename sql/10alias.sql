SELECT * FROM employees;

SELECT EmployeeID, LastName
FROM employees;
-- Changing Col names : AS

SELECT EmployeeID AS id, LastName AS name
FROM employees;

SELECT EmployeeID, CONCAT(FirstName, ' ', LastName) AS FullName
FROM employees;

-- Practice