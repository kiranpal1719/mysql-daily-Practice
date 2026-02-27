USE BANK;

ALTER TABLE bank_customer
ADD country VARCHAR(100);

ALTER TABLE bank_customer
DROP COLUMN email;

-- DML

UPDATE bank_customer
SET balance = balance + 5000
WHERE customer_id = 1;
 
 
DELETE FROM bank_customer
WHERE customer_id = 12;


SELECT * FROM bank_customer;

-- DQL

SELECT name, balance FROM bank_customer; 

SELECT * FROM bank_customer
WHERE balance > 1500;

SELECT * FROM bank_customer
ORDER BY name ASC;

SELECT COUNT(*) AS total_customers FROM bank_customer;

