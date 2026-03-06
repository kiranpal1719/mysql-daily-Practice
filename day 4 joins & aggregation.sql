CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    transaction_type VARCHAR(20) NOT NULL,
    transaction_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES bank_customer(customer_id)
);


SELECT * FROM transactions;

USE BANK;

INSERT INTO transactions (customer_id, amount, transaction_type, transaction_date) VALUES
(1, 5000, 'Deposit', '2025-01-15'),
(1, 2000, 'Withdrawal', '2025-01-18'),
(2, 10000, 'Deposit', '2025-01-20'),
(3, 3000, 'Withdrawal', '2025-01-22'),
(4, 7500, 'Deposit', '2025-01-25'),
(1, 1500, 'Withdrawal', '2025-02-01');

-- INNER JOIN

SELECT c.customer_id, c.name, t.amount, t.transaction_type
FROM bank_customer c
INNER JOIN transactions t ON c.customer_id = t.customer_id; 


-- LEFT JOIN

SELECT c.customer_id, c.name, t.amount, t.transaction_type
FROM bank_customer c
LEFT JOIN transactions t ON c.customer_id = t.customer_id; 

-- GROUPED BY TOTAL TRANSACTION

SELECT c.customer_id, c.name, COUNT(t.transaction_id) as total_transactions
FROM bank_customer c
LEFT JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.name;

-- AGGREGATE FUNCTION

SELECT c.customer_id, c.name, 
       COUNT(t.transaction_id) as total_transactions,
       SUM(t.amount) as total_amount,
       AVG(t.amount) as avg_amount,
       MAX(t.amount) as max_amount,
       MIN(t.amount) as min_amount
FROM bank_customer c
LEFT JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.name; 

--  RIGHT JOIN

SELECT c.customer_id, c.name, c.city, t.transaction_id, t.amount, t.transaction_type, t.transaction_date
FROM bank_customer c
RIGHT JOIN transactions t ON c.customer_id = t.customer_id
ORDER BY c.customer_id; 

-- HAVING

SELECT c.customer_id, c.name, COUNT(t.transaction_id) as total_transactions, SUM(t.amount) as total_amount
FROM bank_customer c
LEFT JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(t.transaction_id) > 1
ORDER BY total_transactions DESC; 