# 📊 Walmart Sales Analysis — Key Insights

This document summarizes the key findings derived from SQL analysis of Walmart sales data.

---

## 🏬 1. Store Performance Insights

- Sales distribution is highly uneven across stores.
- A small group of stores contribute a disproportionately large share of total revenue.
- The top-performing stores consistently outperform others in both total and average weekly sales.
- Lower-performing stores show relatively stable but significantly smaller revenue contribution.

---

## 🥇 2. Store Ranking Insights

- Store ranking based on total sales reveals a clear performance hierarchy.
- The top-ranked stores maintain their position across multiple analyses (total sales and average sales).
- Mid-tier stores show moderate variability in performance, indicating sensitivity to external factors.

---

## 📊 3. Revenue Contribution Insights

- A few stores contribute a significant percentage of total company revenue.
- Revenue concentration indicates dependency on top-performing stores.
- Lower-tier stores individually contribute a small fraction but collectively remain important for overall stability.

---

## 📈 4. Sales Trend Insights

- Monthly sales trends show fluctuations rather than linear growth.
- Certain months show recurring spikes in sales, indicating seasonal or demand-driven effects.
- No consistent long-term downward trend observed across the dataset.

---

## 🌡️ 5. Temperature Impact Insights

- Moderate temperature conditions are associated with the highest average sales.
- Extremely cold or hot conditions tend to slightly reduce customer spending behavior.
- Temperature appears to have a moderate but noticeable influence on demand patterns.

---

## ⛽ 6. Fuel Price Impact Insights

- Higher fuel prices are generally associated with lower average sales.
- Low fuel price periods show slightly stronger consumer spending.
- Fuel price acts as an indirect economic factor influencing purchasing behavior.

---

## 📅 7. Peak Sales Week Insights

- Certain weeks show significantly higher sales compared to baseline performance.
- These peaks likely correspond to holiday periods or promotional cycles.
- Sales spikes are not evenly distributed across all stores.

---

## 🔄 8. Running Total Insights

- Cumulative sales trends show steady growth over time.
- Top-performing stores maintain consistent upward trajectories.
- Growth is driven more by stable performance than sudden spikes.

---

## 📉 9. Week-over-Week Growth Insights

- Sales growth fluctuates significantly on a weekly basis.
- Some stores show consistent positive growth momentum.
- Negative growth weeks are often followed by recovery periods, indicating cyclical behavior.

---

## 📊 10. Moving Average Insights

- 4-week moving averages help smooth short-term volatility.
- Smoothed trends reveal clearer performance direction per store.
- Helps distinguish between temporary spikes and sustained growth.

---

## 🚨 11. Sales Anomaly Insights

- Certain weeks show unusually high or low sales compared to store averages.
- These anomalies may indicate:
  - Promotions or discounts
  - Supply chain disruptions
  - External economic factors
- Z-score analysis effectively highlights outlier behavior.

---

## ⚖️ 12. Store vs Company Average Insights

- Only a subset of stores consistently perform above the company average.
- Several stores operate below average, indicating potential underperformance.
- Performance gap between top and bottom stores is significant.

---

## 🔥 13. Growth Streak Insights

- Some stores demonstrate consecutive weeks of sales growth.
- Growth streaks indicate strong demand consistency and operational stability.
- Stores with longer streaks are likely key revenue drivers.

---

## 🧠 Overall Business Conclusion

- Walmart’s revenue is driven by a small group of high-performing stores.
- External factors like temperature and fuel price have a moderate influence on sales behavior.
- Sales performance is highly variable on a weekly basis, requiring continuous monitoring.
- Moving averages and growth analysis reveal that stability is more important than short-term spikes.

---

## 📌 Final Takeaway

This analysis demonstrates that:

- SQL can effectively uncover business patterns from raw transactional data
- Window functions and CTEs enable deeper analytical insights
- Store-level analysis is critical for identifying performance gaps
- External factors should be considered in demand forecasting
