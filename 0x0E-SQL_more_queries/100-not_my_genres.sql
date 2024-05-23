-- Script to list all genres not linked to the show Dexter

-- Use the hbtn_0d_tvshows database
USE hbtn_0d_tvshows;

-- Get the genre IDs linked to Dexter
SET @dexter_genre_ids := (
    SELECT GROUP_CONCAT(DISTINCT genre_id SEPARATOR ', ')
    FROM tv_show_genres
    JOIN tv_shows ON tv_show_genres.tv_show_id = tv_shows.id
    WHERE tv_shows.title = 'Dexter'
);

-- Select genres not linked to Dexter
SELECT name
FROM tv_genres
WHERE id NOT IN (@dexter_genre_ids)
ORDER BY name ASC;
