CREATE DATABASE salesDB;
USE salesDB;

CREATE TABLE customers (id VARCHAR(100), name VARCHAR(100) NULL, 
segment VARCHAR(100) NULL);

CREATE TABLE products (id VARCHAR(100), product_name VARCHAR(100) NULL, 
category VARCHAR(100) NULL, sub_category VARCHAR(100) NULL);

CREATE TABLE region  (postal_code INT, city VARCHAR(100) NULL, state VARCHAR(100) NULL,
region VARCHAR(100) NULL);

CREATE TABLE orders (id VARCHAR(100), customer_id VARCHAR(100) NULL, product_id VARCHAR(100) NULL, 
order_date DATE NULL, ship_date DATE NULL, ship_mode VARCHAR(100) NULL, postal_code INT NULL, 
sales MONEY NULL);

CREATE TABLE variable (var_value INT NOT NULL);
INSERT INTO variable values(0);

CREATE TABLE logerror (package_name VARCHAR(25), error_description VARCHAR(500));

UPDATE variable
	SET var_value = 0;

GO

CREATE PROCEDURE update_var_value
AS
BEGIN
UPDATE variable
	SET var_value = var_value + 1;
END


SELECT COUNT(*) AS customers FROM customers;
SELECT COUNT(*) AS orders FROM orders;
SELECT COUNT(*) AS products FROM products;
SELECT COUNT(*) AS region FROM region;

SELECT var_value FROM variable;

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM region;


