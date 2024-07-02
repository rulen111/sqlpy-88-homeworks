# Exercise 4
SELECT a.title FROM albums a
JOIN albums_artists aa ON a.album_id = aa.album_id
JOIN genres_artists ga ON aa.artist_id = ga.artist_id
