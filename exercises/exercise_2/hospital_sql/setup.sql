CREATE SCHEMA IF NOT EXISTS hospital;

SET search_path TO hospital;


-- DROP TABLE IF EXISTS Doctor CASCADE;
-- DROP TABLE IF EXISTS Hospital CASCADE;
-- DROP TABLE IF EXISTS Department CASCADE;
-- DROP TABLE IF EXISTS DoctorHospitalDepartment CASCADE; 


-- create primary entities table 
CREATE TABLE IF NOT EXISTS Doctor (
    doctor_id SERIAL PRIMARY KEY,
    doctor_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Hospital (
    hospital_id SERIAL PRIMARY KEY,
    hospital_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS DoctorHospitalDepartment (
    doctor_id INTEGER NOT NULL,
    hospital_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    PRIMARY KEY (hospital_id, doctor_id, department_id), -- composite primary key
    FOREIGN KEY (doctor_id) REFERENCES Doctor (doctor_id) ON DELETE CASCADE,
    FOREIGN KEY (hospital_id) REFERENCES Hospital (hospital_id) ON DELETE CASCADE,
    FOREIGN KEY (department_id) REFERENCES Department (department_id) ON DELETE CASCADE
);


