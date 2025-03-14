-- Try to delete a record in Hospital table
DELETE FROM hospital_ex1_0.Hospital WHERE hospital_id = 1;




-- Delete doctor Urban Urbanson with cascade. 
DELETE FROM hospital_ex1_0.Doctor WHERE doctor_id = 4;

-- Added attribute address in Hospital table and value to each record
ALTER TABLE hospital_ex1_0.Hospital ADD COLUMN address VARCHAR(50)


UPDATE hospital_ex1_0.Hospital
    SET address = CASE
        WHEN hospital_id = 1 THEN 'Sjukhusstock 3'
        WHEN name = 'Danderyd' THEN 'Entrevägen 2'
        WHEN name = 'Sankt Görans Sjukhus' THEN 'Sankt Göransplan 1' 
        ELSE address
    END;
            
