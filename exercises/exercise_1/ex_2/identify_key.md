# 2. Identify Keys

| EmployeeID | Förnamn | Efternamn | AvdelningID | E-post                       | Telefon     |
| ---------- | ------- | --------- | ----------- | ---------------------------- | ----------- |
| 201        | Erik    | Johansson | 1           | erik.johansson@coolfirma.se  | 070-1234567 |
| 202        | Anna    | Karlsson  | 2           | anna.karlsson@coolfirma.se   | 073-2345678 |
| 203        | Johan   | Andersson | 1           | johan.andersson@coolfirma.se | 072-3456789 |
| 204        | Sara    | Lindgren  | 3           | sara.lindgren@coolfirma.se   | 076-4567890 |
| 205        | Maria   | Svensson  | 2           | maria.svensson@coolfirma.se  | 070-5678901 |


a) Which columns could be candidate keys here?

b) From this set of candidate keys, which one would you choose as primary key and which ones as alternate keys?

c) Is your primary key considered as natural key or surrogate key?

d) Create another table with a primary key where one of the columns in this table could act as a foreign key.

## Solution

a) ***Columns with candidate keys***
- EmployeeID
- E-post
- Telefon

b) 

***Primary key***

EmployeeID


***Alternate keys***
- E-post
- Telefon

c)

Is consider as surrogate key, is's artificielle generated for each employeed.

d)

Department
| avdelningID | namn | anläggning  | mangerID |
|   ---       | ---  |    ----     |  ----    |

<br>

Here, avdelningID will be the primary key which will have a relationship to the Employeed table's avdelningID, which will function as a foreign key in that table.