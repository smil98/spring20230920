USE mydb1;

-- creating table
CREATE TABLE tableName (
                      colName colType,
                      colName colType
);

-- Table name, column name syntax
-- lower_snake_case (*)
-- UPPER_SNAKE_CASE
-- UpperCamelCase
-- lowerCamelCase

CREATE TABLE my_table1 (
                           col_name1 varchar(100),
                           col_name2 varchar(100),
                           col_name3 varchar(100)
);

SELECT * FROM my_table1;
INSERT INTO my_table1 (col_name1, col_name2, col_name3)
    VALUE ('minjae', 'heungmin', 'kangin');

-- ex) creating my_table2, where 4 columns exist, with type varchar(10)
CREATE TABLE my_table2 (
                           age varchar(10),
                           address varchar(10),
                           phone_number varchar(10),
                           country varchar(10)
);
SELECT * FROM my_table2;
INSERT INTO my_table2 (age, address, phone_number, country)
    VALUE ('30', 'seoul', '010', 'korea');
