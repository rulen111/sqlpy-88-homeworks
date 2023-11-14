# Exercise 1
INSERT INTO artists VALUES
(1, 'BEARDED LEGEND'),
(2, 'Carpenter Brut'),
(3, 'Joji'),
(4, 'ZillaKami');

INSERT INTO genres VALUES
(1, 'Rap and Hip-Hop'),
(2, 'EDM'),
(3, 'Alternative'),
(4, 'Rock');

INSERT INTO albums VALUES
(1, 'I''m Alright', DATE '2019-01-01'),
(2, 'EP I', DATE '2012-01-01'),
(3, 'Nectar', DATE '2020-01-01'),
(4, 'DOG BOY', DATE '2021-01-01');

INSERT INTO playlists VALUES
(1, 'Best phonk', DATE '2023-01-01'),
(2, 'Hotline Miami Collection', DATE '2019-01-01'),
(3, '2020''s', DATE '2020-01-01'),
(4, 'Fusion', DATE '2022-01-01');

INSERT INTO songs VALUES
(1, 'Stress', 135, 1),
(2, 'My Hope', 194, 1),
(3, 'Le perv', 255, 2),
(4, 'Escape From Midwich Valley', 403, 2),
(5, 'Pretty Boy', 156, 3),
(6, 'Afterthought', 194, 3),
(7, 'Bleach', 150, 4),
(8, 'Black Cats', 99, 4);

INSERT INTO genres_artists VALUES
(1, 1),
(1, 4),
(2, 2),
(3, 3),
(3, 4),
(4, 4);

INSERT INTO albums_artists VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO playlists_songs VALUES
(1, 1),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(4, 7);

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

# Exercise 4
