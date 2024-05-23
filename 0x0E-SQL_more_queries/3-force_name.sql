-- Script to create the table force_name with id INT and name VARCHAR(256) NOT NULL

-- Create table force_name if it does not exist
CREATE TABLE IF NOT EXISTS force_name (
    id INT,
    name VARCHAR(256) NOT NULL
);
