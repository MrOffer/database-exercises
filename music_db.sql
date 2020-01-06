CREATE DATABASE IF NOT EXISTS music_db;
 use music_db;

CREATE TABLE IF not exists songs (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    song_title VARCHAR(100),
    artist VARCHAR(100) NOT NULL,
    length FLOAT,
    genre varchar(25),
    release_date int (25),
    PRIMARY KEY (id)
);