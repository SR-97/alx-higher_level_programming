-- Script to list all cities of California from the database hbtn_0d_usa

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Select all cities of California
SELECT * 
FROM cities 
WHERE state_id = (
    SELECT id 
    FROM states 
    WHERE name = 'California'
)
ORDER BY id;
