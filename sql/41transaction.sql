USE w3schools;
CREATE TABLE bank(
  name VARCHAR(10) PRIMARY KEY,
  money INT NOT NULL DEFAULT 0
);

INSERT INTO bank (name, money)
VALUES ('SON', 10000),
       ('KIM', 10000);

-- SON sends KIM 10000 dollars to kim
-- son must lose 1000 and then kim has to receive money
-- one workflow = transaction
UPDATE bank
SET money = money - 1000
WHERE name = 'son';
UPDATE bank
SET money = money + 1000
WHERE name = 'kim';

SELECT * FROM bank;

-- ROLLBACK
ROLLBACK; -- returns to first update

-- COMMIT
COMMIT; -- applies updates to the record finally
-- tx: auto -> commits automatically for each update