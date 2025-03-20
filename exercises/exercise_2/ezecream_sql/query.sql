SET search_path TO ezecream;

SELECT 
    c.first_name,
    c.last_name,
    SUM(od.quantity * od.price_today) AS total_price
FROM
    Customer c 
INNER JOIN 
    Orders o ON c.customer_id = o.customer_id
INNER JOIN 
    Order_Detail od ON o.order_id = od.order_id
WHERE
    c.first_name = 'Ragnar'
GROUP BY 
    c.first_name, c.last_name;