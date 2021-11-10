SELECT album_name, year FROM albums WHERE year = 2018;
SELECT track_name, track_length FROM tracks ORDER BY track_length LIMIT 1;
SELECT track_name FROM tracks WHERE track_length >= 210;
SELECT collection_name FROM Collection WHERE year BETWEEN 2018 AND 2020;
SELECT * FROM ARTISTS WHERE artist_name LIKE '_%_';
SELECT track_name FROM tracks WHERE track_name LIKE '%my%';