-- DATABASE, SCHEMA : where the table exist

-- creating database
CREATE DATABASE mydb1;
CREATE SCHEMA mydb2;

SELECT * FROM mydb1.table_name;
SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.products;
SELECT * FROM products;

-- moving database
USE mydb1;
SELECT * FROM w3schools.products;

-- deleting database
DROP DATABASE mydb2;
DROP DATABASE mydb1;

USE w3schools;

CREATE DATABASE mydb1;


