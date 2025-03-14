SET search_path TO hospital_ex1_0;

iNSERT INTO DepartmentDoctor (department_id, doctor_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (1, 4),
    (4, 3),
    (4, 2);