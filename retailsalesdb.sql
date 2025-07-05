
CREATE DATABASE IF NOT EXISTS RetailSalesDB;
USE RetailSalesDB;

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    age INT
);


CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);


CREATE TABLE IF NOT EXISTS order_details (
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


INSERT INTO customers VALUES 
(1, 'Alice', 'New York', 30),
(2, 'Bob', 'Los Angeles', 25),
(3, 'Charlie', 'Chicago', 35),
(4, 'David', 'Houston', 40);

INSERT INTO orders VALUES
(101, 1, '2024-07-01', 200.00),
(102, 2, '2024-07-02', 150.00),
(103, 1, '2024-07-03', 300.00),
(104, 3, '2024-07-04', 100.00);

INSERT INTO products VALUES
(1, 'Laptop', 1000.00),
(2, 'Phone', 500.00),
(3, 'Headphones', 150.00);

INSERT INTO order_details VALUES
(101, 1, 1),
(101, 3, 2),
(102, 2, 1),
(103, 1, 1),
(104, 3, 1);


INSERT INTO customers VALUES
(5, 'Emma', 'San Diego', 28),
(6, 'Frank', 'Dallas', 45),
(7, 'Grace', 'Phoenix', 33),
(8, 'Hannah', 'San Jose', 38);

INSERT INTO orders VALUES
(105, 5, '2024-07-05', 450.00),
(106, 6, '2024-07-06', 600.00),
(107, 7, '2024-07-07', 200.00),
(108, 5, '2024-07-08', 300.00),
(109, 8, '2024-07-09', 100.00);

INSERT INTO products VALUES
(4, 'Tablet', 700.00),
(5, 'Monitor', 250.00),
(6, 'Keyboard', 80.00);

INSERT INTO order_details VALUES
(105, 2, 1),
(105, 4, 1),
(106, 1, 1),
(107, 3, 1),
(108, 5, 2),
(109, 6, 1);


