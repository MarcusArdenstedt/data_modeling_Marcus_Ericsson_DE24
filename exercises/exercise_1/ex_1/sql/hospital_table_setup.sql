CREATE SCHEMA IF NOT EXISTS hospital_ex1_0;

SET search_path TO hospital_ex1_0;

DROP TABLE IF EXISTS Doctor CASCADE;
DROP TABLE IF EXISTS Hospital CASCADE;
DROP TABLE IF EXISTS Department CASCADE;
DROP TABLE IF EXISTS HospitalDepartment CASCADE;
DROP TABLE IF EXISTS HospitalDoctor CASCADE;
DROP TABLE IF EXISTS DepartmentDoctor CASCADE;


-- create primary entities table 
CREATE TABLE IF NOT EXISTS Doctor (
    doctor_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Hospital (
    hospital_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Department (
    department_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


-- create composite entities that are in relation with primary entities table
CREATE TABLE IF NOT EXISTS HospitalDepartment (
    hospital_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    PRIMARY KEY (hospital_id, department_id), -- composite primary key
    FOREIGN KEY (hospital_id) REFERENCES Hospital (hospital_id) ON DELETE CASCADE,
    FOREIGN KEY (department_id) REFERENCES Department (department_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS HospitalDoctor (
    hospital_id INTEGER NOT NULL,
    doctor_id INTEGER NOT NULL,
    PRIMARY KEY (hospital_id, doctor_id), -- composite primary key
    FOREIGN KEY (hospital_id) REFERENCES Hospital (hospital_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES Doctor (doctor_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS DepartmentDoctor (
    department_id INTEGER NOT NULL,
    doctor_id INTEGER NOT NULL,
    PRIMARY KEY (department_id, doctor_id), -- composite primary key
    FOREIGN KEY (department_id) REFERENCES Department (department_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES Doctor (doctor_id) ON DELETE CASCADE
);

