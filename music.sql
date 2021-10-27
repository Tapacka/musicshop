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
 id_genre integer not null references genres(id_genre));

CREATE TABLE albums (
album_id serial primary key,
 album_name varchar(100) not null,
 artist_id integer not null references artists(artist_id), 
year integer);

CREATE TABLE Collection (id_collection serial primary key, collection_name varchar(100) not null, year integer)

CREATE TABLE tracks (id_track serial primary key,
 album_id integer not null references albums(album_id), track_name varchar(100),
 track_length varchar(40),
id_collection integer references Collection(id_collection) not null
 );