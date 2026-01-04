# Amazon-E-commerce_MySQL
Amazon E-Commerce Sales Analysis Using MySQL

# Project Overview

This project focuses on analyzing sales performance, customer behavior, and revenue trends using structured SQL queries on a relational database consisting of customers, orders, products, order items, and payments.
The objective of the project is to demonstrate practical SQL skills by answering real-world business questions such as customer order patterns, product popularity, revenue generation, and geographical sales distribution.
# Database Structure
The analysis is performed on the following tables:

customers – customer details and country information
orders – order metadata and order status
orderitems – products purchased per order with quantities
product – product details, category, and price
payments – payment amount and transaction dates

This project answers the following analytical questions using SQL:

1. Retrieve all customer and product records.
2. Determine the total number of orders placed by each customer.
3. Identify repeat customers who placed more than one orders
4. Calculate the total revenue generated from all orders.
5. Compute total sales quantity for each product.
6. Identify top-selling and most popular products based on quantity sold.
7. Extract details of cancelled orders and affected products.
8. Analyze revenue distribution across countries.
9. Evaluate monthly revenue trends using date-based aggregation.
10. Calculate total spending by each customer.
11. Identify the highest priced product in each product category using subqueries.

# SQL Concepts Used

This project demonstrates hands-on usage of:
SELECT, WHERE, ORDER BY
JOIN (INNER JOIN across multiple tables)
Aggregate functions: SUM(), COUNT(), MAX()
GROUP BY and HAVING
Subqueries (correlated subquery)
Date functions (DATE_FORMAT)
Alias usage for clarity and readability

# Insights & Analysis Focus

The queries are designed to move beyond basic data retrieval and support business-oriented analysis, including:
Customer purchase behavior and spending patterns
Product demand and sales concentration
Revenue contribution by geography
Order cancellations and their impact
Time-based revenue performance
