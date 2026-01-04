CREATE DATABASE amazon;
USE  amazon;

-- Customers--
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
email_id VARCHAR(50),
country VARCHAR(50)
);

-- Products--
CREATE TABLE product(
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
product_category VARCHAR(50),
price DECIMAL(10,2)
);

-- Orders--
CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
status VARCHAR(50),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order Items--
CREATE TABLE orderitems(
orderitem_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Payments--
CREATE TABLE payments(
payment_id INT PRIMARY KEY,
order_id INT,
paymentdate DATE,
amount DECIMAL(10,2),
payment_method VARCHAR(30),
FOREIGN KEY (order_id) REFERENCES orders(order_id)
);


