CREATE SCHEMA IF NOT EXISTS staging;


-- Create table 
CREATE TABLE IF NOT EXISTS staging.hospital (
    hospital_id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS staging.department (
    department_id INTEGER PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS staging.doctor (
    doctor_id INTEGER PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS staging.hospital_department (
    hospital_department_id INTEGER PRIMARY KEY,
    hospital_id INTEGER,
    department_id INTEGER
);

CREATE TABLE IF NOT EXISTS staging.hospital_doctor (
    hospital_doctor_id INTEGER PRIMARY KEY,
    hospital_id INTEGER,
    doctor_id INTEGER
);

CREATE TABLE IF NOT EXISTS staging.department_doctor (
    department_doctor_id INTEGER PRIMARY KEY,
    department_id INTEGER,
    doctor_id INTEGER
);


-- Insert value into attribute (columns)
INSERT INTO staging.hospital (hospital_id, name, address)
VALUES
    (1, 'Sjukhusstock', 'Drottninggata 3'),
    (2, 'Danderyd', 'entrevägen 2');

INSERT INTO staging.department (department_id, name)
VALUES
    (1, 'kardiologi'),
    (2, 'Neurologi'),
    (3, 'ortopedi');


INSERT INTO staging.doctor (doctor_id, name)
VALUES
    (1, 'Dr Abra Abrahamson'),
    (2, 'Dr Erika Erikson'),
    (3, 'Dr Sven Svensson'),
    (4, 'Dr Urban Urbanson');

INSERT INTO staging.hospital_department (hospital_department_id, hospital_id, department_id)
VALUES
    (1, 1, 1),
    (2, 1, 2),
    (3, 2, 3),
    (4, 2, 1);

INSERT INTO staging.hospital_doctor (hospital_doctor_id, hospital_id, doctor_id)
VALUES
    (1, 1, 1),
    (2, 1, 2),
    (3, 1, 3);

INSERT INTO staging.department_doctor (department_doctor_id, department_id, doctor_id)
VALUES  
    (1, 1, 1),
    (2, 1, 2),
    (3, 2, 3),
    (4, 3, 4),
    (5, 1, 4);