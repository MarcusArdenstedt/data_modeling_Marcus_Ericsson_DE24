# 1. Implement hospital example in postgres

a) Now implement your physical model from e) and add the data from task 0e). Make sure that you have correctly specified different domain constraints.

b) Now lets try to add a row in HospitalDepartment with a hospital_id that doesn't exist in the hospital table. What happens here and why?

c) Do similar to b) but try adding a department_id to HospitalDepartment that doesn't exist in the Department.

d) Now try to do normal delete a record in Hospital that the HospitalDepartment refers to. What happens?

e) Now use delete on cascade and check what happens.

f) Try to violate a domain constraint, what did you try and what result did you get?

## Solution

b)

***Happens?***

Get a error: relation "hospitaldepartment" does not exist.

***why?***

Foreign key in HospitalDepartment is a constraint that creat
a relation with Hospital tables primary key, and it make sure
that only valid value can store in attributes. 

c)

Get the same as in task b.

d)

You cannot delete a primary key when it's have a relation with a foreign key,
because then it creates invalid data in the foreign key.


e)

When you delete a row that's are a primary key with cascade, you delete 
everthing that is related to it.


f)

## violate domain contraint


**Wrote more character that are allowed**

I got, ERROR: value too long for type character varying(50)


**Violates not-null**

i got, ERROR: null value in column "name" of relation "hospital" violates not-null constraint

