# 📊 Walmart Sales Analysis (SQL Project)

## 📌 Project Overview

This project analyzes Walmart weekly sales data using SQL to uncover insights related to store performance, sales trends, customer demand patterns, and the impact of external factors such as temperature, fuel prices, and macroeconomic indicators.

The analysis focuses on transforming raw transactional data into actionable business insights using advanced SQL techniques including CTEs, window functions, ranking, moving averages, and anomaly detection.

---

## 📂 Dataset Description

The dataset contains weekly sales data across multiple Walmart stores along with external influencing factors.

### Columns:

| Column | Description |
|--------|-------------|
| store | Unique store identifier |
| date | Week of sales |
| weekly_sales | Total sales for the week |
| holiday_flag | Indicates holiday week (1 = Yes, 0 = No) |
| temperature | Average temperature for the week |
| fuel_price | Fuel price during the week |
| CPI | Consumer Price Index |
| unemployment | Unemployment rate |

---

## 🎯 Objectives

The main objectives of this analysis are:

- Evaluate store-level sales performance
- Identify top and bottom performing stores
- Understand seasonal and external factor impacts on sales
- Analyze sales trends over time
- Measure store contribution to total revenue
- Detect anomalies and unusual sales behavior
- Track growth patterns and consistency across stores

---

## 🛠️ SQL Techniques Used

This project demonstrates strong intermediate-to-advanced SQL skills:

### Aggregations
- SUM()
- AVG()

### Filtering & Conditional Logic
- CASE WHEN
- GROUP BY
- ORDER BY

### Common Table Expressions (CTEs)
- Store contribution analysis
- Company benchmarking
- Growth analysis preparation
- Revenue contribution analysis
- Week-over-week growth calculations

### Window Functions
- RANK()
- LAG()
- SUM() OVER()
- AVG() OVER()
- STDDEV()

### Advanced Analytics
- Running totals
- Moving averages (4-week rolling)
- Week-over-week growth calculations
- Store ranking
- Z-score based anomaly detection
- Growth streak analysis

---

## 📊 Key Analyses Performed

### 1. Store Performance Analysis
Evaluated total and average weekly sales per store to identify top-performing and low-performing stores.

### 2. Store Ranking
Ranked stores based on total sales contribution.

### 3. Store Contribution Analysis
Calculated each store's percentage contribution to overall company revenue.

### 4. Monthly Sales Trend Analysis
Identified long-term sales trends using time-based aggregation.

### 5. Temperature Impact Analysis
Analyzed how different temperature ranges (Cold, Moderate, Hot) affect sales performance.

### 6. Fuel Price Impact Analysis
Examined relationship between fuel prices and sales behavior.

### 7. Peak Sales Week Analysis
Identified highest-performing sales weeks across all stores.

### 8. Running Total Sales
Tracked cumulative sales over time for each store.

### 9. Week-over-Week Growth Analysis
Measured sales growth and decline trends using LAG function.

### 10. Moving Average Analysis
Applied 4-week rolling averages to smooth sales fluctuations.

### 11. Sales Anomaly Detection
Used Z-score approach to detect unusual spikes or drops in sales.

### 12. Store Benchmarking
Compared each store's performance against overall company average.

### 13. Sales Growth Streak Analysis
Identified stores with consecutive weeks of sales growth to measure momentum and consistency.

---

## 📈 Key Insights (Example Structure)

- Certain stores consistently contribute a higher percentage of total revenue.
- Sales show noticeable variation based on external economic indicators.
- Some stores exhibit strong growth streaks indicating sustained demand.
- Moving averages help identify stable vs volatile sales behavior.
- Benchmarking reveals clear performance gaps between top and bottom stores.

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

- SQL Query Writing
- Data Aggregation & Analysis
- Business Intelligence Reporting
- Window Functions (Advanced SQL)
- Time Series Analysis
- KPI Development
- Anomaly Detection
- Business Insight Generation

---

## 💡 Business Value

This analysis helps answer key business questions such as:

- Which stores drive the majority of revenue?
- How do external factors impact sales performance?
- Which stores are growing consistently?
- Where are anomalies or risks in sales patterns?
- How can performance be benchmarked across stores?

---

## 👤 Author

**Prithika Shree**  
Aspiring Business Analyst / Data Analyst  
Skills: SQL, Power BI, Excel, Data Analytics, Business Intelligence

---

