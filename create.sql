psql -U postgres
create database music;
create user music with password '12345';
alter database music owner to music;
exit;
psql -U music -d music 

CREATE TABLE genres (
id_genre serial primary key,
 genre varchar(100) not null);

CREATE TABLE ARTISTS (
ARTIST_ID serial primary key,
 artist_name varchar(100) not null,
 );

CREATE TABLE genre-artist (
 id_genre integer references genres(id_genre),
 ARTIST_ID integer references ARTISTS(ARTIST_ID), 
 constraint AG primary key(id_genre, ARTIST_ID));

CREATE TABLE albums (
album_id serial primary key,
 album_name varchar(100) not null,
 year integer);

CREATE TABLE artist-album (
 album_id integer references albums(album_id),
 ARTIST_ID integer references ARTISTS(ARTIST_ID), 
 constraint AA primary key(album_id, ARTIST_ID));

CREATE TABLE Collection (id_collection serial primary key, collection_name varchar(100) not null, year integer)

CREATE TABLE tracks (id_track serial primary key,
 album_id integer references albums(album_id),
 track_name varchar(100),
 track_length integer
 );

CREATE TABLE Collection-tracks (
 id_collection integer references Collection(id_collection),
 id_track integer references tracks(id_track), 
 constraint CT primary key(id_collection, id_track));