USE mydb1;

CREATE TABLE my_table42_a (
    col1 VARCHAR(1)
);
CREATE TABLE my_table43_b (
    col1 VARCHAR(1)
);

INSERT INTO my_table42_a (col1)
VALUES ('a'),
       ('b'),
       ('c');

INSERT INTO my_table43_b (col1)
VALUES ('b'),
       ('c'),
       ('d'),
       ('e');

SELECT *
FROM my_table42_a a JOIN my_table43_b b
                         ON a.col1 = b.col1;
SELECT *
FROM my_table42_a a INNER JOIN my_table43_b b
                               ON a.col1 = b.col1;

SELECT *
FROM my_table42_a a LEFT JOIN my_table43_b b
                              ON a.col1 = b.col1;
SELECT *
FROM my_table42_a a LEFT OUTER JOIN my_table43_b b
                                    ON a.col1 = b.col1;

SELECT *
FROM my_table42_a a RIGHT JOIN my_table43_b b
                               ON a.col1 = b.col1;
SELECT *
FROM my_table42_a a RIGHT OUTER JOIN my_table43_b b
                                     ON a.col1 = b.col1;


CREATE TABLE my_table44_a (
  col1 VARCHAR(1),
  name VARCHAR(10),
  address VARCHAR(10)
);
CREATE TABLE my_table45_b (
  col1 VARCHAR(1),
  product VARCHAR(10),
  country VARCHAR(10)
);

INSERT INTO my_table44_a (col1, name, address)
VALUES ('a', 'HeungMin', 'London'),
       ('b', 'KangIn', 'Paris'),
       ('c', 'MinJae', 'Napoli');
INSERT INTO my_table45_b (col1, product, country)
VALUES ('b', 'SoccerBall', 'Korea'),
       ('c', 'Mac', 'America'),
       ('d', 'Phone', 'Australia'),
       ('e', 'Hashbrown', 'UK');

SELECT *
FROM my_table44_a a JOIN my_table45_b b
    ON a.col1 = b.col1;
SELECT *
FROM my_table44_a a LEFT JOIN my_table45_b b
    ON a.col1 = b.col1;
SELECT *
FROM my_table44_a a RIGHT JOIN my_table45_b b
    ON a.col1 = b.col1;



