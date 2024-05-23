-- Script to list all cities with their corresponding state names from the database hbtn_0d_usa

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Select cities with their corresponding state names
SELECT cities.id, cities.name, states.name AS state_name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id;
