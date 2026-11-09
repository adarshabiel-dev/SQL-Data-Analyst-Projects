-- Retail Sales Analysis Using SQL


show databases;

use retail_project;
-- To read Data --

show tables;

select * from retail_sales;

-- A. Business Operations

-- 1. Total Sales of the Store(Revenue) --

select
sum(Total_Amount) as Revenue 
from retail_sales;

-- 2. Number of Transactions --

select
count(*) as Total_Transactions
from retail_sales;

-- 3. Average sale --

select
avg(Total_Amount) as Average_Sale
from retail_sales;

-- 4. Highest Sale --

select 
max(Total_Amount) as highest_sale
from retail_sales;

-- 5. Lowest Sale --

select 
min(Total_Amount) as lowest_sale
from retail_sales;


-- B. Category Analysis

-- 6.  Sales by Category--

select * from retail_sales;

select 
Product_Category,
	sum(Total_Amount) as Revenue
from retail_sales
group by Product_Category;



-- 7. The top 5 customers that spent the most money --

select
Customer_ID,
	sum(Total_Amount) as Money_Spent
from retail_sales
group by Customer_ID
order by Money_Spent desc
limit 5;

-- 8. Customer who placed the highest number of orders --

select Customer_ID,
	count(*) as Highest_Orders
from retail_sales
group by Customer_ID
order by Highest_Orders desc
limit 1;



-- C. Age Group Analysis

-- 9. Customers placing order where their age is above 30 --

select *
from retail_sales
where Age > 30;


-- 10. Average age of customers placing orders --

select 
avg(Age)
from retail_sales;

