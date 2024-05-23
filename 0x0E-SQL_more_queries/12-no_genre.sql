-- Script to list all shows without a genre linked from the database hbtn_0d_tvshows

-- Use the hbtn_0d_tvshows database
USE hbtn_0d_tvshows;

-- Select all shows without a genre linked
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
WHERE tv_show_genres.genre_id IS NULL
ORDER BY tv_shows.title, tv_show_genres.genre_id;
