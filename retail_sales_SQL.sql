# 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM sales;
# 2. Profit for Each Order
SELECT Order_ID, Sales, Cost, Sales - Cost AS Profit FROM sales;
# 3. Total Profit
SELECT SUM(Sales - Cost) AS Total_Profit FROM sales;
# 4. Total Orders
SELECT COUNT(Order_ID) AS Total_Orders FROM sales;
# 5. Average Order Value
SELECT AVG(Sales) AS Average_Order_Value FROM sales;
# 6. Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity_Sold FROM sales;
# 7. Quantity Sold by Product
SELECT Product, SUM(Quantity) AS Total_Quantities_Sold FROM sales GROUP BY Product;
# 8. Sales by Product
SELECT Product, SUM(Sales) AS Total_Sales FROM sales GROUP BY Product;
# 9. Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales FROM sales GROUP BY Category;
# 10. Category Sales — Highest First
SELECT Category, SUM(Sales) AS Total_Sales FROM sales GROUP BY Category ORDER BY Total_Sales DESC;
# 11. Profit by Category
SELECT Category, SUM(Sales - Cost) AS Total_Profit FROM sales GROUP BY Category ORDER BY Total_Profit DESC;
# 12. Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales FROM sales
GROUP BY Region;
# 13. Sales by Region — Highest First
SELECT Region, SUM(Sales) AS Total_Sales FROM sales GROUP BY Region
ORDER BY Total_Sales DESC;
# 14. Highest-Sales Product
SELECT Product, SUM(Sales) AS Total_Sales FROM sales GROUP BY Product ORDER BY Total_Sales DESC LIMIT 1;
# 15. Lowest-Sales Product
SELECT Product, SUM(Sales) AS Total_Sales FROM sales GROUP BY Product ORDER BY Total_Sales LIMIT 1;
# 16. Monthly Sales
SELECT MONTH(Order_Date) AS Month, SUM(Sales) AS Total_Sales FROM sales GROUP BY MONTH(Order_Date) ORDER BY Month;
# 17. Monthly Profit
SELECT MONTH(Order_Date) AS Month, SUM(Sales - Cost) AS Monthly_Profit FROM sales GROUP BY MONTH(Order_Date) ORDER BY Month;
# 18. Quantity by Product — Highest First
SELECT Product, SUM(Quantity) AS Total_Product_Sold FROM sales GROUP BY Product ORDER BY Total_Product_Sold DESC;
# 19. Average Sales by Product
SELECT Product, AVG(Sales) AS Product_Avg_Sale FROM sales GROUP BY Product ORDER BY Product_Avg_Sale DESC;
# 20. Profit by Product
SELECT Product, SUM(Sales - Cost) AS Product_Profit FROM sales GROUP BY Product ORDER BY Product_Profit DESC;
# 21. Overall Profit Margin
SELECT (SUM(Sales - Cost) / SUM(Sales)) * 100 AS Profit_Percentage FROM sales;
# 22. Profit Margin by Product
SELECT Product, (SUM(Sales - Cost) / SUM(Sales)) * 100 AS Product_Profit_Percentage FROM sales GROUP BY Product ORDER BY Product_Profit_Percentage DESC;
# 23. Profit Margin by Region
SELECT Region, (SUM(Sales - Cost) / SUM(Sales)) * 100 AS Region_Profit_Percentage FROM sales GROUP BY Region ORDER BY Region_Profit_Percentage DESC;
# 24. Products with Sales > ₹50,000
SELECT Product, SUM(Sales) AS Total_Sales FROM sales GROUP BY Product HAVING Total_Sales > 50000;
# 25. Regions with Sales > ₹50,000
SELECT Region, SUM(Sales) AS Region_Total_Sales FROM sales GROUP BY Region HAVING Region_Total_Sales > 50000;
# 26. Products with Profit > ₹10,000
SELECT Product, SUM(Sales - Cost) AS Total_Product_Profit FROM sales GROUP BY Product HAVING Total_Product_Profit > 10000;
# 27. Regions with Profit > ₹10,000
SELECT Region, SUM(Sales - Cost) AS Region_Total_Profit FROM sales GROUP BY Region HAVING Region_Total_Profit > 10000;
# 28. Products with Quantity Sold > 5
SELECT Product, SUM(Quantity) AS Total_Product_Quantity_Sold FROM sales GROUP BY Product HAVING Total_Product_Quantity_Sold > 5;
# 29. Products with Average Sales > ₹10,000
SELECT Product, AVG(Sales) AS Avg_Product_Sold FROM sales GROUP BY Product HAVING Avg_Product_Sold > 10000;
# 30. Regions with Average Sales > ₹15,000
SELECT Region, AVG(Sales) AS Region_Avg_Sales FROM sales GROUP BY Region HAVING Region_Avg_Sales > 15000;
# 31. Classify Individual Orders
SELECT Order_ID, Sales, 
CASE
WHEN Sales >= 20000 THEN 'High'
WHEN Sales >= 10000 THEN 'Medium'
ELSE 'Low'
END AS Sales_Category
FROM sales;
# 32. Classify Products by Total Sales
SELECT Product, SUM(Sales) AS Total_Sales,
CASE
WHEN SUM(Sales) >= 50000 THEN 'High'
WHEN SUM(Sales) >= 30000 THEN 'Medium'
ELSE 'Low'
END AS Sales_Category
FROM sales GROUP BY Product;
# 33. Unique Regions
SELECT DISTINCT Region FROM sales;
# 34. Sales by Year and Month
SELECT YEAR(Order_Date) AS Year, MONTH(Order_Date) AS Month, SUM(Sales) AS Total_Sales FROM sales
GROUP BY Year, Month ORDER BY Year, Month;
SELECT YEAR(Order_Date) AS Year, MONTH(Order_Date) AS Month, SUM(Sales) AS Total_Sales FROM sales
GROUP BY Year, Month ORDER BY Total_Sales DESC;
# 35. Find Missing Costs
SELECT Order_ID FROM sales WHERE Cost IS NULL;
# 36. Find Orders with Cost Present
SELECT Order_ID FROM sales WHERE Cost IS NOT NULL;
# 37. Count Orders with Cost Present
SELECT COUNT(Order_ID) FROM sales WHERE Cost IS NOT NULL;
# 38. Category with Highest Total Profit
SELECT Category, SUM(Sales - Cost) AS Profit FROM sales
GROUP BY Category ORDER BY Profit DESC LIMIT 1;
# 39. Region with Highest Average Order Value
SELECT Region, AVG(Sales) AS Avg_Sales FROM sales GROUP BY Region ORDER BY Avg_Sales DESC LIMIT 1;
# 40. Product with Highest Profit Margin
SELECT Product, (SUM(Sales - Cost) / SUM(Sales)) * 100 AS Profit_Margin
FROM sales GROUP BY Product ORDER BY Profit_Margin DESC LIMIT 1;