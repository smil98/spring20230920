SELECT * FROM products;
-- First Select the record you want to update and check
SELECT * FROM products WHERE ProductID=1;


-- Specify by where, and set the modifications
UPDATE products
SET ProductName = 'cHais',
    Unit = '11 boxes x 20 bags',
    Price = 36.00
WHERE ProductID = 1;

-- Practice
SELECT * FROM employees;

UPDATE employees
SET LastName = 'dAvolio'
WHERE EmployeeID = 1;

UPDATE employees
SET Notes = 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses ''Successful Telemarketing'' and ''International Sales Management''. He is fluent in Chinese.'
WHERE EmployeeID = 5;

UPDATE suppliers
SET Phone = '(172) 555-2223',
    Address = '50 Gilbert St.'
WHERE SupplierID = 1;

SELECT * FROM products
WHERE CategoryID = 1;

UPDATE products
SET Price = Price / 2
WHERE CategoryID =1;

