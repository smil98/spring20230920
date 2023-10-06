SELECT Price FROM products WHERE ProductID=1;
SELECT Price - 10.5 FROM products WHERE ProductID=1;
SELECT Price * 3 FROM products WHERE ProductID=1;
SELECT ProductName, Price * 2 FROM products;
-- Cannot add Strings automatically
-- ex) ProductName + 1
SELECT CONCAT(ProductName, 1), Price FROM products;
SELECT LastName, BirthDate FROM employees WHERE EmployeeID=1;
SELECT LastName, BirthDate+1 FROM employees WHERE EmployeeID=1;
-- outcome 'BirthDate+1' will be 19681209, converting date to integer
-- to prevent auto conversion can use function
SELECT LastName, ADDDATE(BirthDate, INTERVAL 1 DAY) FROM employees WHERE EmployeeID=1;

SELECT EmployeeID, LastName, FirstName FROM employees;
SELECT EmployeeID, CONCAT(LastName, FirstName) FROM employees;
SELECT EmployeeID, CONCAT(LastName,' ',FirstName) FROM employees;
SELECT EmployeeID, CONCAT(FirstName,' ',LastName) FROM employees;

-- Adding month, can also use ADDDATE(BirthDate, INTERVAL 1 MONTH)
SELECT EmployeeID, CONCAT(LastName, ' ', FirstName),
       ADD_MONTHS(BirthDate, 1)
FROM employees;

-- Adding Year
SELECT EmployeeID, CONCAT(LastName, ' ', FirstName),
       ADDDATE(BirthDate, INTERVAL -1 YEAR)
FROM employees;

-- Practice

SELECT OrderDetailID, OrderID, ProductID, Quantity * 2
FROM orderdetails;

SELECT DISTINCT CONCAT(City, ', ', Country)
FROM customers;