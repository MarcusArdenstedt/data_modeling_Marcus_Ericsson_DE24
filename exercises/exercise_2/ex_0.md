# 0. Ezecream orders

Our beloved ice cream company Ezecream has a Sales table that looks like this

| order_id | order_date | customer_id | customer_name  | customer_address | product_id | product_name | quantity |
| -------- | ---------- | ----------- | -------------- | ---------------- | ---------- | ------------ | -------- |
| 101      | 2024-04-05 | 05          | Ragnar Lodbrok | Kattegatt 3      | 3          | Blåbärsmagi  | 20       |
| 101      | 2024-04-05 | 05          | Ragnar Lodbrok | Kattegatt 3      | 5          | Lakritsdröm  | 15       |
| 101      | 2024-04-05 | 05          | Ragnar Lodbrok | Kattegatt 3      | 1          | Lichipichi   | 35       |
| 105      | 2025-01-10 | 15          | Feliz Fernadu  | Madridugatan 2   | 8          | Gitlass      | 30       |
| ...      | ...        | ...         | ...            | ...              | ...        | ...          | ...      |

a) Find different problems with this table, so that Ezecream will take you in for internship to fix it for them

b) Does this table satisfy 1NF, 2NF? Motivate.

b) Normalize this table to 3NF, make conceptual diagram and relational schema notation for each relation. Relational schema notation is `RelationName(attribute1, attribute2, ...)`

c) Now also add price attribute. Think about what would happen when price increases or decreases.

d) Write SQL code to get the total price for Ragnar Lodbrok. Insert data into your tables and test it out.

## Solution 

a)

you will get redundancy data  in customer_name if one cutomer wants more product, same with product_name. It will create a probelm if you wanna delete a product, the hal raw will be deleted.

1) data redundancy 
Defination: same values repeded leads to across multiple rows. Problems, consistancy increase s storage usage 
Example: look order 101: name + address repeated 3 times.

2) deletion anomaly
 - defination: deletion of a records leads to unintentional loss of data. In other you remove data you wanted to remove PLUS data that you should have kept.
 - Example: if we remove row with order 101, and there is no ohter order linked to product Blåbärsmagi, then we lose info about this product.

3) Insertion anomaly 
- defination: iserting data is not possible because values an attributes are misssing (depends on the constraints an the DB).
- Example: adding a new customer without chosen product and/or quantity.

4) Update anomaly
- Defination: updating modifying are value leads to incositencies with other rows. In other words one would have to update same info in sevral places.
- Example: If we need update name/address of a customer that is present in sevral rows, we would have to manually update it in each row linked to this customer or create  inconsistens data.

b)

checklist 1NF
- row order doesn't matter      (exists)
- PK in each table              (exists)   only if we allow an implicit PK in form of a composite key (order_id, product_id).
                                           Comment: it is not posible for a customer to adds to same order, product with a new quantity. 
- No repeting groups            (exists)   
- Unifor column data            (exists)   data type can't be mixed within a column, one attribute = one data type

checklist 2NF

- 1NF                            (exists) 
- Non prime attributes must 
  be functionally dependes on 
  entire primary key and not 
  just part of it.               (no)


***Question*** 

1) Which column/columns are your primary key?
2) Go through each column thats is NOT a part of PK?
3) Check if this column is functionally dependes on column/columns that make a pk?
4) If Yes on all --> 2NF?


c)

Customer
- customer_id (PK)
- customer_name
- address


Order
- order_id (PK)
- order_date
- customer_id (FK)

Product
- product_id (PK)
- product_name


Order_Detail
- Composite primary key (order_id, product_id), (PK)
- order_id (FK)
- product_id (FK)
- quantity

**conceptual ERD**

<img src = "../../assets/ezecream_ERD.png">


***Relationel schema notation*** 

- Customer(<u>customer_id</u>, customer_name, customer_address) 
- Product(<u>product_id</u>, product_name, price)
- Order(<u>order_id</u>, order_date, customer_id)
- Order_detail(<u>order_id, product_id</u>, quantity, FK: order_id -> Order, FK: product_id -> Product)

***Function dependency***
- customer_id --> customer_name, customer_address 
- product_id --> product_name, price
- order_id --> order_date, customer_id
- (order_id, product_id) --> quantity, price_today, date

d)

A: we add price as an attribute to product table. it works only if the price remains constants

B: If price increase or decrease over time, solution A would not work, because historical orders would end up with wrong price. 

C: Add price list entity that would keep track of historical prices.



Added price attribute in product table and added in price_today, date in Order_Detail table.

***Result***

Customer
- customer_id (PK)
- customer_name
- address

Order
- order_id (PK)
- customer_id (FK)

Product
- product_id (PK)
- product_name
- price

Order_Detail
- Composite primary key (order_id, product_id), (PK)
- order_id (FK)
- product_id (FK)
- quantity
- price_today
- order_date


e)


``` SQL
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