-- most revenue
SELECT COUNT(*) AS total_rows
FROM Sample;
SELECT
    Region,
    ROUND(SUM(Sales),2) AS total_sales
FROM Sample
GROUP BY Region
ORDER BY total_sales DESC;

-- Sales by Region
SELECT
    Region,
    ROUND(SUM(Sales),2) AS total_sales
FROM Sample
GROUP BY Region
ORDER BY total_sales DESC;

-- Profit by Category
SELECT
    Category,
    ROUND(SUM(Profit),2) AS total_profit
FROM Sample
GROUP BY Category
ORDER BY total_profit DESC;

-- total profit
SELECT
    Category,
    ROUND(SUM(Profit),2) AS total_profit
FROM Sample
GROUP BY Category
ORDER BY total_profit DESC;

-- Sales by Category
SELECT
    Category,
    ROUND(SUM(Sales),2) AS total_sales
FROM Sample
GROUP BY Category
ORDER BY total_sales DESC;

-- Profit Margin by Category
SELECT
    Category,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS profit_margin_pct
FROM Sample
GROUP BY Category
ORDER BY profit_margin_pct DESC;

-- sales by region
SELECT
    Region,
    ROUND(SUM(Sales),2) AS total_sales
FROM Sample
GROUP BY Region
ORDER BY total_sales DESC;

-- profit by region
SELECT
    Region,
    ROUND(SUM(Profit),2) AS total_profit
FROM Sample
GROUP BY Region

--top 10 states by sales
SELECT
    State,
    ROUND(SUM(Sales),2) AS total_sales
FROM Sample
GROUP BY State
ORDER BY total_sales DESC
LIMIT 10;
ORDER BY total_profit DESC;

-- top 10 profit by state
SELECT
    State,
    ROUND(SUM(Profit),2) AS total_profit
FROM Sample
GROUP BY State
ORDER BY total_profit DESC
LIMIT 10;