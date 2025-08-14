# SingleStore Quickstart Guide

## 1. Create a Free Account
- Visit [SingleStore](https://www.singlestore.com/try-free/)
- Sign up and launch a free cloud cluster.

## 2. Connect to the Cluster
```bash
mysql -u admin -h <HOST> -P 3306 -p
```

## 3. Load Sample Data
```sql
CREATE DATABASE ecommerce;
USE ecommerce;

-- Create table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(50),
    price DECIMAL(10,2),
    stock_qty INT
);

-- Insert sample data
INSERT INTO products VALUES
(1, 'Wireless Mouse', 450.00, 50),
(2, 'USB Keyboard', 800.00, 30);
```

## 4. Run Queries
```sql
SELECT * FROM products WHERE price < 500;
```

✅ You’ve just queried data in SingleStore!
