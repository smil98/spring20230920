SELECT * FROM customers ORDER BY 1 DESC;
INSERT INTO customers (CustomerName)
    VALUE ('heungmin');
INSERT INTO customers (CustomerName, ContactName)
    VALUE ('kangin', '');
INSERT INTO customers (CustomerName, ContactName)
    VALUE ('minjae', null);
SELECT ProductID, ProductName, Price FROM products ORDER BY 1 DESC ;
INSERT INTO products (ProductName, Price)
    VALUE ('pizza', 0.00);
INSERT INTO products (ProductName, Price)
    VALUE ('hamburger', null);

-- NULL
SELECT * FROM products
WHERE Price = 0.00
ORDER BY 1 DESC;
SELECT * FROM products
WHERE Price != 0.00
ORDER BY 1 DESC;

-- if logical operator is used for NULL result is always false
SELECT * FROM products
WHERE Price IS NULL; -- IS NULL : checking whether col value is null
SELECT * FROM products
WHERE NOT Price IS NULL ;
SELECT * FROM products
WHERE Price IS NOT NULL;

SELECT ProductName, Price * 100
FROM products; -- arthimetic calculations with null the answer = null

SELECT ProductName, Price
FROM products
ORDER BY ProductID DESC;

SELECT ProductName, IFNULL(Price, 0.00)
FROM products
ORDER BY ProductID DESC ;

SELECT * FROM customers ORDER BY 1 DESC;

-- Practice
SELECT * FROM customers
WHERE ContactName IS NULL;

SELECT * FROM customers
WHERE  Address IS NULL ;

SELECT CustomerName, IFNULL(Country, 'None') Country
FROM customers;