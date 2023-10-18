USE w3schools;

ALTER TABLE products
ADD COLUMN col1 INT;

ALTER TABLE products
ADD COLUMN col2 VARCHAR(10);

-- Not recommended as switching col orders may affect other queries
ALTER TABLE products
ADD COLUMN col3 VARCHAR(10) AFTER ProductName;

ALTER TABLE products
ADD COLUMN col4 VARCHAR(10) FIRST;

-- Can also add restraints
ALTER TABLE products
ADD COLUMN col5 VARCHAR(10) NOT NULL UNIQUE DEFAULT 'BLANK' REFERENCES employees;

DESC products;

-- Practice
ALTER TABLE employees
ADD COLUMN salary DEC(10, 2) NOT NULL DEFAULT 0.00;

-- Delete Columns
ALTER TABLE products
DROP COLUMN col1;

-- Modify col type
ALTER TABLE products
MODIFY COLUMN col3 INT;
-- if value exists in column(and data type doesn't match) can't modify data type
-- extending varchar limit is fine, but shrinking must be done with caution

