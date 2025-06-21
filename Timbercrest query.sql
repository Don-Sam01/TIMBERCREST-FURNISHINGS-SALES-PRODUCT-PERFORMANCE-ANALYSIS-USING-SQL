-- 1. Show all details about orders, products and properties.

select * from orders
select * from products
select * from propertyinfo

--2. In what Cities and States are Dennis Properties Located.
select distinct("PropertyCity") 
from propertyinfo
select distinct("PropertyState")
from propertyinfo;

-- 3. What are the different product categories Dennis has in his
-- store?

select distinct("ProductCategory") from products
group by "ProductCategory"
-- 4. What are the numbers of products in each product category?
select "ProductCategory", Count("ProductID") from products
group by "ProductCategory"
Order by Count("ProductID") Desc;

-- 5. What is the total quantity of products ordered?
select sum ("Quantity") from orders AS "TotalQTY"

-- 6. What are the five most expensive products?
SELECT "Price", "ProductName"
from products
order by "Price" desc
limit 5
-- 7. What is the average price of products in each category?
select Round(avg("Price") , 2) as "averagePrice","ProductCategory" from products
GROUP BY "ProductCategory"

-- 8. What products have names starting with “T”?
select "ProductName"
from products
 where "ProductName" like 'T%'
-- 9. Lists all products with names containing paper.---i like make the like clause not case sensitive
select "ProductName" 
from products
where "ProductName" Ilike '%Paper%'
-- 10. Extract the name and category of products whose prices are
-- above $200
select "ProductName", "ProductCategory", "Price" from products
where "Price" > 200 
-- 11. What is the total quantity of products ordered in 2015 and 2016
-- respectively?
select EXTRACT(YEAR FROM "OrderDate") AS " OrderDate", Sum("Quantity") as "Totalqty"
from orders
where EXTRACT(YEAR FROM "OrderDate")IN (2015, 2016)
group by EXTRACT(YEAR FROM "OrderDate")
--where "OrderDate" between '2015-01-01' and '2016-12-31'---CAN ALSO BE USED TO REPLACE EXTRACT(YEAR FROM "OrderDate")


-- 12. Which orders were made by property 1, 10, and 20?
select "PropertyID", "OrderID"
from orders
where "PropertyID" in (1 , 10, 20)


-- 13. What is the least expensive product?

SELECT "Price", "ProductName"
from products
order by "Price" 
limit 3

-- 14. Identify whether a product’s worth is more than $200 or not in
-- a new column called 'Price Category

select "ProductName", "Price",
		CASE
			WHEN  "Price" > 200 THEN 'Above $200'
			ELSE 'bELOW OR EQUAL TO $200'
		END AS "PriceCategory"
FROM Products

-- DIY EXCERCISE
-- 1. What is the average quantity of products ordered by
-- each property?
SELECT "PropertyID", Round(AVG("Quantity"), 2) AS "AVERAGE_QTY"
from orders 
Group by "PropertyID"
order by "AVERAGE_QTY" desc
-- 2. What categories have average price greater than $50
select "ProductCategory", Round (AVG("Price"), 2) AS "Average Price"
from products
group by "ProductCategory"
HAVING AVG("Price") > 50

-- 3. Find properties in a specific city and state
SELECT Distinct("PropertyCity"), "PropID"
from propertyinfo

 SELECT Distinct ("PropertyState"), "PropID"
 from propertyinfo
-- 4. Which product has the highest average price?
select "ProductName", Round(AVG("Price"), 2) as "AVerage Price"
from products
group by "ProductName"
Order by "AVerage Price" desc
limit 1
-- 5. What is the total quantity of products ordered by each
-- property?
SELECT "PropertyID", SUM("Quantity") AS "total quantity "
from orders
Group by "PropertyID"
-- 6. Which property has ordered the most quantity of products?
SELECT "PropertyID", SUM("Quantity") AS "total quantity "
from orders
Group by "PropertyID"
order by "total quantity " DESC
limit 1
---DOne