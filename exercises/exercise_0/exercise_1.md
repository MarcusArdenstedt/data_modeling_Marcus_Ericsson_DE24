
# 1. hospital task

``` json
{
  "hospital": "Sjukhusstock",
  "address": "Drottninggatan 3, Stockholm",
  "departments": [
    {
      "name": "Kardiologi",
      "doctors": [
        { "id": 1, "name": "Dr. Abra Abrahamson" },
        { "id": 2, "name": "Dr. Erika Eriksson" }
      ]
    },
    {
      "name": "Neurologi",
      "doctors": [{ "id": 3, "name": "Dr. Sven Svensson" }]
    }
  ]
}
```
## Solution

- identify entities 
- identify relationships and caridinalities 
- create conceptual erd
- create tables


**Intial naive conceptual ERD**

<img src = "../assets/initial_conceptual_model_ex1.png"
width=300> 

**Initial tables**

Hospital

| hospital_id | name         | address          |
|   -------   |  --------    | ----------       |
| 1           | Sjukhusstock | Drottninggatan 3 |
| 2           | Danderyd     | entrevägen 2     |


Department

| department_id | name       | 
| ------------- | --------   |
| 1             | Kardiologi | 
| 2             | Neurologi  |
| 3             | ortopedi   |


Doctor

| doctor_id | name                 |
| --------- | ---------------      |
| 1         | Dr. Abra Abrahamson  |
| 2         | Dr. Erika Erikson    |
| 3         | Dr. Sven Svensson    |
| 4         | Dr. Urban Urbanson   |


Refined with bridge tables to reflect many-to-many
relationships

<img src = "../assets/conceptual_hospital_ex0_1.png"
width=500>

## composite entities
### Solution

HospitalDepartment

| hospital_Department_id | hospital_id | department_id |
| -----------            | --------    | ------------- |
| 1                      | 1           | 1             |
| 2                      | 1           | 2             |
| 3                      | 2           | 3             |
| 4                      | 2           | 1             |

HospitalDoctor

| Hospital_Doctor_id | Hospital_id | Doctor_id    |
| --------------     | ---------   | -----------  |
|  1                 |      1      | 1            |
|  2                 |      1      | 2            |
|  3                 |      1      | 3            |
|  4                 |      2      | 4            |
|  5                 |      1      | 4            |




DepartmentDoctor

| Department_Doctor_id | Department_id | Doctor_id |
| -------------------- | ------------- | ------    |
| 1                    | 1             | 1         |
| 2                    | 1             | 2         |
| 3                    | 2             | 3         |
| 4                    | 3             | 4         |
| 5                    | 1             | 4         |

Test a join 

Want information on Sjukhusstock and its departments 
- hospital_department can join with department_id on 
department table and hospital_id on hospital_table
- query name from hospital table and name from department 
table


Hospital Sjukhusstock and its department
 
``` sql
SELECT
	h.name,
	h.address,
	d.name,
FROM 
	staging.hospital h
LEFT JOIN staging.hospital_department hd ON h.hospital_id = hd.hospital_id 
LEFT JOIN staging.department d ON hd.department_id = d.department_id
WHERE h.name LIKE '%Sj%';
```