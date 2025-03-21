# 2. Revisiting the doctor example
Remember the doctor, hospital and department example from exercise0 and exercise1.
a) Does the design fulfill 3NF, motivate based on the rules for the normal forms.

b) You should have realised from this question in exercise1 0e)

> "Create a few tables manually, insert given data plus some more, and try to manually link foreign keys to primary keys. Can you satisfy that a doctor can work at `several departments and several hospitals?`"

that this creates ambiguity. This can be solved with a ternary relationship, which connects three entities simultaneously. Now make a new iteration for this data model.

c) In your design do you have bridge tables as well in addition to the ternary relationship. Motivate why you should or should not have them.

## Solution

a)

***Criteria fisrt Normal Form***
- row order doesn't matter 
- Primary key in each table 
- No repeating groups (no list in columns)
- uniform column data (no mixed data typ in column)

***Criteria second Normal Form***
- fulfill 1NF (yes)
- non-prime attributes must functionally dependes on the primary key, not just part of it (yes)

***Criteria third Normal Form***
- fulfill 2NF (yes)
- non-prime attributes must depends on the key, the whole key and nothing but the key (yes)

***Relationships schema notation***
- Hospital (<u>hospital_id</u>,name, address)
- Department (<u>department_id</u>, name)
- Doctor (<u>doctor_id</u>, name)

***3NF trivially***
- HospitalDoctor (<u>hospital_id</u>, <u>doctor_id</u>)
- DoctorDepartment (<u>doctor_id</u>, <u>department_id</u>)
- HospitalDepartment (<u>hospital_id</u>, <u>department_id</u>)

***Function dependency***
- hospital_id --> name, address
- doctor_id --> name
- department_id --> name 

b)

