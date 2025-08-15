-- INNER JOIN: Retrieve customer names and their order details (only matching orders)
SELECT c.first_name, c.last_name, o.order_id, o.order_date, o.total_amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

-- LEFT JOIN: Retrieve all customer names and their order details (including customers without orders)
SELECT c.first_name, c.last_name, o.order_id, o.order_date, o.total_amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- RIGHT JOIN: Retrieve all order details and the associated customer information (including orders without a matching customer)
-- Note: This is less common as it can often be rewritten as a LEFT JOIN by swapping tables.
SELECT c.first_name, c.last_name, o.order_id, o.order_date, o.total_amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- Multiple JOINs: Get customer name, order date, product name, and quantity for each order item
SELECT c.first_name, c.last_name, o.order_date, p.product_name, oi.quantity
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id;
