CREATE TABLE cities (
    name VARCHAR(255) PRIMARY KEY 
); 
-- cities table must be created before locations table
-- because locations table has a foreign key to cities table

CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    street VARCHAR(255) NOT NULL,
    house_number VARCHAR(10) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    city_name VARCHAR(255) REFERENCES cities ON DELETE RESTRICT ON UPDATE CASCADE
    );

CREATE TABLE events (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(255) NOT NULL CHECK (LENGTH(name) > 5),
    date_planned TIMESTAMP NOT NULL,
    image VARCHAR(300), -- Path to image
    description TEXT NOT NULL,
    max_participants INT CHECK (max_participants > 0),
    min_age INT CHECK (min_age > 0),
    location_id INT REFERENCES locations ON DELETE CASCADE
    );                               -- (id) is optional
                                     -- because of the primary key
   

