USE w3schools;

-- Customers who didn't order
SELECT c.CustomerName
FROM customers c LEFT JOIN orders o
ON c.CustomerID = o.CustomerID
WHERE ISNULL(o.CustomerID);

-- Employees who didn't take in charge of order
SELECT CONCAT(e.FirstName, ' ', e.LastName) 'Employee Name'
FROM employees e LEFT JOIN orders o
ON e.EmployeeID = o.EmployeeID
WHERE ISNULL(o.EmployeeID); -- All employees have experience

-- Checking
SELECT DISTINCT EmployeeID FROM orders
ORDER BY 1; -- 9

SELECT COUNT(*) FROM employees; -- 9
