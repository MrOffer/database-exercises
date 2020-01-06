# spotify db design

# songs - id, title, duration, artists_id;
#
# artists - id, name, description;
#
# artist_details - id, history, country of origin, date of debut;
#
# albums - id, name, albums_sold, release_date, artist_id;
#
# album_song - song_id, album_id;
#
# genre - id, title, descriptiom;
#
# album_genre - album_id, genre_id;
#
# Users - id, username, email, password;
#
# playlists - id, name, user_id (fk);
#
# playlist_song - playlist_id, song_id; album_id;