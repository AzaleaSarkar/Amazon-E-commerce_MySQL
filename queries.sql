-- Query 1: List all customers--
SELECT * FROM customers;

-- Query 2: List all products--
SELECT * FROM product;

-- Query 3: Total number of orders placed by each customer-- 
SELECT c.customer_name, count(o.order_id) AS 'Total_Orders'
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_name;

-- Query 4: Customers who placed more than 1 order--
SELECT c.customer_name
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_name HAVING count(o.order_id)>1;

-- Query 5: Total Revenue generated from all orders--
SELECT SUM(p.price * oi.quantity) AS 'Total Revenue'
FROM product p
JOIN orderitems oi ON p.product_id=oi.product_id;

-- Query 6: Total Sales Quantity for each product--
SELECT p.product_name,SUM(oi.quantity) 
FROM orderitems oi
JOIN product p ON oi.product_id=p.product_id
GROUP BY p.product_name;

-- Query 7: Top-Selling products based on quantity sold
SELECT p.product_name, SUM(oi.quantity) AS ' Total Quantity Sold'
FROM product p
JOIN orderitems oi ON oi.product_id=p.product_id
GROUP BY p.product_name 
ORDER BY SUM(oi.quantity) DESC ;

-- Query 8: Orders with 'cancelled' status 
SELECT p.product_name,o.order_id,o.status
FROM orders o
JOIN orderitems oi ON o.order_id=oi.order_id
JOIN product p ON oi.product_id=p.product_id
WHERE o.status='Cancelled';

-- Query 9: Revenue By Country--
SELECT c.country, sum(p.price*oi.quantity) AS total_revenue
FROM customers c 
JOIN orders o ON o.customer_id= c.customer_id
JOIN orderitems oi ON oi.order_id= o.order_id
JOIN product p ON p.product_id=oi.product_id
GROUP BY c.country
ORDER BY total_revenue DESC;

-- Query 10: Find the most popular product--
SELECT product_name, SUM(oi.quantity) AS Total_quantity
FROM product p
JOIN orderitems oi ON oi.product_id=p.product_id
GROUP BY p.product_name
ORDER BY Total_quantity DESC;

-- Query 11: Monthly Revenue--
SELECT DATE_FORMAT(paymentdate, '%Y-%m') AS month, SUM(amount) AS monthly_revenue
FROM payments
GROUP BY month
ORDER BY month;

-- Query 12: Total Spending by each customer--
SELECT c.customer_name, SUM(p.price*oi.quantity) AS Total_Spending
FROM customers c
JOIN orders o ON o.customer_id=c.customer_id
JOIN orderitems oi ON oi.order_id=o.order_id
JOIN product p ON oi.product_id=p.product_id
GROUP BY c.customer_name
ORDER BY Total_Spending DESC;

-- Query 13: Highest price product in each category--
SELECT product_name, price
FROM product p1 
WHERE price=(
 SELECT MAX(price) 
 FROM product p2
 WHERE p1.product_category=p1.product_category
 );
 







