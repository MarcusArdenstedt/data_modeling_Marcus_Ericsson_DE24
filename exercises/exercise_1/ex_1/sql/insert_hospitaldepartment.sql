SET search_path To hospital_ex1_0;

INSERT INTO hospital_ex1_0.hospitaldepartment (hospital_id, department_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 1),
    (3, 4),
    (3, 3);


-- Exercise 1 task a, Add a row in HospitalDepartment with a hospital_id that doesn't exist in the hospital table
SET search_path TO hospital_ex1_0;

INSERT INTO HospitalDepartment (hospital_id, department_id)
VALUES
    (5, 3);




-- Exercise 1 task c, Add a department_id to HospitalDepartment with a hospital_id that doesn't exist in the hopsital table_am_handler_in
SET search_path TO hospital_ex1_0;

INSERT INTO HospitalDepartment (hospital_id, department_id)
VALUES
    (2, 5);
