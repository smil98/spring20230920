-- Normalization
-- First Normal Form 1NF
-- table should consist primary key with atomic data

-- Second Normal Form 2NF pg.369
-- Must be 1NF, should have no partial dependency, meaning that
-- all non-key attributes are fully dependent on primary key

-- Third Normal Form 3NF pg.374
-- Must be 2NF, and have no transitive partial dependency
-- meaning that non-prime attribute is dependent on non-prime attribute

-- applicant table
-- id, name, highest_education_level, school_address

CREATE TABLE my_table30_person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10),
    school VARCHAR(30),
    school_address VARCHAR(10)
);

INSERT INTO my_table30_person (name, school, school_address)
VALUES ('HeungMin', 'Seoul National University', 'GuanAk'),
       ('KangIn', 'Korea University', 'Anam'),
       ('MinJae', 'Yeonsei University', 'Sincheon'),
       ('JiSung', 'Yeonsei University', 'Sincheon'),
       ('BeomGeun', 'Korea University', 'Anam');

-- Meets 1NF, 2NF requirements but col3-4 has transitive partial dependency
-- thus have to create seperate table for school

CREATE TABLE my_table31_person (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(10),
   school VARCHAR(30)
);

CREATE TABLE school (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    address VARCHAR(30)
);

INSERT INTO my_table31_person (name, school)
VALUES ('HeungMin', 'Seoul National University'),
       ('KangIn', 'Korea University'),
       ('MinJae', 'Yeonsei University'),
       ('JiSung', 'Yeonsei University'),
       ('BeomGeun', 'Korea University');

INSERT INTO school (name, address)
VALUES ('Seoul National University', 'GuanAk'),
       ('Yeonsei University', 'Sincheon'),
       ('Korea University', 'Anam');
-- if the school name is changed in school table, table31 school name must also be changed
-- it wouldn't in this form

CREATE TABLE my_table32_person (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(10),
   school_id INT -- reference key must be primary
);

CREATE TABLE my_table33_school (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    address VARCHAR(30)
);

INSERT INTO my_table32_person (name, school_id)
VALUES ('HeungMin', 1),
       ('KangIn', 2),
       ('MinJae', 3);

INSERT INTO my_table33_school (name, address)
VALUES ('Seoul National University', 'GuanAk'),
       ('Yeonsei University', 'Sincheon'),
       ('Korea University', 'Anam');

INSERT INTO my_table32_person (name, school_id)
VALUES ('JiSung', 4);
-- value not existing in table33_school is inserted
-- to prevent this must identify foreign key

CREATE TABLE my_table35_school (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(30),
   address VARCHAR(30)
);

-- since 34 references 35, 35 must be created beforehand
-- as well as data

CREATE TABLE my_table34_person (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(10),
   school_id INT REFERENCES my_table35_school(id) -- foreign key constraint
);

INSERT INTO my_table35_school (name, address)
VALUES ('Seoul National University', 'GuanAk'),
       ('Yeonsei University', 'Sincheon'),
       ('Korea University', 'Anam');

INSERT INTO my_table34_person (name, school_id)
VALUES ('HeungMin', 1),
       ('KangIn', 2),
       ('MinJae', 3);

SELECT * FROM my_table34_person;
SELECT * FROM my_table35_school;

UPDATE my_table34_person
SET school_id = 3
WHERE name = 'MinJae';

SELECT p.id StudentID, p.name Name, s.name School, s.address 'School Address'
FROM my_table34_person p, my_table35_school s
WHERE p.school_id = s.id
ORDER BY StudentID; -- p.id also works
-- since id exists in two tables must clarify which one to use

-- person n : 1 school