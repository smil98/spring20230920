USE mydb1;

CREATE TABLE my_table13 (
        col1 INT NULL , -- null 허용
        col2 INT NOT NULL -- null 허용 안함
);

INSERT INTO my_table13 (col1, col2)
    VALUE (33, 44); -- ok

INSERT INTO my_table13 (col2)
    VALUE (55); -- ok

INSERT INTO my_table13 (col1)
    VALUE (66); -- not ok

SELECT * FROM my_table13;

-- UNIQUE : allows distinct values only (like HashSet)
CREATE TABLE my_table14 (
                            col1 INT,
                            col2 INT UNIQUE
);
-- can also add as UNIQUE KEY `col2` (`col2`)

INSERT INTO my_table14 (col1, col2)
    VALUE (11, 22); -- ok
INSERT INTO my_table14 (col1, col2)
    VALUE (11, 33); -- ok
INSERT INTO my_table14 (col1, col2)
    VALUE (11, 33); -- not ok
INSERT INTO my_table14 (col1)
    VALUE (11);

SELECT * FROM my_table14;

CREATE TABLE my_table15 (
    col1 INT,
    col2 INT NOT NULL,
    col3 INT UNIQUE,
    col4 INT NOT NULL UNIQUE
);

INSERT INTO my_table15 (col1, col2, col3, col4)
VALUE (11,22,33,44);

INSERT INTO my_table15
VALUE (11,22,33,44); -- unable since duplicate values are inserted into unique col

INSERT INTO my_table15
VALUE (11,22,44,NULL); -- unable since null inserted into col4 where not null is accepted only

INSERT INTO my_table15
VALUE (11,22,44,55);

-- Practice

CREATE TABLE my_table16 (
    col1 INT,
    col2 VARCHAR(100) UNIQUE,
    col3 INT NOT NULL
);

INSERT INTO my_table16
VALUE (1, 'blahblah', 30);

SELECT * FROM my_table16;

-- Default : sets default value when null is entered

CREATE TABLE my_table17 (
    col1 INT,
    col2 INT DEFAULT 100,
    col3 VARCHAR(10) DEFAULT 'empty',
    col4 DATETIME DEFAULT NOW()
);

INSERT INTO my_table17
VALUE (22,33,'son', '2023-11-11 22:23:24');

INSERT INTO my_table17 (col1)
VALUE (222);

INSERT INTO my_table17
VALUE (333, NULL, NULL, NULL);

SELECT * FROM my_table17;

CREATE TABLE my_table18 (
    col1 INT,
    col2 INT DEFAULT 300,
    col3 INT NOT NULL DEFAULT 500
);

INSERT INTO my_table18 (col1, col2, col3)
VALUE (3,NULL, NULL); -- col3 NOT NULL so doesn't work

INSERT INTO my_table18 (col1)
VALUE (4);

SELECT * FROM my_table18;

CREATE TABLE my_table19 (
    col1 INT NOT NULL UNIQUE DEFAULT 100
);

-- To check col and types, constraints : DESCRIBE (abbrev. as DESC)
DESCRIBE my_table18;
DESC my_table18;

DESCRIBE my_table15;
-- Primary Key -> NOT NULL UNIQUE

-- TABLE CREATE Query checker :
SHOW CREATE TABLE my_table15;

CREATE TABLE my_table20 (
    col1 INT,
    col2 INT CHECK ( col2 > 100 ),
    col3 INT CHECK ( col3 > 1000 AND col3 < 2000 )
);

DESC my_table20;

INSERT INTO my_table20
VALUE (1000, 50, -10) -- unable to do so