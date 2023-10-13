USE w3schools;

SELECT * FROM suppliers;

SELECT COUNT(*)
FROM customers
WHERE Country = 'UK';

SELECT COUNT(*)
FROM customers
WHERE Country = (SELECT Country
                 FROM suppliers
                 WHERE SupplierID = 1);
SELECT COUNT(*)
FROM customers
WHERE Country = (SELECT Country
                 FROM suppliers
                 WHERE SupplierID = 2);
SELECT COUNT(*)
FROM customers
WHERE Country = (SELECT Country
                 FROM suppliers
                 WHERE SupplierID = 3);

-- can be changed to this form where iteration is done by
--
SELECT s.supplierID,
       (SELECT COUNT(*)
        FROM customers
        WHERE customers.Country = s.Country) 'Number of Customers'
FROM suppliers s;

-- show employees older than each employee
SELECT e.LastName,
       (SELECT COUNT(*)
        FROM employees
        WHERE employees.BirthDate < e.BirthDate) 'NumberOfEmp'
FROM employees e
ORDER BY e.LastName;




