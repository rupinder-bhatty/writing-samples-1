# SQL Queries

## 1. List all products under ₹500
```sql
SELECT * FROM products WHERE price < 500;
```

## 2. Top 5 customers by total spend
```sql
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;
```

## 3. Monthly sales breakdown
```sql
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_amount) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;
```

## 4. Orders without payment yet
```sql
SELECT * FROM orders WHERE order_id NOT IN (SELECT order_id FROM payments);
```

## 5. Customer order history
```sql
SELECT c.name, p.name AS product, oi.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;
```
