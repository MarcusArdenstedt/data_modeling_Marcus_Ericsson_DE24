CREATE SCHEMA IF NOT EXISTS booking;

SET search_path TO booking;


-- Create table and domain constraint, use CASCADE to make sure it's possible to delete.
CREATE TABLE IF NOT EXISTS Orginazer (
    orginazer_id SERIAL primary KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(12) NOT NULL
);

CREATE TABLE IF NOT EXISTS Room (
    room_id SERIAL PRIMARY KEY,
    letter CHAR(1) NOT NULL,
    numbers INTEGER NOT NULL,
    capacity INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Events (
    event_id SERIAL PRIMARY KEY,
    event_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Attendee (
    attendee_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS Booking (
    booking_id SERIAL PRIMARY KEY,
    orginazer_id INTEGER NOT NULL,
    event_id INTEGER NOT NULL,
    room_id INTEGER NOT NULL,
    dates DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    FOREIGN KEY (orginazer_id) REFERENCES Orginazer (orginazer_id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES Events (event_id) ON DELETE CASCADE,
    FOREIGN KEY (room_id) REFERENCES Room (room_id) ON DELETE CASCADE
);



CREATE TABLE IF NOT EXISTS EventAttendee (
    eventattendee_id SERIAL PRIMARY KEY,
    event_id INTEGER NOT NULL,
    attendee_id INTEGER NOT NULL,
    FOREIGN KEY (event_id) REFERENCES Events (event_id) ON DELETE CASCADE,
    FOREIGN KEY (attendee_id) REFERENCES Attendee (attendee_id) ON DELETE CASCADE
);

