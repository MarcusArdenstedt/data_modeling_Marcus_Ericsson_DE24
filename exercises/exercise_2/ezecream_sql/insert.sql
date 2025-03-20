SET search_path TO ezecream;


-- Insert rows in customer table
INSERT INTO Customer (customer_id, first_name, last_name, customer_address)
VALUES
    (05, 'Ragnar', 'Lodbrok', 'kattegatt 3'),
    (15, 'Felize', 'Fernadu', 'Madridugata 2'),
    (10, 'Charles', 'Xavier', 'Westchester Street 10'),
    (08, 'Ash', 'Ketchum', 'Pallet town street 25');


-- Insert rows in product table
INSERT INTO Product (product_id, product_name, price)
VALUES
    (3, 'Blåbärsmagi', 55),
    (5, 'Lakritsdröm', 25),
    (1, 'lichipichi', 40),
    (8, 'Gitlass', 35);

-- Bridge table where customer id is linked to order id to prevent many to many
INSERT INTO Orders (order_id, customer_id)
VALUES
    (101, 05),
    (105, 15),
    (102, 08),
    (104, 10);

-- Bridge table where order is linked with product
INSERT INTO Order_Detail (order_id, product_id, quantity, price_today, order_date)
VALUES
    (101, 3, 20, 50, '2024-04-05'),
    (101, 5, 15, 25, '2024-04-05'),
    (101, 1, 35, 40, '2024-04-05'),
    (105, 8, 30, 35, '2025-01-10'),
    (102, 3, 25, 50, '2025-02-20'),
    (102, 1, 25, 40, '2025-02-20'),
    (104, 5, 35, 25, '2025-02-22');