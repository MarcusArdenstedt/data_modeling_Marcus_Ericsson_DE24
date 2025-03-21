# 1. Sakila
Use the same ERD from Sakila as in exercise1 task 3.

a) Is this normalized to 3NF?

b) Lets zoom in to the inventory, explain how it works for tracking films in each stores.

c) Do we have a way to know if a film is rented out or not?

## Solution

a) 

***criteria for first normal form***
- row order doesn't matter
- Primary key in each table
- no repeating groups (no list in the column)
- uniform column data (no mixed data type in the column)


***criteria for second normal form***
- fulfill 1NF
- no-primary attributes must be functionally dependent on entire primary key and not just part of it.

***criteria for third normal form***
- fulfill 2NF
- non-primary attributes depends on the key, the whole key and nothing but the key.

It's fulfill the 1NF if film_category and film_actor has a composite primary key, PK(film_id, category_id), PK(actor_id, film_id).
It seems as it fulfill 2NF if the fil_category and film_actor has composite primary key.
Yes, it fulfill 3NF

b)

In the inventory table you have film_id and store_id both are foreign key, film_id refers to primary key film_id in Film table and store_id refers to the primary key store_id in Store table. In inventory you have inventory_id that's show which film_id and store_id, each inventory_id is unique and will show which film_id and store_id belongs to the same inventory_id. 

c)

Yes, in rental there is a inventory_id that is a foreign key and refers to primary key inventory_id in inventory table. In rental you have attribute rental_date and return_date so you can see on the date if it's in or not. 


