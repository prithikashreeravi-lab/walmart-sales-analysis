# 📊 Walmart Sales Analysis (Advanced SQL Project)

## 📌 Project Overview

This project performs an in-depth analysis of Walmart weekly sales data using advanced SQL techniques to uncover insights on store performance, sales trends, growth patterns, and the impact of external factors.

The analysis focuses on transforming raw transactional data into actionable business intelligence using **CTEs, window functions, ranking logic, moving averages, and statistical anomaly detection**.

---

## 📂 Dataset Description

The dataset contains weekly sales data for multiple Walmart stores along with external economic and environmental factors.

### Columns:

| Column | Description |
|--------|-------------|
| store | Unique store identifier |
| date | Week of sales |
| weekly_sales | Total sales for the week |
| holiday_flag | Holiday indicator (1 = Yes, 0 = No) |
| temperature | Average weekly temperature |
| fuel_price | Weekly fuel price |
| CPI | Consumer Price Index |
| unemployment | Unemployment rate |

---

## 🎯 Business Objectives

This analysis aims to answer key business questions:

- Which stores generate the highest revenue?
- How do stores rank in performance?
- What is each store’s contribution to total company sales?
- How do external factors (temperature, fuel price) impact sales?
- What are the sales trends over time?
- How do stores perform compared to company average?
- Which stores show consistent growth?
- Where do anomalies in sales occur?

---

## 🛠 SQL Techniques Used

### 📊 Aggregation & Grouping
- SUM()
- AVG()
- GROUP BY
- ORDER BY

### 🧠 Conditional Logic
- CASE WHEN (categorical segmentation)

### 📌 Common Table Expressions (CTEs)
- Store contribution analysis
- Company benchmark comparison
- Growth analysis preparation

### 📈 Window Functions (Advanced SQL)
- RANK()
- LAG()
- SUM() OVER()
- AVG() OVER()
- STDDEV()

### 📉 Advanced Analytics Techniques
- Running totals
- Moving averages (4-week rolling window)
- Week-over-week growth analysis
- Z-score anomaly detection
- Performance benchmarking
- Consecutive growth streak analysis

---

## 📊 Key Analyses Performed

### 1. Store Performance Analysis
Evaluated total and average weekly sales per store to identify high and low performing stores.

---

### 2. Store Ranking
Ranked stores based on total sales contribution using window functions.

---

### 3. Store Contribution Analysis
Calculated each store’s percentage contribution to overall company sales.

---

### 4. Monthly Sales Trend Analysis
Analyzed long-term sales trends using time-based aggregation.

---

### 5. Temperature Impact Analysis
Categorized temperature into Cold, Moderate, and Hot bands to assess sales behavior.

---

### 6. Fuel Price Impact Analysis
Segmented fuel prices into Low, Medium, and High categories to study demand patterns.

---

### 7. Peak Sales Week Analysis
Identified highest-performing sales weeks across all stores.

---

### 8. Running Total Sales
Calculated cumulative sales over time per store using window functions.

---

### 9. Sales Growth Rate Analysis
Measured week-over-week sales growth using LAG function.

---

### 10. Previous Week Comparison
Compared current week sales with previous week performance.

---

### 11. Week-over-Week Growth Rate (Advanced)
Calculated percentage growth while handling NULL values safely.

---

### 12. 4-Week Moving Average
Applied rolling average to smooth short-term fluctuations and identify trends.

---

### 13. Sales Anomaly Detection
Used Z-score method to detect unusual spikes or drops in sales.

---

### 14. Store Performance vs Company Average
Benchmarked each store’s performance against overall company average sales.

---

### 15. Consecutive Growth Streak Analysis
Identified stores with sustained growth momentum over consecutive weeks.

---

## 📁 Repository Structure

```
walmart-sales-analysis/
│
├── schema.sql
├── analysis_queries.sql
├── insights.md
├── README.md
└── dataset.csv (optional)
```

---

## 🚀 Skills Demonstrated

- SQL (Advanced Level)
- Data Analysis & Business Intelligence
- Window Functions (RANK, LAG, AVG OVER, SUM OVER)
- Common Table Expressions (CTEs)
- Time Series Analysis
- KPI & Performance Metrics
- Statistical Thinking (Z-score based anomaly detection)
- Business Insight Generation
- Data Storytelling

---

## 💡 Business Value

This analysis helps stakeholders:

- Identify top-performing and underperforming stores
- Understand revenue contribution distribution
- Monitor sales trends over time
- Detect abnormal sales behavior early
- Evaluate impact of external factors on sales
- Benchmark store performance against company average
- Track store growth consistency

---

## 📌 Key Takeaway

This project demonstrates the ability to move beyond basic SQL queries into **real-world analytical thinking**, using advanced SQL techniques to extract meaningful business insights from raw data.

---

## 👤 Author

**Prithika Shree**  
Aspiring Business Analyst / Data Analyst (Singapore)

Skills: SQL, Excel, Power BI, Data Analytics, Business Intelligence

---

