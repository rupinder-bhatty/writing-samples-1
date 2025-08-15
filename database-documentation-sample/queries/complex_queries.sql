-- Subquery: Find customers who have placed at least one order
SELECT first_name, last_name
FROM Customers
WHERE customer_id IN (SELECT DISTINCT customer_id FROM Orders);

-- CTE (Common Table Expression): Find the total quantity ordered for each product
WITH ProductOrderQuantities AS (
    SELECT product_id, SUM(quantity) AS total_ordered_quantity
    FROM Order_Items
    GROUP BY product_id
)
SELECT p.product_name, poq.total_ordered_quantity
FROM Products p
JOIN ProductOrderQuantities poq ON p.product_id = poq.product_id;

-- Window Function (Conceptual): Rank customers by their total spending
-- Note: This is an advanced concept, and syntax might vary slightly between databases.
SELECT
    first_name,
    last_name,
    total_spent,
    RANK() OVER (ORDER BY total_spent DESC) AS spending_rank
FROM (
    SELECT
        c.first_name,
        c.last_name,
        SUM(o.total_amount) AS total_spent
    FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
) AS CustomerSpending;

-- CASE Statement: Categorize orders based on their total amount
SELECT
    order_id,
    total_amount,
    CASE
        WHEN total_amount > 1000 THEN 'High Value'
        WHEN total_amount BETWEEN 500 AND 1000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_value_category
FROM Orders;
