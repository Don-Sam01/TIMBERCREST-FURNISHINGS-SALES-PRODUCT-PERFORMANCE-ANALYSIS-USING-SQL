# TIMBERCREST-FURNISHINGS-SALES-PRODUCT-PERFORMANCE-ANALYSIS-USING-SQL
 # Business Overview
TimberCrest Furnishings is a U.S.-based company that supplies office furnishings, maintenance equipment, and other essential products across various cities and regions. With an expanding property base and extensive product catalogue, the company aims to maintain operational efficiency and customer satisfaction by analysing trends in sales, product inventory, and customer behaviour.

# Problem Statement
As TimberCrest Furnishings continues to grow, understanding performance across product categories and customer segments becomes critical. The company needs to:
•	Identify high- and low-performing products.
•	Track sales by property, region, and year.
•	Make informed inventory and marketing decisions.

**Project Objectives**
•	Provide a comprehensive overview of year-over-year sales performance.
•	Analyze product demand and pricing by category.
•	Evaluate customer order behavior by city, state, and property.
•	Identify key trends to guide inventory optimization and strategic planning.

**Tools & Technologies Used**
•	SQL (PostgreSQL syntax)
•	Aggregate Functions: SUM(), AVG(), COUNT(), MAX(), MIN()
•	String Functions: LIKE, ILIKE
•	Date Functions: EXTRACT(YEAR FROM OrderDate)
•	Joins: INNER JOIN to combine Orders, Products, and PropertyInfo tables
•	Filtering & Grouping: WHERE, GROUP BY, ORDER BY, DISTINCT, IN
•	Conditional Logic: CASE WHEN for derived columns

# Dataset Description
Products Table
•	ProductID
•	ProductName
•	ProductCategory
•	Price
Orders Table
•	OrderID
•	OrderDate
•	PropertyID
•	ProductID
•	Quantity
PropertyInfo Table
•	PropID
•	PropertyCity
•	PropertyState

**Key Insights from SQL Analysis**
1.	**Geographic Reach**
	Properties are located in 20 distinct cities and 18 states.
2.	**Product Diversity**
     5 categories:
Office Supplies (13 products)
Housekeeping (19)
Maintenance (15)
Furnishings (26) ← Highest
Public Areas (21)
3.	**Total Quantity Ordered**: A total of 10,096 units of products were ordered.
4.	**Top 5 Most Expensive Products**
o	$300 – Bed (King)
o	$250 – Bed (Double)
o	$215 – Sofa
o	$202 – Leaf Blower
o	$200 – Television
5.	**Average Price by Product Category**
Reveals significant pricing differences across categories.
6.	**Products Starting with "T"**
	10 products including Tissue Box, Table Lamp, etc.
7.	**Products Containing "paper"**
Queried using ILIKE to ensure case-insensitive search.
8.	**High-Value Products (Above $200)**
Extracted product name and category using conditional filtering.
9.	**Quantity Ordered by Year (2015 & 2016)**
Retrieved using the EXTRACT() date function.
10.	**Orders from Specific Properties (1, 10, 20)**
•	Over 700 order entries retrieved for analysis.
11.	**Least Expensive Product**
•	Identified using ORDER BY Price ASC LIMIT 1.
12.	**Categories with Average Price > $50**
•	Filtered using GROUP BY and HAVING.
13.	**Most Active Property**
•	Identified the property with the highest cumulative order quantity.
Solving the Business Challenge

# This SQL analysis enables TimberCrest Furnishings to:
•	Identify top-performing products and optimize stock levels.
•	Adjust strategies in underperforming product categories.
•	Better understand regional sales trends and customer demand.
•	Make informed, data-driven decisions for future growth.

**Recommendations**
1.	Expand inventory of high-demand Furnishings.
2.	Evaluate pricing or marketing strategies for low-performing products.
3.	Strengthen engagement in high-order cities and states.
4.	Tailor marketing using product and customer insights.
5.	Monitor annual sales to detect seasonal patterns and guide procurement.
   
**Learning Outcome**
This project demonstrates the practical application of SQL to solve real-world business challenges using relational data. It reinforces skills in joins, filtering, aggregations, pattern matching, and query optimization—providing key insights that drive better business decisions.
Shared as part of the 10Analytics SQL Case Study Series.

 #SQL #DataAnalysis #10Analytics

