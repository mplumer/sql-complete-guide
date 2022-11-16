-- SELECT * FROM users
-- WHERE first_name LIKE 'Ma%';

-- SELECT COUNT(id) FROM locations;

-- SELECT c.name, loc.street, COUNT(loc.id) FROM cities AS c
-- LEFT JOIN locations AS loc ON loc.city_name = c.name
-- GROUP BY c.name, loc.street;

SELECT c.name, COUNT(loc.id) AS num_locations FROM cities AS c
LEFT JOIN locations AS loc ON loc.city_name = c.name
-- WHERE c.name = 'Berlin' OR c.name = 'Munich'
GROUP BY c.name
HAVING COUNT(loc.id) > 1
;