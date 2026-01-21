SELECT c.customer_unique_id,
MAX(o.order_purchase_timestamp) AS last_purchase_date,
COUNT(DISTINCT o.order_id) AS frequency,
SUM(oi.price) AS monetary
INTO rfm_base
FROM orders_clean o
JOIN customers_clean c ON o.customer_id = c.customer_id
JOIN order_items_clean oi ON o.order_id = oi.order_id
GROUP BY c.customer_unique_id;

ALTER TABLE rfm_base ADD recency INT;

UPDATE rfm_base
SET recency = DATEDIFF(
DAY,
last_purchase_date,
(SELECT MAX(order_purchase_timestamp) FROM orders_clean)
);

SELECT *,
NTILE(5) OVER (ORDER BY recency DESC) AS r_score,
NTILE(5) OVER (ORDER BY frequency) AS f_score,
NTILE(5) OVER (ORDER BY monetary) AS m_score
INTO rfm_scores
FROM rfm_base;

SELECT *, CONCAT(r_score,f_score,m_score) AS rfm_segment
INTO rfm_final
FROM rfm_scores;
