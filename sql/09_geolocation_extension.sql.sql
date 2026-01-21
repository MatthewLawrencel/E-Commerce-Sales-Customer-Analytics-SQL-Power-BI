-- Revenue by customer state
-- Revenue by customer state
SELECT 
    c.customer_state,
    SUM(oi.price) AS total_revenue
FROM orders_clean o
JOIN customers_clean c ON o.customer_id = c.customer_id
JOIN order_items_clean oi ON o.order_id = oi.order_id
GROUP BY c.customer_state
ORDER BY total_revenue DESC;

