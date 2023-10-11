-- mariadb INT - java int
-- DEC - double
-- VARCHAR - String
-- DATE - Timestamp(LocalDate)
-- DATETIME - Timestamp(LocalDateTime)

USE mydb1;
CREATE TABLE my_table12(
  int_col INT,
  dec_col DEC,
  str_col VARCHAR(10),
  date_col DATE,
  date_time_col DATETIME
);

