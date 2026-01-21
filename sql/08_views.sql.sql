CREATE VIEW vw_sales_summary AS
SELECT YEAR(o.order_purchase_timestamp) AS order_year,
MONTH(o.order_purchase_timestamp) AS order_month,
COUNT(DISTINCT o.order_id) AS total_orders,
SUM(oi.price) AS total_revenue,
AVG(oi.price) AS avg_item_price
FROM orders_clean o
JOIN order_items_clean oi ON o.order_id = oi.order_id
GROUP BY YEAR(o.order_purchase_timestamp), MONTH(o.order_purchase_timestamp);

CREATE VIEW vw_customer_ltv AS
SELECT c.customer_unique_id,
COUNT(DISTINCT o.order_id) AS total_orders,
SUM(oi.price) AS lifetime_value,
AVG(oi.price) AS avg_order_value
FROM orders_clean o
JOIN customers_clean c ON o.customer_id = c.customer_id
JOIN order_items_clean oi ON o.order_id = oi.order_id
GROUP BY c.customer_unique_id;
