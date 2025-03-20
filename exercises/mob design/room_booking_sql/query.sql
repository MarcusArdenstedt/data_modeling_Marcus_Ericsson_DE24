SET search_path To booking;


-- show orginazers and which room they have booked for a event
    o.first_name,
    o.last_name,
    b.dates,
    r.letter,
    r.numbers,
    b.start_time,
    b.end_time
FROM
    Orginazer o
INNER JOIN 
    Booking b ON o.orginazer_id = b.orginazer_id
INNER JOIN
    Room r ON b.room_id = r.room_id;


-- findout where Bob and Helen is enrolled
SET search_path To booking;

SELECT 
    a.name,
    ev.event_name,
    r.letter,
    r.numbers,
    b.start_time,
    b.end_time
FROM
    Attendee a
INNER JOIN 
    EventAttendee e ON a.attendee_id = e.attendee_id
INNER JOIN
    Events ev ON e.event_id = ev.event_id
INNER JOIN
    Booking b ON ev.event_id = b.event_id
INNER JOIN
    Room r ON b.room_id = r.room_id
WHERE
    a.name = 'Bob' OR a.name = 'Helen';