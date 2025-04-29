
# 📊 Sales Trend Analysis Using SQL Aggregations

## 📝 Project Overview

This project focuses on analyzing monthly revenue and order volume from an e-commerce dataset using SQL. The objective is to gain business insights from sales data such as monthly trends, product performance, and top-performing sales periods.

---

## 📂 Project Structure

```
├── data/
│   ├── orders.csv
│   └── products.csv
├── queries.sql
├── results/
│   └── summary_tables.csv
├── README.md
```

---

## 🛠 Tools & Technologies

- **SQL** (MySQL / PostgreSQL / SQLite compatible)
- **MySQL Workbench** (or any preferred SQL IDE)
- **Excel / Power BI / Python (Optional)** – for visualizations or dashboards

---

## 📈 Analysis Performed

### ✅ Basic Trend Queries:
- Monthly revenue & order volume
- Revenue filtered by year
- Top 3 revenue-generating months
- Daily revenue trends

### ✅ Product-Based Analysis:
- Revenue by product
- Most frequently ordered products
- Monthly revenue per product

### ✅ Advanced Aggregations:
- Weekday revenue trends
- Cumulative revenue over months
- Average order value
- Unique products sold per month

### ✅ Views & Reusability:
- Created reusable views for monthly summaries

---

## 🔍 Example SQL Snippets

```sql
-- Monthly Revenue & Volume
SELECT 
  EXTRACT(YEAR FROM STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
  EXTRACT(MONTH FROM STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
  SUM(total_price) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM 
  orders
GROUP BY 
  year, month
ORDER BY 
  year, month;
```

---

## 📊 Sample Output (Monthly Summary)

| Year | Month | Monthly Revenue | Order Volume |
|------|-------|------------------|---------------|
| 2023 | 01    | 12,300           | 57            |
| 2023 | 02    | 15,760           | 64            |

---

## 📌 Setup Instructions

1. Import the provided `orders.csv` and `products.csv` into your SQL database.
2. Run the `queries.sql` script in a SQL environment.
3. Optional: Export result tables and visualize them using Power BI or Python.

---

## 👤 Author

**Surjeetsinh Nandkumar Thakur**  
Final Year CSE Student 
---

## 📬 Contact

- 📧 Email: surjeetsinh98.com  
- 📍 LinkedIn: (www.linkedin.com/in/surjeetsinh-thakur-888b3b1ab)

---


