CREATE TABLE customers (
    customer_id NVARCHAR(50),
    customer_unique_id NVARCHAR(50),
    customer_zip_code_prefix NVARCHAR(20),
    customer_city NVARCHAR(100),
    customer_state NVARCHAR(10)
);

CREATE TABLE orders (
    order_id NVARCHAR(50),
    customer_id NVARCHAR(50),
    order_status NVARCHAR(50),
    order_purchase_timestamp NVARCHAR(50),
    order_approved_at NVARCHAR(50),
    order_delivered_carrier_date NVARCHAR(50),
    order_delivered_customer_date NVARCHAR(50),
    order_estimated_delivery_date NVARCHAR(50)
);

CREATE TABLE order_items (
    order_id NVARCHAR(50),
    order_item_id NVARCHAR(50),
    product_id NVARCHAR(50),
    seller_id NVARCHAR(50),
    shipping_limit_date NVARCHAR(50),
    price NVARCHAR(50),
    freight_value NVARCHAR(50)
);

CREATE TABLE payments (
    order_id NVARCHAR(50),
    payment_sequential NVARCHAR(50),
    payment_type NVARCHAR(50),
    payment_installments NVARCHAR(50),
    payment_value NVARCHAR(50)
);

CREATE TABLE products (
    product_id NVARCHAR(50),
    product_category_name NVARCHAR(100),
    product_name_length NVARCHAR(50),
    product_description_length NVARCHAR(50),
    product_photos_qty NVARCHAR(50),
    product_weight_g NVARCHAR(50),
    product_length_cm NVARCHAR(50),
    product_height_cm NVARCHAR(50),
    product_width_cm NVARCHAR(50)
);

CREATE TABLE sellers (
    seller_id NVARCHAR(100),
    seller_zip_code_prefix NVARCHAR(100),
    seller_city NVARCHAR(200),
    seller_state NVARCHAR(200)
);

CREATE TABLE reviews (
    review_id NVARCHAR(MAX),
    order_id NVARCHAR(MAX),
    review_score NVARCHAR(MAX),
    review_comment_title NVARCHAR(MAX),
    review_comment_message NVARCHAR(MAX),
    review_creation_date NVARCHAR(MAX),
    review_answer_timestamp NVARCHAR(MAX)
);

CREATE TABLE category_translation (
    product_category_name NVARCHAR(MAX),
    product_category_name_english NVARCHAR(MAX)
);
