-- Can set multiple col as primary but not recommended

CREATE TABLE my_table29 (
    name VARCHAR(10),
    birth DATE,
    PRIMARY KEY (name, birth)
);

CREATE TABLE my_table30 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10)
);

INSERT INTO my_table30 (name)
VALUES ('son'), ('lee'), ('kang');

INSERT INTO my_table30 (name)
VALUE ('choi');

DELETE FROM my_table30
WHERE id = 4;

INSERT INTO my_table30 (name)
VALUE ('kim'); -- id will equal to 5 as auto incremented
-- don't try to reset ID as there are many different occasions that may occur
SELECT * FROM my_table30;