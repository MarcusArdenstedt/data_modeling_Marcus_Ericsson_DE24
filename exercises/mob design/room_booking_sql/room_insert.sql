SET search_path TO booking;


-- Insert data intto Orginazer table
INSERT INTO Orginazer (first_name, last_name, phone)
VALUES 
    ('Alice', 'Smith', '123-456-7890'),
    ('John', 'Doe', '987-654-3210'),
    ('Ragnar', 'Wagner', '105-765-2340');

-- Insert data into  Room table
INSERT INTO Room (letter, numbers, capacity)
VALUES
    ('A', 101, 50),
    ('B', 202, 100);


-- Insert data into Event table 
INSERT INTO Events (event_name)
VALUES
    ('AI Workshop'),
    ('Data Science');


-- Insert data into Attendee table
INSERT INTO Attendee (name)
VALUES
    ('Bob'),
    ('Charlie'),
    ('David'),
    ('Eva'),
    ('Frank'),
    ('George'),
    ('Helen');

-- Insert data into booking (bridge table)
SET search_path TO booking;
INSERT INTO Booking (orginazer_id, event_id, room_id, dates, start_time, end_time)
VALUES
    (1, 1, 1, '2025-04-10', '10:00:00', '12:00:00'),
    (2, 2, 2, '2025-04-11', '14:00:00', '16:00:00'),
    (3, 1, 1, '2025-04-10', '12:00:00', '14:00:00');


-- Insert data into bridge table EventAttendee
INSERT INTO EventAttendee (event_id, attendee_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 4),
    (2, 5),
    (2, 6),
    (2, 7);