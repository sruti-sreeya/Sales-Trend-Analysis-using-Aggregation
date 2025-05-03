📊 **Online Sales Data Analysis**

This project analyzes an e-commerce transaction dataset using SQL in MySQL Workbench. It extracts insights like revenue trends, top-performing products, regional sales, and payment method usage.

📁 Dataset Description
The dataset contains sales records with the following columns:

Column Name	Description
Transaction ID	Unique identifier for each transaction
Date	Date of the transaction
Product Category	Category of the purchased item
Product Name	Specific product sold
Units Sold	Quantity sold
Unit Price	Price per unit
Total Revenue	Units Sold × Unit Price
Region	Sales region
Payment Method	Mode of payment

🧠 Objectives
Analyze revenue trends over time

Identify best-selling products and categories

Discover regional and payment behavior patterns

Generate actionable business insights

🗂️ Project Structure
File Name	Purpose
Online Sales Data.csv	Raw dataset (uploaded to MySQL)
SQL Queries	Insightful queries listed below
MySQL Workbench	Used for executing all SQL code

⚙️ How to Run This Project
Create Database:

sql
Copy code
CREATE DATABASE online_sales_db;
USE online_sales_db;
Import CSV:

Right-click on “Tables” → Table Data Import Wizard

Choose Online Sales Data.csv → Let it create a new table

Table name: online sales data

Run the Queries (sample shown below)

📌 Sample SQL Queries
1. Monthly Revenue Trend
sql
Copy code
SELECT 
    DATE_FORMAT(`Date`, '%Y-%m') AS month,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
GROUP BY month
ORDER BY month;

3. Top 5 Product Categories by Revenue
sql
Copy code
SELECT 
    `Product Category`,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
GROUP BY `Product Category`
ORDER BY total_revenue DESC
LIMIT 5;

5. Regional Sales Performance
sql
Copy code
SELECT 
    Region,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
GROUP BY Region
ORDER BY total_revenue DESC;

📚 Libraries & Tools Used
MySQL Workbench 8+

SQL (MySQL dialect)

CSV Import Wizard
