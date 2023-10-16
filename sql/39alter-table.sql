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

