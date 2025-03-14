SET search_path To hospital_ex1_0;

INSERT INTO Hospital (name)
VALUES
    ('Sjukhusstock'),
    ('Danderyd'),
    ('Sankt Görans Sjukhus');




-- Try to insert integer in hospital table when it varchar
INSERT INTO hospital_ex1_0.Hospital (name)
VALUES
    ('dkfhgjdkald dpsodpf dospdpåd dpsamdåsd    dpspa¨vksåfsaskffggh');

-- Try to insert null in hospital table when it sat "NUT NULL"
INSERT INTO hospital_ex1_0.Hospital (name)
VALUES
    (NULL)