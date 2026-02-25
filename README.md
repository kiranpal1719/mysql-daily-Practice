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

```sql
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

## 📌 Day 2 — Data Insertion

On Day 2, I focused on **inserting data** into the `bank_customer` table in the `bank` database.  
I practiced adding multiple customer records, including details like:

- Name, Age, Gender  
- City, Mobile, Email  
- Account Type (Savings / Current)  
- Account Balance  

This helped me understand how to efficiently populate a table with multiple rows of data and prepare it for further queries.

