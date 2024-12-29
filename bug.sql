```sql
-- Incorrect use of aggregate functions without GROUP BY
SELECT COUNT(*) AS total_orders, customer_id FROM orders GROUP BY customer_id;
-- Missing join condition
SELECT o.order_id, c.customer_name
FROM orders o, customers c
WHERE o.customer_id = c.customer_id; 
-- Incorrect subquery usage
SELECT * FROM products WHERE price > (SELECT AVG(price) FROM products);
-- Using reserved keywords as column names
CREATE TABLE users (SELECT user_id, user_name, order); 
```