create table zepto (
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,	
quantity INTEGER
);

-- data exploration
select count(*) from zepto;

select * from zepto limit 10;


-- null values
SELECT * FROM zepto
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;

-- different product categories 
select distinct category from zepto
order by category;

-- products in stock vs outof stock
select outofstock, count(sku_id) from zepto
group by outofstock;


-- data cleaning 

-- product white price = 0
select * from zepto
where mrp = 0 or discountedSellingPrice = 0; 

delete from zepto 
where mrp = 0;

-- convert paise to rupees
update zepto
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

select mrp, discountedSellingPrice from zepto;


-- Q1. Find the top 10 best-value products based on the discount percentage.
select distinct name, mrp, discountPercent  
from zepto 
order by discountPercent desc limit 10;


-- Q2.What are the Products with High MRP but Out of Stock
select distinct name, mrp
from zepto
where outofstock = 'True' and mrp > 300
order by mrp desc;


-- Q3.Calculate Estimated Revenue for each category
select category, 
sum(discountedSellingPrice * availableQuantity) as Total_Revenue
from zepto
group by category
order by Total_Revenue;


-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
select distinct name, mrp, discountPercent
from zepto 
where mrp > 500 and discountPercent < 10
order by mrp desc, discountPercent desc;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
select category, 
ROUND(avg(discountPercent),2) as Avg_discount
from zepto
group by category 
order by Avg_discount
limit 5;


-- Q6. Find the price per gram for products above 100g and sort by best value.
select distinct name, weightInGms, discountedSellingPrice,
round(discountedSellingPrice/weightInGms, 2)  as price_per_gram
from zepto 
where weightInGms >= 100
order by price_per_gram;


-- Q7.Group the products into categories like Low, Medium, Bulk.
select distinct name,weightInGms, 
case when weightInGms < 1000 then 'Low'
	when weightInGms < 5000 then 'medium'
    else 'Bulk'
    end as Weigh_Cetegory 
from zepto;


-- Q8.What is the Total Inventory Weight Per Category 
select category,
sum(weightInGms*availableQuantity) as Total_Weight
from zepto 
group by category 
order by Total_Weight; 

select * from zepto