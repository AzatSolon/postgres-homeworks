-- SQL-команды для создания таблиц

CREATE DATABASE north;

CREATE TABLE employees
(
	employees int PRIMARY KEY,
	first_name varchar(30) NOT NULL,
	last_name varchar(150) NOT NULL,
	title varchar(200) NOT NUll,
	birth_date text,
	notes text
);

CREATE TABLE customers
(
	customer_id varchar(6) PRIMARY KEY,
	company_name varchar(100) NOT NULL,
	contact_name varchar(100) NOT NULL
);

CREATE TABLE orders
(
	order_id int PRIMARY KEY,
	customer_id varchar(6) REFERENCES customers(customer_id) NOT NULL,
	employee_id int REFERENCES employees(employees),
	order_date text,
	ship_city text
);

SELECT * FROM orders
SELECT * FROM customers
SELECT * FROM employees

