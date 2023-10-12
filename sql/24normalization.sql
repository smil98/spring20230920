-- What is normalized table? -> table that consists only atomic data

CREATE TABLE my_table21_person (
    name VARCHAR(100) NOT NULL,
    higest_education_level VARCHAR(100),
    expertise VARCHAR(1000)
);

INSERT INTO my_table21_person
VALUE ('SonHeungMin', 'Undergraduate', 'Soccer, Sing');

INSERT INTO my_table21_person
VALUE ('KimMinJae', 'Undergraduate', 'Badminton, BasketBall');
-- this is not atomic data as two expertise

INSERT INTO my_table21_person
VALUE ('LeeKangIn', 'Graduate', 'VolleyBall');

CREATE TABLE my_table22_person (
    name VARCHAR(100) NOT NULL,
    higest_education_level VARCHAR(100),
    expertise1 VARCHAR(1000),
    expertise2 VARCHAR(1000),
    expertise3 VARCHAR(1000)
);

INSERT INTO my_table22_person
VALUE ('SonHeungMin', 'Undergraduate', 'Soccer', 'Sing', null);

INSERT INTO my_table22_person
VALUE ('KimMinJae', 'Undergraduate', 'Badminton', 'BasketBall', null);

INSERT INTO my_table22_person
VALUE ('LeeKangIn', 'Graduate', 'VolleyBall', null, null);

-- pg.209
-- also not atomic as same type of data exists multiply

CREATE TABLE my_table23_person (
   name VARCHAR(100) NOT NULL,
   higest_education_level VARCHAR(100),
   expertise VARCHAR(1000)
);

INSERT INTO my_table23_person
VALUE ('SonHeungMin', 'Undergraduate', 'Soccer');
INSERT INTO my_table23_person
VALUE ('SonHeungMin', 'Undergraduate', 'Sing');
INSERT INTO my_table23_person
VALUE ('KimMinJae', 'Undergraduate', 'Badminton');
INSERT INTO my_table23_person
VALUE ('KimMinJae', 'Undergraduate', 'BasketBall');
INSERT INTO my_table23_person
VALUE ('LeeKangIn', 'Graduate', 'VolleyBall');

-- atomic
SELECT * FROM my_table23_person;

CREATE TABLE my_table25_person(
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    ssn VARCHAR(10) NOT NULL,
    name VARCHAR(10) NOT NULL,
    education_level VARCHAR(10),
    expertise VARCHAR(10)
);

INSERT INTO my_table25_person
VALUE ('080101', 'HeungMin', 'Undergraduate', 'Soccer');
INSERT INTO my_table25_person
VALUE ('080101', 'HeungMin', 'Undergraduate', 'Sing');
INSERT INTO my_table25_person
VALUE ('090101', 'KangIn', 'Undergraduate', 'Soccer');
INSERT INTO my_table25_person
VALUE ('090101', 'KangIn', 'Undergraduate', 'Soccer');

CREATE TABLE my_table26_person(
    id INT PRIMARY KEY AUTO_INCREMENT, -- PRIMARY KEY = NOT NULL UNIQUE
    ssn VARCHAR(10) NOT NULL,
    name VARCHAR(10) NOT NULL,
    education_level VARCHAR(10),
    expertise VARCHAR(10)
);

