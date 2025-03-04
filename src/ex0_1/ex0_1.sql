CREATE SCHEMA IF NOT EXISTS relation;


-- Create table 
CREATE TABLE IF NOT EXISTS relation.hospital (
    hospital_id INTEGER PRIMARY KEY,
    name VARCHAR,
    address VARCHAR
);

CREATE TABLE IF NOT EXISTS relation.department (
    department_id INTEGER PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE IF NOT EXISTS relation.doctor (
    doctor_id INTEGER PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE IF NOT EXISTS relation.hospital_department (
    hospital_department_id INTEGER PRIMARY KEY,
    hospital_id INTEGER,
    department_id INTEGER
);

CREATE TABLE IF NOT EXISTS relation.hospital_doctor (
    hospital_doctor_id INTEGER PRIMARY KEY,
    hospital_id INTEGER,
    doctor_id INTEGER
);

CREATE TABLE IF NOT EXISTS relation.department_doctor (
    department_doctor_id INTEGER PRIMARY KEY,
    department_id INTEGER,
    doctor_id INTEGER
);


-- Insert value into attribute (columns)
INSERT INTO relation.hospital (hospital_id, name, address)
VALUES
    (1, "Sjukhusstock", "Drottninggata 3"),
    (2, "Danderyd", "entrevägen 2");

INSERT INTO relation.department (department_id, name)
VALUES
    (1, "kardiologi"),
    (2, "Neurologi"),
    (3, "ortopedi");


INSERT INTO relation.doctor (doctor_id, name)
VALUES
    (1, "Dr Abra Abrahamson"),
    (2, "Dr Erika Erikson"),
    (3, "Dr Sven Svensson"),
    (4, "Dr Urban Urbanson");

INSERT INTO relation.hospital_department (hospital_department, hospital_id, department_id)
VALUES
    (1, 1, 1),
    (2, 1, 2),
    (3, 2, 3),
    (4, 2, 1);

INSERT INTO relation.hospital_doctor (hospital_doctor_id, hospital_id, doctor_id)
VALUES
    (1, 1, 1),
    (2, 1, 2),
    (3, 1, 3);

INSERT INTO relation.department_doctor (department_doctor_id, department_id, doctor_id)
VALUES  
    (1, 1, 1),
    (2, 1, 2),
    (3, 2, 3),
    (4, 3, 4),
    (5, 1, 4);