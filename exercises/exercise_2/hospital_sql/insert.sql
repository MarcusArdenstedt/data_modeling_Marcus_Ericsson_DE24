SET search_path TO hospital;

INSERT INTO Doctor (doctor_name)
VALUES
    ('Dr. Abra Abrahamson'),
    ('Dr. Erika Erikson'),
    ('Dr. Sven Svenson'),
    ('Dr Urban Urbanson'),
    ('Dr Ragnar Wagner');


INSERT INTO Hospital (hospital_name)
VALUES
    ('Sjukhusstock'),
    ('Danderyd'),
    ('Sankt Görans Sjukhus');


INSERT INTO Department (department_name)
VALUES
    ('kardiologi'),
    ('neurologi'),
    ('ortopedi'),
    ('urology');

iNSERT INTO DoctorHospitalDepartment (doctor_id, hospital_id, department_id)
VALUES
    (1, 1, 1),
    (1, 2, 1),
    (1, 3, 1),
    (2, 1, 2),
    (2, 2, 2),
    (2, 3, 3),
    (3, 2, 4),
    (3, 3, 4),
    (4, 1, 3),
    (4, 2, 4),
    (5, 2, 2),
    (5, 3, 2);


