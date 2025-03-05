DESC;


-- Quering on each tables too get overview on them
-- doctor table
SELECT 
	*
FROM 
	staging.doctor d;

-- hospital table
SELECT 
	*
FROM 
	staging.hospital h;

-- department table	
SELECT 
	*
FROM 
	staging.department d;


-- brigedtable that link with intitytable
SELECT 
	hd.hospital_doctor_id,
	hd.hospital_id,
	hd.doctor_id,
FROM 
	staging.hospital_doctor hd; 


-- using join to get information hospita sjukhusstock and each deaprtment
SELECT
	h.name,
	h.address,
	d.name,
FROM 
	staging.hospital h
LEFT JOIN staging.hospital_department hd ON h.hospital_id = hd.hospital_id 
LEFT JOIN staging.department d ON hd.department_id = d.department_id
WHERE h.name LIKE '%Sj%';


-- Get information on doctor and which hospital and which department
SELECT
	d.name,
	h.name,
	h.address,
	d2.name,
FROM 	
	staging.doctor d 
LEFT JOIN staging.hospital_doctor hd ON d.doctor_id = hd.doctor_id
LEFT JOIN staging.hospital h ON hd.hospital_id = h.hospital_id
LEFT JOIN staging.hospital_department hd2 ON hd.hospital_id = hd2.hospital_id
LEFT JOIN staging.department d2 ON hd2.department_id = d2.department_id;


