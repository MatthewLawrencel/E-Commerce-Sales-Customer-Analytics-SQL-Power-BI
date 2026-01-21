-- Total Orders & Revenue
SELECT COUNT(DISTINCT order_id) AS total_orders FROM orders_clean;
SELECT SUM(price) AS total_revenue FROM order_items_clean;

-- Monthly Revenue
SELECT YEAR(o.order_purchase_timestamp) AS order_year,
MONTH(o.order_purchase_timestamp) AS order_month,
SUM(oi.price) AS monthly_revenue
FROM orders_clean o
JOIN order_items_clean oi ON o.order_id = oi.order_id
GROUP BY YEAR(o.order_purchase_timestamp), MONTH(o.order_purchase_timestamp)
ORDER BY order_year, order_month;

-- Top Products
SELECT TOP 10 product_id, SUM(price) AS total_revenue
FROM order_items_clean
GROUP BY product_id
ORDER BY total_revenue DESC;

-- Top Customers (LTV)
SELECT c.customer_unique_id, SUM(oi.price) AS lifetime_value
FROM orders_clean o
JOIN customers_clean c ON o.customer_id = c.customer_id
JOIN order_items_clean oi ON o.order_id = oi.order_id
GROUP BY c.customer_unique_id
ORDER BY lifetime_value DESC;
