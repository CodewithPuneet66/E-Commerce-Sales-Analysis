USE ecom;

-- 1. Total Sales
SELECT SUM(sales_amount) AS total_sales
FROM ecom_sales;
-- Data Analysis
-- 2. Total Profit
SELECT SUM(profit) AS total_profit
FROM ecom_sales;

-- 3. Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM ecom_sales;

-- 4. Average Discount
SELECT AVG(discount) AS average_discount
FROM ecom_sales;

-- 5. Total Quantity Sold
SELECT SUM(quantity) AS total_quantity_sold
FROM ecom_sales;  

-- Business Insights

-- 1.Sales By State
SELECT
    state,
    SUM(sales_amount) AS total_sales
FROM ecom_sales
GROUP BY state
ORDER BY total_sales DESC;
  
-- 2. Sales by Product Category
SELECT
    product_category,
    SUM(sales_amount) AS total_sales
FROM ecom_sales
GROUP BY product_category
ORDER BY total_sales DESC;

-- 3. Top 10 Products by Sales
SELECT
    product_name,
    SUM(sales_amount) AS total_sales
FROM ecom_sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- 4. Most Popular Payment Mode
SELECT
    payment_mode,
    COUNT(*) AS total_orders
FROM ecom_sales
GROUP BY payment_mode
ORDER BY total_orders DESC;

-- 5. Profit by Product Category
SELECT
    product_category,
    SUM(profit) AS total_profit
FROM ecom_sales
GROUP BY product_category
ORDER BY total_profit DESC;

-- 6. Monthly Sales Trend
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales_amount) AS total_sales
FROM ecom_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;