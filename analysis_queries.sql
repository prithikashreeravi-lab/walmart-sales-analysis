-- =========================================================
-- 1. STORE PERFORMANCE ANALYSIS
-- =========================================================

-- Total sales per store
SELECT 
    store,
    SUM(weekly_sales) AS total_sales
FROM walmart_sales
GROUP BY store
ORDER BY total_sales DESC;

-- Average sales per store
SELECT 
    store,
    AVG(weekly_sales) AS avg_sales
FROM walmart_sales
GROUP BY store
ORDER BY avg_sales DESC;


-- =========================================================
-- 2. STORE RANKING (WINDOW FUNCTION)
-- =========================================================

SELECT
    store,
    SUM(weekly_sales) AS total_sales,
    RANK() OVER (ORDER BY SUM(weekly_sales) DESC) AS store_rank
FROM walmart_sales
GROUP BY store;


-- =========================================================
-- 3. STORE CONTRIBUTION TO TOTAL SALES (CTE)
-- =========================================================

WITH total AS (
    SELECT SUM(weekly_sales) AS total_sales
    FROM walmart_sales
),
store_sales AS (
    SELECT 
        store,
        SUM(weekly_sales) AS store_total
    FROM walmart_sales
    GROUP BY store
)

SELECT 
    store,
    store_total,
    ROUND((store_total * 100.0 / total.total_sales), 2) AS sales_percentage
FROM store_sales, total
ORDER BY store_total DESC;


-- =========================================================
-- 4. MONTHLY SALES TREND ANALYSIS
-- =========================================================

SELECT
    DATE_TRUNC('month', date) AS month,
    SUM(weekly_sales) AS monthly_sales
FROM walmart_sales
GROUP BY month
ORDER BY month;


-- =========================================================
-- 5. TEMPERATURE IMPACT ANALYSIS
-- =========================================================

SELECT
    CASE 
        WHEN temperature < 40 THEN 'Cold'
        WHEN temperature BETWEEN 40 AND 70 THEN 'Moderate'
        ELSE 'Hot'
    END AS temp_band,
    AVG(weekly_sales) AS avg_sales
FROM walmart_sales
GROUP BY temp_band;


-- =========================================================
-- 6. FUEL PRICE IMPACT ANALYSIS
-- =========================================================

SELECT
    CASE 
        WHEN fuel_price < 3 THEN 'Low'
        WHEN fuel_price BETWEEN 3 AND 4 THEN 'Medium'
        ELSE 'High'
    END AS fuel_category,
    AVG(weekly_sales) AS avg_sales
FROM walmart_sales
GROUP BY fuel_category;


-- =========================================================
-- 7. TOP SALES WEEKS (PEAK PERFORMANCE)
-- =========================================================

SELECT
    date,
    store,
    weekly_sales,
    RANK() OVER (ORDER BY weekly_sales DESC) AS sales_rank
FROM walmart_sales;


-- =========================================================
-- 8. RUNNING TOTAL SALES (WINDOW FUNCTION)
-- =========================================================

SELECT
    date,
    store,
    weekly_sales,
    SUM(weekly_sales) OVER (
        PARTITION BY store
        ORDER BY date
    ) AS running_total_sales
FROM walmart_sales;


-- =========================================================
-- 9. SALES GROWTH RATE (%)
-- =========================================================

SELECT
    date,
    store,
    weekly_sales,
    LAG(weekly_sales, 1) OVER (
        PARTITION BY store
        ORDER BY date
    ) AS prev_sales,
    ROUND(
        (weekly_sales - LAG(weekly_sales, 1) OVER (
            PARTITION BY store
            ORDER BY date
        )) * 100.0 
        / NULLIF(LAG(weekly_sales, 1) OVER (
            PARTITION BY store
            ORDER BY date
        ), 0),
    2) AS growth_rate_pct
FROM walmart_sales;


-- =========================================================
-- 10. PREVIOUS WEEK COMPARISON (LAG FUNCTION)
-- =========================================================

SELECT
    date,
    store,
    weekly_sales,
    LAG(weekly_sales, 1) OVER (
        PARTITION BY store
        ORDER BY date
    ) AS prev_week_sales,
    weekly_sales - LAG(weekly_sales, 1) OVER (
        PARTITION BY store
        ORDER BY date
    ) AS sales_change
FROM walmart_sales;


-- =========================================================
-- 11. WEEK-OVER-WEEK GROWTH % (LAG + NULL SAFETY)
-- =========================================================

WITH sales_lag AS (
    SELECT
        store,
        date,
        weekly_sales,
        LAG(weekly_sales) OVER (
            PARTITION BY store
            ORDER BY date
        ) AS prev_week_sales
    FROM walmart_sales
)

SELECT
    store,
    date,
    weekly_sales,
    prev_week_sales,
    ROUND(
        (weekly_sales - prev_week_sales) * 100.0 / NULLIF(prev_week_sales, 0),
        2
    ) AS wow_growth_pct
FROM sales_lag;


-- =========================================================
-- 12. 4-WEEK MOVING AVERAGE
-- =========================================================

SELECT
    store,
    date,
    weekly_sales,
    AVG(weekly_sales) OVER (
        PARTITION BY store
        ORDER BY date
        ROWS BETWEEN 3 PRECEDING AND CURRENT ROW
    ) AS moving_avg_4w
FROM walmart_sales;


-- =========================================================
-- 13. SALES ANOMALY DETECTION
-- =========================================================

SELECT
    store,
    date,
    weekly_sales,
    AVG(weekly_sales) OVER (PARTITION BY store) AS avg_sales,
    STDDEV(weekly_sales) OVER (PARTITION BY store) AS std_sales,
    (weekly_sales - AVG(weekly_sales) OVER (PARTITION BY store))
        / NULLIF(STDDEV(weekly_sales) OVER (PARTITION BY store), 0) AS z_score
FROM walmart_sales;


-- =========================================================
-- 14.Store Performance vs Company Average
-- =========================================================

WITH company_avg AS (
    SELECT AVG(weekly_sales) AS avg_sales
    FROM walmart_sales
)

SELECT
    store,
    AVG(weekly_sales) AS store_avg_sales,
    ROUND(
        AVG(weekly_sales) - company_avg.avg_sales,
        2
    ) AS difference_from_company_avg
FROM walmart_sales
CROSS JOIN company_avg
GROUP BY store, company_avg.avg_sales
ORDER BY difference_from_company_avg DESC;


-- =========================================================
-- 15.Longest Consecutive Growth Streak
-- =========================================================

WITH sales_change AS (
    SELECT
        store,
        date,
        weekly_sales,
        LAG(weekly_sales) OVER (
            PARTITION BY store
            ORDER BY date
        ) AS prev_sales
    FROM walmart_sales
)

SELECT
    store,
    COUNT(*) AS growth_weeks
FROM sales_change
WHERE weekly_sales > prev_sales
GROUP BY store
ORDER BY growth_weeks DESC;



