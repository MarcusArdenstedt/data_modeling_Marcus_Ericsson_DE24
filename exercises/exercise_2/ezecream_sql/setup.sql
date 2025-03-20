CREATE SCHEMA IF NOT EXISTS ezecream;

SET search_path TO ezecream;


CREATE TABLE IF NOT EXISTS Customer (
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    customer_address VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Product (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Order_Detail (
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    price_today FLOAT NOT NULL,
    order_date DATE NOT NULL,
    PRIMARY KEY (order_id, product_id), -- Composite primary key
    FOREIGN KEY (order_id) REFERENCES Orders (order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Product (product_id) ON DELETE CASCADE
);
