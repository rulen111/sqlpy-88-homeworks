CREATE TABLE IF NOT exists genres (
	genre_id serial primary key,
	name varchar(40) not null
);

CREATE TABLE IF NOT exists artists (
	artist_id serial primary key,
	name varchar(40) not null
);

CREATE TABLE IF NOT exists genres_artists (
	genre_id integer references genres(genre_id),
	artist_id integer references artists(artist_id),
	constraint ga_pk primary key (genre_id, artist_id)
);

CREATE TABLE IF NOT exists albums (
	album_id serial primary key,
	title varchar(40) not null,
	year date not null
);

CREATE TABLE IF NOT exists albums_artists (
	album_id integer references albums(album_id),
	artist_id integer references artists(artist_id),
	constraint aa_pk primary key (album_id, artist_id)
);

CREATE TABLE IF NOT exists songs (
	song_id serial primary key,
	title varchar(40) not null,
	duration numeric(3,2) check(duration > 0),
	album_id integer references albums(album_id)
);

CREATE TABLE IF NOT exists playlists (
	playlist_id serial primary key,
	title varchar(40) not null,
	year date not null
);

CREATE TABLE IF NOT exists playlists_songs (
	playlist_id integer references playlists(playlist_id),
	song_id integer references songs(song_id),
	constraint ps_pk primary key (playlist_id, song_id)
);