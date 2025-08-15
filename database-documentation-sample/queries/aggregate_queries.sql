-- COUNT: Count the total number of products
SELECT COUNT(*) AS total_products
FROM Products;

-- COUNT: Count the number of customers registered each year
SELECT STRFTIME('%Y', registration_date) AS registration_year, COUNT(customer_id) AS customer_count
FROM Customers
GROUP BY registration_year;

-- SUM: Calculate the total revenue from all orders
SELECT SUM(total_amount) AS total_revenue
FROM Orders;

-- AVG: Calculate the average price of products in the 'Electronics' category
SELECT AVG(price) AS average_electronics_price
FROM Products
WHERE category = 'Electronics';

-- MIN/MAX: Find the highest and lowest product prices
SELECT MAX(price) AS highest_price, MIN(price) AS lowest_price
FROM Products;

-- GROUP BY and HAVING: Find categories with more than 2 products
SELECT category, COUNT(product_id) AS product_count
FROM Products
GROUP BY category
HAVING COUNT(product_id) > 2;
