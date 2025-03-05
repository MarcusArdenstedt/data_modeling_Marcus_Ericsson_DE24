DESC;

SELECT
	hospital_doctor_id,
	hd.hospital_id,
	hd.doctor_id,
FROM 
	staging.hospital_doctor hd;


INSERT 
	INTO 
	staging.hospital_doctor (hospital_doctor_id, hospital_id, doctor_id)
VALUES
	(4, 2, 4),
	(5, 1, 4);
	



	