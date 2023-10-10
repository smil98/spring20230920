-- INSERT INTO table_name (colName1, colName2 ...)
-- VALUES (value1, value2....)

INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUE (10, 'Son', 'HyungMin', '2000-01-01','Photo10', 'EPL goal');

SELECT *
FROM employees;

INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUE (11, 'Lee', 'KangIn', '2000-02-02', 'Photo11', 'Dribble');

-- When inserting all data to table, you can omit the col names
INSERT INTO employees
VALUE (12, 'Kim', 'MinJae', '2000-03-03', 'Photo12', 'Blocks Well');

-- Cannot omit colNames if you want to insert specific values only
INSERT INTO employees(EmployeeID, LastName, FirstName)
VALUE (13, 'Park', 'JiSung');

INSERT INTO employees(EmployeeID)
VALUE (15);

INSERT INTO employees(EmployeeID)
VALUE ('16');

INSERT INTO employees(LastName)
VALUE ('son');

INSERT INTO employees(LastName)
VALUE ('1000');

INSERT INTO employees(LastName)
VALUE (1000);

INSERT INTO employees(BirthDate)
VALUE ('2000-01-01');

SELECT * FROM employees
ORDER BY EmployeeID DESC;

SELECT *
FROM products;

INSERT INTO products(Price)
VALUE (20.10);

INSERT INTO products(Price)
VALUE ('30.33');

-- Practice
INSERT INTO products(productid, productname, supplierid, categoryid, unit, price)
VALUE (80, 'Oreo', 13, '3', '2 boxes', 9.10);

INSERT INTO products(productname, supplierid, categoryid, unit, price)
VALUE ('Kimchi', 13, '3', '1 bowl', 13.10);