# MySQL Database Practice 💻

This repository contains my MySQL practice work.

---

## Database Details

**Database Name:** bank  
**Table Name:** customers

---

## 📊 Table Structure

The customers table contains the following fields:

- customer_id (Primary Key)
- name
- age
- gender
- city
- mobile
- email (Unique)
- account_type
- balance
---

## 💻 SQL Query


sql

CREATE DATABASE bank;
USE bank;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT(3) NOT NULL,
    city VARCHAR(100) NOT NULL,
    mobile VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    balance DECIMAL(10,2) NOT NULL
);

---

##  Day 2 - Data Insertion


On Day 2, I focused on **inserting data** into the `bank_customer` table in the `bank` database.  
I practiced adding multiple customer records, including details like:

- id, Name, Age, Gender  
- City, Mobile, Email  
- Account Type (Savings / Current)  
- Account Balance  

This helped me understand how to efficiently populate a table with multiple rows of data and prepare it for further queries.

---

## 📅 DAY 3 – PRACTICAL IMPLEMENTATION OF SQL COMMANDS

🔹 1. DDL – DATA DEFINITION LANGUAGE

DDL commands are used to define and manage the structure of the database.

Common Commands:
CREATE, ALTER, DROP, TRUNCATE

Purpose in Project:
To create tables, modify structures, and manage database objects as needed.
##
🔹 2. DML – DATA MANIPULATION LANGUAGE

DML commands allow us to manipulate the data stored in tables.

Common Commands:
INSERT, UPDATE, DELETE

Purpose in Project:
To insert new records, update existing data, and remove unnecessary entries from the database.
##
🔹 3. DQL – DATA QUERY LANGUAGE

DQL commands are used to retrieve and analyze data from the database.

Common Command:
SELECT

Purpose in Project:
To fetch information about customers and accounts, filter data, and perform queries for analysis.
##
🔹 4. DCL – DATA CONTROL LANGUAGE

DCL commands manage access and permissions for users on the database.

Common Commands:
GRANT, REVOKE

Purpose in Project:
To provide or restrict user access to specific tables or operations for security and control.
##
🔹 5. TCL – TRANSACTION CONTROL LANGUAGE

TCL commands are used to manage transactions within the database.

Common Commands:
COMMIT, ROLLBACK, SAVEPOINT

Purpose in Project:
To permanently save changes, undo accidental modifications, and ensure data integrity.

---


## 📚 Day 4 - SQL JOINs & Aggregate Functions
On Day 4, I focused on connecting multiple tables and summarizing data using SQL's most powerful features.
I practiced:

- **INNER JOIN** - Fetching matching records from two tables

- **LEFT JOIN** - Getting all records from first table + matching from second

- **RIGHT JOIN** - Getting all records from second table + matching from first

- **FULL OUTER JOIN** - Combining all records from both tables

- **Aggregate Functions** (COUNT, SUM, AVG, MAX, MIN) - Summarizing data

- **GROUP BY** - Organizing data into groups

- **HAVING** - Filtering groups based on conditions

- **ORDER BY & LIMIT** - Sorting and limiting results

