CREATE SCHEMA IF NOT EXISTS hospital_ex1_0;

SET search_path TO hospital_ex1_0;

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

CREATE TABLE IF NOT EXISTS HospitalDepartment (
    hospital_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    FOREIGN KEY (hospital_id) REFERENCES Hospital (hospital_id),
    FOREIGN KEY (department_id) REFERENCES Department (department_id)
);

CREATE TABLE IF NOT EXISTS HospitalDoctor (
    hospital_id INTEGER NOT NULL,
    doctor_id INTEGER NOT NULL,
    FOREIGN KEY (hospital_id) REFERENCES Hospital (hospital_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor (doctor_id)
);

CREATE TABLE IF NOT EXISTS DepartmentDoctor (
    department_id INTEGER NOT NULL,
    doctor_id INTEGER NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Department (department_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor (doctor_id)
);