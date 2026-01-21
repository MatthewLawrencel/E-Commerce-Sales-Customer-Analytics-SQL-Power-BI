SELECT c.customer_unique_id,
MIN(o.order_purchase_timestamp) AS first_purchase_date,
FORMAT(MIN(o.order_purchase_timestamp), 'yyyy-MM') AS cohort_month
INTO customer_cohorts
FROM orders_clean o
JOIN customers_clean c ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id;

SELECT cc.customer_unique_id,
cc.cohort_month,
FORMAT(o.order_purchase_timestamp, 'yyyy-MM') AS order_month
INTO cohort_orders
FROM orders_clean o
JOIN customers_clean c ON o.customer_id = c.customer_id
JOIN customer_cohorts cc ON c.customer_unique_id = cc.customer_unique_id;

SELECT cohort_month, order_month,
DATEDIFF(MONTH,
CAST(cohort_month + '-01' AS DATE),
CAST(order_month + '-01' AS DATE)) AS cohort_index,
COUNT(DISTINCT customer_unique_id) AS active_customers
INTO cohort_analysis
FROM cohort_orders
GROUP BY cohort_month, order_month;
