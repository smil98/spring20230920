USE w3schools;

SELECT *
FROM employees e1 JOIN employees e2;

SELECT e1.LastName, e1.BirthDate
FROM employees e1 JOIN employees e2
WHERE e1.BirthDate < e2.BirthDate
  AND e2.LastName = 'Leverling';

SELECT p2.ProductName
FROM products p1 JOIN products p2
WHERE p2.price > p1.Price AND
      p1.ProductName = 'Ipoh Coffee';

SELECT ProductName
FROM products
WHERE Price > (SELECT Price FROM products
                WHERE ProductName LIKE 'Ipoh Coffee');

