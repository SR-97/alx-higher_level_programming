-- Script to list all shows and their linked genres

-- Use the hbtn_0d_tvshows database
USE hbtn_0d_tvshows;

-- Select all shows and their linked genres
SELECT tv_shows.title, COALESCE(tv_genres.name, 'NULL') AS name
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
LEFT JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
ORDER BY tv_shows.title ASC, tv_genres.name ASC;
