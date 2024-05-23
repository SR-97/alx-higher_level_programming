-- Script to list all shows without the genre Comedy

-- Use the hbtn_0d_tvshows database
USE hbtn_0d_tvshows;

-- Get the show IDs with the genre Comedy
SET @comedy_show_ids := (
    SELECT GROUP_CONCAT(DISTINCT tv_show_id SEPARATOR ', ')
    FROM tv_show_genres
    JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
    WHERE tv_genres.name = 'Comedy'
);

-- Select shows without the genre Comedy
SELECT title
FROM tv_shows
WHERE id NOT IN (
    SELECT tv_show_id
    FROM tv_show_genres
    WHERE tv_show_id IN (@comedy_show_ids)
)
ORDER BY title ASC;
