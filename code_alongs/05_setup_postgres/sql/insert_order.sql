SET  search_path TO ezecream_05;

TRUNCATE TABLE Orders RESTART IDENTITY;

INSERT INTO Orders (customer_id, order_date)
VALUES
    (2, '2024-05-04'),
    (50, '900-05-04');


-- DELETE FROM ezecream_05.Orders WHERE customer_id = 50;

-- Todo: for reader: find out how to delete this row with customer

