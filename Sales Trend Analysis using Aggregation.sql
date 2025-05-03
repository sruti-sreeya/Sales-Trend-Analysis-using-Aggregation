CREATE DATABASE online_sales_db;
USE online_sales_db;

SELECT * FROM `online sales data` LIMIT 10;

DESCRIBE `online sales data`;

SELECT 
    DATE_FORMAT(`Date`, '%Y-%m') AS month,
    COUNT(DISTINCT `Transaction ID`) AS total_transactions,
    SUM(`Units Sold`) AS total_units_sold,
    SUM(`Total Revenue`) AS total_revenue,
    ROUND(AVG(`Total Revenue`), 2) AS avg_transaction_value
FROM `online sales data`
GROUP BY month
ORDER BY month;

SELECT 
    DATE_FORMAT(`Date`, '%Y-%m') AS month,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
GROUP BY month
ORDER BY total_revenue DESC
LIMIT 3;

SELECT 
    `Product Category`,
    SUM(`Units Sold`) AS total_units_sold,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
GROUP BY `Product Category`
ORDER BY total_revenue DESC
LIMIT 5;

SELECT 
    Region,
    COUNT(DISTINCT `Transaction ID`) AS total_transactions,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
GROUP BY Region
ORDER BY total_revenue DESC;

SELECT 
    `Payment Method`,
    COUNT(*) AS usage_count,
    SUM(`Total Revenue`) AS revenue_generated
FROM `online sales data`
GROUP BY `Payment Method`
ORDER BY usage_count DESC;

