INSERT INTO Artists (id, name, genre, debut_time) VALUES (1, 'The Beatles', 'Rock', TO_DATE('1960-01-01', 'YYYY-MM-DD'));
INSERT INTO Artists (id, name, genre, debut_time) VALUES (2, 'Taylor Swift', 'Pop', TO_DATE('2006-10-24', 'YYYY-MM-DD'));

INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) VALUES (1, 1, 'Abbey Road', TO_DATE('1969-09-26', 'YYYY-MM-DD'), 17);
INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) VALUES (2, 2, '1989', TO_DATE('2020-07-27', 'YYYY-MM-DD'), 13);

INSERT INTO Tracks (id, album_id, track_name, duration) VALUES (1, 1, 'Come Together', INTERVAL '4' MINUTE);
INSERT INTO Tracks (id, album_id, track_name, duration) VALUES (2, 2, 'cardigan', INTERVAL '3' MINUTE);

INSERT INTO UserRatings (id, user_id, album_id, rating, review) VALUES (1, 101, 1, 5, 'Classic!');
INSERT INTO UserRatings (id, user_id, album_id, rating, review) VALUES (2, 102, 2, 4, 'I love this song!');
