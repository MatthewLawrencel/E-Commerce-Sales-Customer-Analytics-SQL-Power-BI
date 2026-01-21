SELECT customer_id, customer_unique_id,
TRY_CAST(customer_zip_code_prefix AS INT) AS customer_zip_code_prefix,
LTRIM(RTRIM(customer_city)) AS customer_city,
LTRIM(RTRIM(customer_state)) AS customer_state
INTO customers_clean
FROM customers;

SELECT order_id, customer_id, LTRIM(RTRIM(order_status)) AS order_status,
TRY_CAST(order_purchase_timestamp AS DATETIME) AS order_purchase_timestamp,
TRY_CAST(order_approved_at AS DATETIME) AS order_approved_at,
TRY_CAST(order_delivered_carrier_date AS DATETIME) AS order_delivered_carrier_date,
TRY_CAST(order_delivered_customer_date AS DATETIME) AS order_delivered_customer_date,
TRY_CAST(order_estimated_delivery_date AS DATETIME) AS order_estimated_delivery_date
INTO orders_clean
FROM orders;

SELECT order_id, TRY_CAST(order_item_id AS INT) AS order_item_id,
product_id, seller_id,
TRY_CAST(shipping_limit_date AS DATETIME) AS shipping_limit_date,
TRY_CAST(price AS FLOAT) AS price,
TRY_CAST(freight_value AS FLOAT) AS freight_value
INTO order_items_clean
FROM order_items;

SELECT order_id, TRY_CAST(payment_sequential AS INT) AS payment_sequential,
LTRIM(RTRIM(payment_type)) AS payment_type,
TRY_CAST(payment_installments AS INT) AS payment_installments,
TRY_CAST(payment_value AS FLOAT) AS payment_value
INTO payments_clean
FROM payments;

SELECT product_id, LTRIM(RTRIM(product_category_name)) AS product_category_name,
TRY_CAST(product_name_length AS INT) AS product_name_length,
TRY_CAST(product_description_length AS INT) AS product_description_length,
TRY_CAST(product_photos_qty AS INT) AS product_photos_qty,
TRY_CAST(product_weight_g AS INT) AS product_weight_g,
TRY_CAST(product_length_cm AS INT) AS product_length_cm,
TRY_CAST(product_height_cm AS INT) AS product_height_cm,
TRY_CAST(product_width_cm AS INT) AS product_width_cm
INTO products_clean
FROM products;

SELECT seller_id,
TRY_CAST(seller_zip_code_prefix AS INT) AS seller_zip_code_prefix,
LTRIM(RTRIM(seller_city)) AS seller_city,
LTRIM(RTRIM(seller_state)) AS seller_state
INTO sellers_clean
FROM sellers;

SELECT review_id, order_id,
TRY_CAST(review_score AS INT) AS review_score,
review_comment_title, review_comment_message,
TRY_CAST(review_creation_date AS DATETIME) AS review_creation_date,
TRY_CAST(review_answer_timestamp AS DATETIME) AS review_answer_timestamp
INTO reviews_clean
FROM reviews;
