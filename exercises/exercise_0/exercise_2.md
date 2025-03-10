# 2. Library Bookly

A library called Bookly keeps track of books and members who borrow them. Each book has a title, author, and ISBN number. Each member has a membership ID, name, and contact information. A member can borrow multiple books, but each book can be borrowed by only one member at a time.

a) Identify the entities and attributes for each entity.

b) Determine the relationship between member and books.

c) Draw a conceptual ERD using crow foots notation.

## Solution 
a)

**Entity and attributes for each entity.**

**Book**
- title
- author
- ISBN

> [!NOTE]
> ISBN is a unique number for the book, which could be used as a `primary key`, this will make it into a `natural key`

***Loan***

- loan_id
- book_id
- member_id
- loan_date
- return_date


**Member**
- membership_id
- first_name
- last_name
- phone
- email
- adress

b)
- A Book can be Loan zero, one or sevral time
- A Loan is linked to one and only one Book
- A Loan can be made by one and only one Member
- A Member can do zero, one or sevral Loan


c)

Initial conceptual ERD

<img src = "../../assets/library_conceptual_ex0_2.png"
width=500>

<br>
Refined with composity entity table to reflect many-to-many relationship

<br>
<img src = "../../assets/bookly_conceptual_erd_ex0_2.png"
width=500>

