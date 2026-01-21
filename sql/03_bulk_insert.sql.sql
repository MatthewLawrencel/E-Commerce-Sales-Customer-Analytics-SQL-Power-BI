BULK INSERT customers
FROM 'C:\Users\lawrence\Desktop\E-Commerce Sales & Customer Analytics Platform\olist_customers_dataset.csv'
WITH (FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a');

BULK INSERT orders
FROM 'C:\Users\lawrence\Desktop\E-Commerce Sales & Customer Analytics Platform\olist_orders_dataset.csv'
WITH (FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a');

BULK INSERT order_items
FROM 'C:\Users\lawrence\Desktop\E-Commerce Sales & Customer Analytics Platform\olist_order_items_dataset.csv'
WITH (FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a');

BULK INSERT payments
FROM 'C:\Users\lawrence\Desktop\E-Commerce Sales & Customer Analytics Platform\olist_order_payments_dataset.csv'
WITH (FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a');

BULK INSERT products
FROM 'C:\Users\lawrence\Desktop\E-Commerce Sales & Customer Analytics Platform\olist_products_dataset.csv'
WITH (FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a');

BULK INSERT sellers
FROM 'C:\Users\lawrence\Desktop\E-Commerce Sales & Customer Analytics Platform\olist_sellers_dataset.csv'
WITH (FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a');

BULK INSERT reviews
FROM 'C:\Users\lawrence\Desktop\E-Commerce Sales & Customer Analytics Platform\olist_order_reviews_dataset.csv'
WITH (FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a');

BULK INSERT category_translation
FROM 'C:\Users\lawrence\Desktop\E-Commerce Sales & Customer Analytics Platform\product_category_name_translation.csv'
WITH (FIRSTROW=2, FIELDTERMINATOR=',', ROWTERMINATOR='0x0a');
