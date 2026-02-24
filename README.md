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
- city
- mobile
- email (Unique)
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
