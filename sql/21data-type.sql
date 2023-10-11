-- Number(Integer, Real Number)
-- String
-- Date (DateTime)

-- Integer : int
CREATE TABLE my_table3 (
    col1 int
);
INSERT INTO my_table3 (col1)
    VALUE (298743);
INSERT INTO my_table3 (col1)
    VALUE ('12300');
INSERT INTO my_table3 (col1)
    VALUE ('two'); -- wrong
SELECT * FROM my_table3;

-- real : DEC
CREATE TABLE my_table4 (
    col1 DEC -- DEC(10, 0)
);
INSERT INTO my_table4 (col1)
    VALUE (3.14);
SELECT * FROM my_table4;

CREATE TABLE my_table5 (
    col1 DEC(5, 3) -- total length of 5, 3 decimal point
);
INSERT INTO my_table5 (col1)
    VALUE (10.123);
INSERT INTO my_table5 (col1)
    VALUE (10.1234);
INSERT INTO my_table5 (col1)
    VALUE (123.456);

SELECT * FROM my_table5;

-- Practice

CREATE TABLE my_table9 (
  name varchar(100),
  address varchar(200),
  phone varchar(100)
);