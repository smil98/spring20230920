USE mydb1;

CREATE TABLE my_table46 (
    col1 INT,
    col2 INT,
    col3 INT,
    col4 INT,
    col5 INT
);

-- NOT NULL / Enable NULL

ALTER TABLE my_table46
MODIFY col1 INT NOT NULL;

ALTER TABLE my_table46
MODIFY col1 INT NULL;

-- Practice
ALTER TABLE my_table46
MODIFY col2 INT NOT NULL;

ALTER TABLE my_table46
MODIFY col2 INT NULL;

-- DEFAULT SETTINGS
ALTER TABLE my_table46
ALTER col3 SET DEFAULT 100;

ALTER TABLE my_table46
ALTER col3 DROP DEFAULT;

-- Practice
ALTER TABLE my_table46
ALTER col4 SET DEFAULT 0;

ALTER TABLE my_table46
ALTER col4 DROP DEFAULT;

-- Unique
ALTER TABLE my_table46
ADD UNIQUE (col5);

SHOW CREATE TABLE my_table46;

CREATE TABLE `my_table46` (
                              `col1` int(11) DEFAULT NULL,
                              `col2` int(11) DEFAULT NULL,
                              `col3` int(11) DEFAULT NULL,
                              `col4` int(11) DEFAULT NULL,
                              `col5` int(11) DEFAULT NULL,
                              UNIQUE KEY `col5` (`col5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- MUST USE THE NAME NEXT TO UNIQUE KEY CLAUSE

ALTER TABLE my_table46
DROP INDEX col5;

-- PRIMARY KEY

ALTER TABLE my_table46
ADD PRIMARY KEY (col1);

ALTER TABLE my_table46
DROP PRIMARY KEY;

ALTER TABLE my_table46
MODIFY col1 INT NULL;

CREATE TABLE my_table47 (
    id INT AUTO_INCREMENT primary key,
    name VARCHAR(10)
);

-- to reference

ALTER TABLE my_table46
ADD FOREIGN KEY (col5) REFERENCES my_table47(id);

SHOW CREATE TABLE my_table46; -- GET FOREIGN KEY ALIAS

ALTER TABLE my_table46
DROP FOREIGN KEY my_table46_ibfk_1;

ALTER TABLE my_table46
DROP INDEX col5;


DESC my_table46;
