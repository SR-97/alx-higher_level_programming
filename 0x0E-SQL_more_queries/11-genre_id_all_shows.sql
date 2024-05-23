-- Script to list all shows with their corresponding genre IDs, displaying NULL if a show doesn't have a genre, from the database hbtn_0d_tvshows

-- Use the hbtn_0d_tvshows database
USE hbtn_0d_tvshows;

-- Select all shows with their corresponding genre IDs
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
ORDER BY tv_shows.title, tv_show_genres.genre_id;
