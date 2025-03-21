SET search_path TO hospital_ex1_0;

SELECT 
    h.name AS hospital_name,
    d.name AS department_name
FROM 
    hospital h
LEFT JOIN 
    HospitalDepartment hd ON h.hospital_id = hd.hospital_id
LEFT JOIN 
    Department d ON hd.department_id = d.department_id
WHERE 
    h.name = 'Danderyd';


SET search_path TO hospital_ex1_0;

SELECT
    h.name AS hospital_name,
    d.name AS doctor_name
FROM 
    hospital h
LEFT JOIN 
    HospitalDoctor hd ON h.hospital_id = hd.hospital_id
LEFT JOIN 
    Doctor d ON hd.doctor_id = d.doctor_id;


SET search_path TO hospital_ex1_0;

SELECT 
    d.name AS doctor_name,
    dp2.name AS department_name
FROM
    Doctor d 
INNER JOIN 
    DepartmentDoctor dp ON d.doctor_id = dp.doctor_id
INNER JOIN 
    Department dp2 ON dp.department_id = dp2.department_id;


SET search_path TO hospital_ex1_0;

SELECT
    h.name AS hospital_name,
    de.name AS department_name,
    d.name AS doctor_name,
FROM 
    Hospital h 
INNER JOIN
    HospitalDoctor hd ON h.hospital_id = hd.hospital_id
INNER JOIN
    Doctor d ON hd.doctor_id = d.doctor_id
INNER JOIN
    DepartmentDoctor dp ON d.doctor_id = dp.doctor_id
INNER JOIN
    Department de ON dp.department_id = de.department_id;


SET search_path TO hospital_ex1_0;
SELECT
    d.name AS dr_name,
    dep.name AS department_name,
    h.name AS hospital_name
FROM 
    Doctor d
INNER JOIN
    DepartmentDoctor dd ON d.doctor_id = dd.doctor_id
INNER JOIN
    Department dep ON dd.department_id = dep.department_id
INNER JOIN
    HospitalDepartment hd ON dep.department_id = hd.department_id
INNER JOIN
    Hospital h ON hd.hospital_id = h.hospital_id;