-- Q1: What is the total revenue generated from each sales channel?
SELECT `Sales Channel`, SUM(`Total Revenue`) as Total_Revenue
FROM sales
GROUP BY `Sales Channel`;

-- Q2: Which order priority has the highest total profit?
SELECT `Order Priority`, SUM(`Total Profit`) as Total_Profit
FROM sales
GROUP BY `Order Priority`
ORDER BY Total_Profit DESC
LIMIT 1;

-- Q3: How does the unit price affect the units sold? Is there a correlation?
SELECT CORR(`Unit Price`, `Units Sold`) as Correlation
FROM sales;

-- Q4: What is the average unit cost for each sales channel?
SELECT `Sales Channel`, AVG(`Unit Cost`) as Average_Unit_Cost
FROM sales
GROUP BY `Sales Channel`;

-- Q5: How does the total cost vary with the order date? Can you observe any seasonal trends?
SELECT `Order Date`, SUM(`Total Cost`) as Total_Cost
FROM sales
GROUP BY `Order Date`
ORDER BY `Order Date`;

-- Q6: What is the average shipping duration (difference between order date and ship date) for each sales channel?
SELECT `Sales Channel`, AVG(DATEDIFF(`Ship Date`, `Order Date`)) as Average_Shipping_Duration
FROM sales
GROUP BY `Sales Channel`;

-- Q7: Which sales channel has the highest total profit and why?
SELECT `Sales Channel`, SUM(`Total Profit`) as Total_Profit
FROM sales
GROUP BY `Sales Channel`
ORDER BY Total_Profit DESC
LIMIT 1;

-- Q8: Are there any order priorities that result in higher units sold?
SELECT `Order Priority`, AVG(`Units Sold`) as Average_Units_Sold
FROM sales
GROUP BY `Order Priority`
ORDER BY Average_Units_Sold DESC;

-- Q9: How does total revenue change over time? Are there any noticeable trends or patterns?
SELECT `Order Date`, SUM(`Total Revenue`) as Total_Revenue
FROM sales
GROUP BY `Order Date`
ORDER BY `Order Date`;

-- Q10: What is the profit margin (total profit / total revenue) for each sales channel?
SELECT `Sales Channel`, SUM(`Total Profit`)/SUM(`Total Revenue`) as Profit_Margin
FROM sales
GROUP BY `Sales Channel`;
