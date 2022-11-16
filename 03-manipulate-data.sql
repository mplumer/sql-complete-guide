-- INSERT INTO events (
--     name, 
--     date_planned, 
--     description, 
--     max_participants, 
--     min_age
--     )
-- VALUES (
--     'Thanks Giving Dinner',
--     '2022-11-24 16:00:00',
--     'A dinner to fill your face with turkey and cranberry sauce.',
--     20,
--     5
--     ),
--     (
--     'Christmas Party',
--     '2022-12-24 18:00:00',
--     'A festive party for friends and family.',
--     30,
--     12
--     );


-- UPDATE events
-- SET name = 'Thanksgiving Dinner' WHERE id = 1;

-- UPDATE events
-- SET min_age = 13 WHERE id = 2;

-- INSERT INTO events (
--     name, 
--     date_planned, 
--     description, 
--     max_participants, 
--     min_age
--     )
-- VALUES (
--     'Event to be deleted',
--     '2022-11-24 16:00:00',
--     'This event is about to be gone.',
--     20,
--     5
--     );

DELETE TABLE events;