SELECT CONCAT(e.FirstName, ' ', e.LastName) NAME, SUM(p.price * od.Quantity) AMOUNT
FROM employees e JOIN orders o ON e.EmployeeID = o.EmployeeID
                 JOIN orderdetails od ON o.OrderID = od.OrderID
                 JOIN products p ON p.ProductID = od.ProductID
GROUP BY NAME
HAVING AMOUNT < 100000
ORDER BY NAME;