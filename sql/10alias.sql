SELECT * FROM employees;

SELECT EmployeeID, LastName
FROM employees;
-- Changing Col names : AS

SELECT EmployeeID AS id, LastName AS name
FROM employees;

SELECT EmployeeID, CONCAT(FirstName, ' ', LastName) AS FullName
FROM employees;
-- can omit as
-- Practice

SELECT SupplierName, CONCAT(Address, ', ', City, ', ', Country) Address, Phone 'Phone Number'
FROM suppliers;

SELECT * FROM products;
SELECT * FROM categories;

SELECT products.ProductName, categories.CategoryName
FROM products JOIN categories
    ON products.CategoryID = categories.CategoryID;

SELECT p.ProductName,
       c.CategoryName
FROM products p JOIN categories c
    ON p.CategoryID = c.CategoryID;


