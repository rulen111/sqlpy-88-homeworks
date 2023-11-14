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