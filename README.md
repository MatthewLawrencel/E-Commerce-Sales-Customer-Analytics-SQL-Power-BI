# E-Commerce Sales & Customer Analytics Platform

## 📌 Objective
Build an end-to-end analytics solution using real e-commerce data to analyze
sales performance, customer behavior, retention, and lifetime value.

This project demonstrates a complete analytics workflow:
raw data ingestion → cleaning → analytics → business insights → BI-ready views.

---

## 📊 Dataset
**Brazilian E-Commerce Public Dataset by Olist (Kaggle)**  
- ~100,000 orders  
- 8 CSV files  
- Real transactional e-commerce data

Files used:
- olist_customers_dataset.csv  
- olist_orders_dataset.csv  
- olist_order_items_dataset.csv  
- olist_order_payments_dataset.csv  
- olist_products_dataset.csv  
- olist_sellers_dataset.csv  
- olist_order_reviews_dataset.csv  
- product_category_name_translation.csv  

---

## 🛠️ Tech Stack
- MS SQL Server  
- SQL  
- Data Modeling  
- Analytics  
- Kaggle Dataset  

---

## 🧱 Project Architecture

CSV Files (Kaggle)
↓
Raw Tables (TEXT columns)
↓
Clean Tables (Typed + Cleaned)
↓
Analytics Tables (RFM, Cohorts)
↓
Business Queries & Views
↓
Dashboards / Insights


---

## 🔄 Project Steps

### 1️⃣ Database Setup
- Created project database: `EcommerceAnalytics`
- Designed raw tables with all columns as NVARCHAR to handle messy real-world data

---

### 2️⃣ Raw Data Ingestion
- Loaded all CSV files using `BULK INSERT`
- Handled encoding, truncation, and type mismatch issues
- Ensured full row counts matched source files

---

### 3️⃣ Data Cleaning Layer
Created clean analytics tables using `TRY_CAST`, trimming, and safe conversions:

- `customers_clean`
- `orders_clean`
- `order_items_clean`
- `payments_clean`
- `products_clean`
- `sellers_clean`
- `reviews_clean`

Handled:
- Invalid numeric values  
- Dirty ZIP codes  
- Broken timestamps  
- Text trimming  

---

### 4️⃣ Business KPIs & Analytics

Implemented core business metrics:

- Total Orders  
- Total Revenue  
- Average Order Value (AOV)  
- Customer Lifetime Value (LTV)  
- Repeat vs One-time Customers  
- Monthly Revenue Trend  
- Top Products & Categories by Revenue  

---

### 5️⃣ Advanced Analytics

#### 🔹 RFM Segmentation
- Recency: days since last purchase  
- Frequency: number of orders  
- Monetary: total spend  
- Segmented customers into RFM scores using `NTILE`

Tables:
- `rfm_base`
- `rfm_scores`
- `rfm_final`

---

#### 🔹 Cohort Analysis
- Grouped customers by first purchase month  
- Tracked monthly retention  
- Built cohort table with retention counts

Tables:
- `customer_cohorts`
- `cohort_orders`
- `cohort_analysis`

---

### 6️⃣ BI-Ready Views

Created production-style SQL views:

- `vw_sales_summary`  
- `vw_customer_ltv`  

These views are used for dashboards and executive reporting.

---

## 📈 Key Insights

- Identified top 10 products and categories by revenue  
- Discovered high-value customers using lifetime value (LTV)  
- Found that most customers are one-time buyers  
- Observed declining retention in later cohorts  
- Segmented VIP customers using RFM  

---

## 🏁 Outcome

This project demonstrates:

- Real-world data ingestion  
- Data cleaning & transformation  
- Business analytics  
- Customer segmentation  
- Retention analysis  
- BI-ready data modeling  

It mirrors how analytics pipelines work in real companies.

---

## 📂 Repository Structure

ecommerce-analytics-sql-project/
│
├── README.md
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_raw_tables.sql
│   ├── 03_bulk_insert.sql
│   ├── 04_clean_tables.sql
│   ├── 05_business_queries.sql
│   ├── 06_rfm_analysis.sql
│   ├── 07_cohort_analysis.sql
│   └── 08_views.sql
│
├── dashboard/
│   ├── Ecommerce_Analytics_Dashboard.pbix
│   ├── sales_overview.png
│   ├── product_performance.png
│   └── customer_analytics.png
│
└── insights/
    └── business_insights.md


## 📊 Dashboard Preview

### Sales Overview
![Sales Overview](Dashboard/sales_overview.png)

### Product Performance
![Product Performance](Dashboard/product_performance.png)

### Customer Analytics
![Customer Analytics](Dashboard/customer_analytics.png)





---

## 👤 Author
**Matthew Lawrence L**  
Aspiring Data Analyst | Data Engineer | Data Scientist | SQL | Analytics | Data Modeling
