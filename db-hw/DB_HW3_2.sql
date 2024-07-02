# Exercise 2
SELECT title, duration FROM songs
WHERE duration = (SELECT MAX(duration) FROM songs);

SELECT title FROM songs
WHERE duration >= 210;

SELECT title FROM playlists
WHERE year BETWEEN DATE '2018-01-01' AND DATE '2020-01-01';

SELECT name FROM artists
WHERE name NOT LIKE '% %';

SELECT title FROM songs
WHERE title LIKE '%my%' OR title LIKE 'My%';

# Exercise 3
SELECT genre_id, COUNT(*) FROM genres_artists
GROUP BY genre_id
ORDER BY COUNT(*) DESC;

SELECT COUNT(*) FROM songs s
JOIN albums a ON s.album_id = a.album_id
WHERE year BETWEEN DATE '2019-01-01' AND DATE '2020-01-01';

SELECT album_id, AVG(duration) FROM songs
GROUP BY album_id
ORDER BY AVG(duration) DESC;

SELECT name FROM artists a
JOIN albums_artists aa ON a.artist_id = aa.artist_id
JOIN albums a2 ON a2.album_id = aa.album_id
WHERE a2.year != DATE '2020-01-01';

SELECT p.title FROM playlists p
JOIN playlists_songs ps ON p.playlist_id = ps.playlist_id
JOIN songs s ON s.song_id = ps.song_id
JOIN albums_artists aa ON aa.album_id = s.album_id
JOIN artists a ON a.artist_id = aa.artist_id
WHERE a.name = 'BEARDED LEGEND';