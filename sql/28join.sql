USE w3schools;

SELECT * FROM products;
SELECT * FROM categories;

-- Show Category name of product Chais
SELECT ProductName, CategoryName
FROM categories JOIN products
ON products.CategoryID = categories.CategoryID
WHERE ProductName = 'Chais';

-- Selecting all products with category name
SELECT ProductName , CategoryName
FROM products p JOIN categories c
ON p.CategoryID = c.CategoryID
ORDER BY ProductID;

-- Step by step

SELECT COUNT(*)
FROM categories; -- 8
SELECT COUNT(*)
FROM products; -- 77

CREATE TABLE table_a (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(20),
    category_id INT
);
CREATE TABLE table_b (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(20)
);

INSERT INTO table_b (category_name)
VALUES ('Drinks'), ('Side Menu');
INSERT INTO table_a (product_name, category_id)
VALUES ('Coke', 1),
       ('Soda', 1),
       ('Hamburger', 2),
       ('Bagel', 2),
       ('Tofu', 2);

SELECT *
FROM table_a JOIN table_b;
-- this shows A row * B row
-- col would be A col + B col

SELECT * FROM table_a;
SELECT *
FROM table_a JOIN table_b
WHERE product_name = 'Coke'
AND table_a.category_id = table_b.category_id;
-- if the col is unique(out of two tables) don't need to specify
-- if multiple col with same name exists in both tables, must indicate which table its located

SELECT *
FROM table_a JOIN table_b
WHERE table_a.category_id = table_b.category_id;

-- Practice
-- supplier name & phone of chais

SELECT SupplierName, Phone
FROM suppliers s JOIN products p
ON s.SupplierID = p.SupplierID
WHERE ProductName = 'Chais';

-- customer that ordered in 1996.07.04
SELECT CustomerName
FROM customers c JOIN orders o
ON c.CustomerID = o.CustomerID
WHERE OrderDate = '1996-07-04';

-- employee name who took in charge of order in 1996.07.04
SELECT CONCAT(FirstName, ' ', LastName) 'Employee Name'
FROM employees e JOIN orders o
ON e.EmployeeID = o.EmployeeID
WHERE OrderDate = '1996-07-04';

-- Joining Multiple Tables
SELECT p.ProductName, s.SupplierName, s.Phone, c.CategoryName
FROM products p JOIN suppliers s
    ON p.SupplierID = s.SupplierID -- joined onto p, so the table must have two foreign keys
    JOIN categories c ON p.CategoryID = c.CategoryID
ORDER BY ProductName;

-- product 'Chang' 's supplierName and Category Name

SELECT s.SupplierName, c.CategoryName
FROM products p JOIN suppliers s
ON p.SupplierID = s.SupplierID
JOIN categories c ON p.CategoryID = c.CategoryID
WHERE p.ProductName = 'Chang';

-- customer name and employee in charge of product ordered in 1996.07.09
SELECT c.CustomerName, CONCAT(FirstName, ' ', LastName) 'Employee Name'
FROM orders o JOIN customers c
    ON o.CustomerID = c.CustomerID
JOIN employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-09';

-- product name ordered in 1996 07 09
SELECT ProductName
FROM orderdetails od JOIN products p
ON od.ProductID = p.ProductID
JOIN orders o
ON od.OrderID = o.OrderID
WHERE o.OrderDate = '1996-07-09';

-- OrderDate of Product Chang
SELECT OrderDate
FROM products p JOIN orderdetails od
ON p.ProductID = od.ProductID
JOIN orders o
ON o.OrderID = od.OrderID
WHERE ProductName = 'Chang';

SELECT ProductName, OrderDate, CustomerName, CONCAT(FirstName, ' ', LastName) 'Employee Name'
FROM products p JOIN orderdetails od
    ON p.ProductID = od.ProductID
JOIN orders o
    ON o.OrderID = od.OrderID
JOIN customers c
    ON o.CustomerID = c.CustomerID
JOIN employees e
    ON o.EmployeeID = e.EmployeeID
WHERE ProductName = 'Chang';
