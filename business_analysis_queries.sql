
-- Total Revenue
SELECT SUM(Sales) AS Total_Revenue FROM business_sales_data;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit FROM business_sales_data;

-- Sales by Product
SELECT Product, SUM(Sales) AS Product_Sales
FROM business_sales_data
GROUP BY Product
ORDER BY Product_Sales DESC;

-- Sales by City
SELECT City, SUM(Sales) AS City_Sales
FROM business_sales_data
GROUP BY City
ORDER BY City_Sales DESC;

-- Category Performance
SELECT Category, SUM(Sales) AS Category_Sales
FROM business_sales_data
GROUP BY Category;

-- Monthly Sales Trend
SELECT MONTH(Order_Date) AS Month, SUM(Sales) AS Monthly_Sales
FROM business_sales_data
GROUP BY MONTH(Order_Date)
ORDER BY Month;
