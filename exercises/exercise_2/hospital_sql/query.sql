SET search_path TO hospital;

SELECT
    d.doctor_name,
    h.hospital_name,
    dp.department_name
FROM
    Doctor d
INNER JOIN 
    DoctorHospitalDepartment dhd ON d.doctor_id = dhd.doctor_id
INNER JOIN
    Hospital h ON dhd.hospital_id = h.hospital_id
INNER JOIN 
    Department dp ON dhd.department_id = dp.department_id;


SET search_path TO hospital;

SELECT
    d.department_name,
    h.hospital_name
FROM    
    department d
INNER JOIN
    DoctorHospitalDepartment dhd ON d.department_id = dhd.department_id
INNER JOIN
    Hospital h ON dhd.hospital_id = h.hospital_id;


SET search_path TO hospital;

SELECT
    d.doctor_name,
    h.hospital_name
FROM    
    doctor d
INNER JOIN
    DoctorHospitalDepartment dhd ON d.doctor_id = dhd.doctor_id
INNER JOIN
    Hospital h ON dhd.hospital_id = h.hospital_id;