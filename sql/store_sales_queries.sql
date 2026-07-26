-- ================================================
-- STORE SALES PERFORMANCE ANALYSIS
-- SQL Queries: BQ1 to BQ8
-- Author: Felicia Okom
-- Tool: MySQL 8.0
-- ================================================

-- BQ1: Overall Business Health
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity_sold,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) 
    AS profit_margin_percentage
FROM sales_data;

-- BQ2: Category Performance
SELECT 
    category, 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(discount) AS average_discount
FROM sales_data
GROUP BY category;

-- BQ3: Discount vs Profit Relationship
SELECT
    discount,
    AVG(profit) AS average_profit
FROM sales_data
GROUP BY discount
ORDER BY discount ASC;

-- BQ4: Loss Making Transactions
SELECT
    COUNT(*) AS loss_transactions,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM sales_data),
        2
    ) AS percentage_of_transactions
FROM sales_data
WHERE profit < 0;

-- BQ5: Regional Performance
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY region
ORDER BY total_profit DESC;

-- BQ6: Sub-Category Performance
SELECT
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(discount) AS average_discount
FROM sales_data
GROUP BY sub_category
ORDER BY total_profit ASC;

-- BQ7: Customer Segment Analysis
SELECT
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(discount) AS average_discount
FROM sales_data
GROUP BY segment
ORDER BY total_profit DESC;

-- BQ8: Top 10 Loss Making Products
SELECT
    product_name,
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(discount) AS average_discount
FROM sales_data
GROUP BY
    product_name,
    category
ORDER BY total_profit ASC
LIMIT 10;
