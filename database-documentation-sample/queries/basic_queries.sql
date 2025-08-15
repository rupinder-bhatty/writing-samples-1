-- Select all customers
SELECT * 
FROM Customers;

-- Select product names and prices for products in the 'Electronics' category
SELECT product_name, price
FROM Products
WHERE category = 'Electronics';

-- Select customer names ordered by their registration date (ascending)
SELECT first_name, last_name, registration_date
FROM Customers
ORDER BY registration_date ASC;

-- Select the top 3 most expensive products
SELECT product_name, price
FROM Products
ORDER BY price DESC
LIMIT 3; -- or TOP 3 for SQL Server

-- Find customers whose first name starts with 'A'
SELECT first_name, last_name
FROM Customers
WHERE first_name LIKE 'A%';

-- Find orders placed between April 1st, 2024, and May 1st, 2024 (inclusive)
SELECT order_id, order_date, total_amount
FROM Orders
WHERE order_date BETWEEN '2024-04-01' AND '2024-05-01';

-- Find customers who do not have an email address (conceptual example)
SELECT first_name, last_name
FROM Customers
WHERE email IS NULL;
