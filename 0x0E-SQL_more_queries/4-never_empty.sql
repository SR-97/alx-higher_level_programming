-- Script to create the table id_not_null with id INT default 1 and name VARCHAR(256)

-- Create table id_not_null if it does not exist
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);
