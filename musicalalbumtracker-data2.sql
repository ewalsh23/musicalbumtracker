--Artists

INSERT INTO Artists (id, name, genre, debut_time) 
VALUES (1, 'The Beatles', 'Rock', TO_DATE('1960-01-01', 'YYYY-MM-DD'));

INSERT INTO Artists (id, name, genre, debut_time) 
VALUES (2, 'Taylor Swift', 'Pop', TO_DATE('2006-10-24', 'YYYY-MM-DD'));

INSERT INTO Artists (id, name, genre, debut_time) 
VALUES (3, 'Zach Bryan', 'Country', TO_DATE('2010-08-24', 'YYYY-MM-DD'));

INSERT INTO Artists (id, name, genre, debut_time) 
VALUES (4, 'The Smashing Pumpkins', 'Alternative', TO_DATE('1991-05-28', 'YYYY-MM-DD'));

INSERT INTO Artists (id, name, genre, debut_time) 
VALUES (5, 'Bob Dylan', 'Folk', TO_DATE('1962-03-19', 'YYYY-MM-DD'));

INSERT INTO Artists (id, name, genre, debut_time) 
VALUES (6, 'Louis Armstrong', 'Jazz', TO_DATE('1946-04-24', 'YYYY-MM-DD'));

INSERT INTO Artists (id, name, genre, debut_time) 
VALUES (7, 'Drake', 'Hip-Hip', TO_DATE('2010-06-15', 'YYYY-MM-DD'));

INSERT INTO Artists (id, name, genre, debut_time) 
VALUES (8, 'Metallica', 'Metal', TO_DATE('1982-03-14', 'YYYY-MM-DD'));

INSERT INTO Artists (id, name, genre, debut_time) 
VALUES (9, 'Aaliyah', 'R&B', TO_DATE('1994-05-24', 'YYYY-MM-DD'));

--Albums

INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) 
VALUES (1, 1, 'Abbey Road', TO_DATE('1969-09-26', 'YYYY-MM-DD'), 17);

INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) 
VALUES (2, 2, 'folklore', TO_DATE('2020-07-24', 'YYYY-MM-DD'), 16);

INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) 
VALUES (3, 3, 'American Heartbreak', TO_DATE('2022-05-20', 'YYYY-MM-DD'), 34);

INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) 
VALUES (4, 4, 'Siamese Dream', TO_DATE('1993-07-27', 'YYYY-MM-DD'), 13);

INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) 
VALUES (5, 5, 'The Freewheelin’ Bob Dylan', TO_DATE('1963-05-27', 'YYYY-MM-DD'), 13);

INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) 
VALUES (6, 6, 'Louis Armstrong Plays W.C. Handy', TO_DATE('1954-10-18', 'YYYY-MM-DD'), 11);

INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) 
VALUES (7, 7, 'Take Care', TO_DATE('2011-11-15', 'YYYY-MM-DD'), 18);

INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) 
VALUES (8, 8, 'Master of Puppets', TO_DATE('1986-03-03', 'YYYY-MM-DD'), 8);

INSERT INTO Albums (id, artist_id, album_name, release_date, total_tracks) 
VALUES (9, 9, 'One in a Million', TO_DATE('1996-08-27', 'YYYY-MM-DD'), 17);

--Tracks

INSERT INTO Tracks (id, album_id, track_name, duration) 
VALUES (1, 1, 'Come Together', INTERVAL '4:30' MINUTE TO SECOND);

INSERT INTO Tracks (id, album_id, track_name, duration) 
VALUES (2, 2, 'cardigan', INTERVAL '4:00' MINUTE TO SECOND);

INSERT INTO Tracks (id, album_id, track_name, duration) 
VALUES (3, 3, 'Something in the Orange', INTERVAL '3:48' MINUTE TO SECOND);

INSERT INTO Tracks (id, album_id, track_name, duration) 
VALUES (4, 4, 'Today', INTERVAL '3:21' MINUTE TO SECOND);

INSERT INTO Tracks (id, album_id, track_name, duration) 
VALUES (5, 5, 'Blowin’ in the Wind', INTERVAL '2:48' MINUTE TO SECOND);

INSERT INTO Tracks (id, album_id, track_name, duration) 
VALUES (6, 6, 'St. Louis Blues', INTERVAL '5:05' MINUTE TO SECOND);

INSERT INTO Tracks (id, album_id, track_name, duration) 
VALUES (7, 7, 'Marvins Room', INTERVAL '5:47' MINUTE TO SECOND);

INSERT INTO Tracks (id, album_id, track_name, duration) 
VALUES (8, 8, 'Battery', INTERVAL '5:12' MINUTE TO SECOND);

INSERT INTO Tracks (id, album_id, track_name, duration) 
VALUES (9, 9, 'If Your Girl Only Knew', INTERVAL '4:52' MINUTE TO SECOND);


--UserRatings

INSERT INTO UserRatings (id, user_id, album_id, rating, review) 
VALUES (1, 201, 1, 5, 'A classic!');

INSERT INTO UserRatings (id, user_id, album_id, rating, review) 
VALUES (2, 202, 2, 4, 'I love this album.');

INSERT INTO UserRatings (id, user_id, album_id, rating, review) 
VALUES (3, 203, 3, 5, 'He nailed it.');

INSERT INTO UserRatings (id, user_id, album_id, rating, review) 
VALUES (4, 204, 4, 4, 'An alt rock classic.');

INSERT INTO UserRatings (id, user_id, album_id, rating, review) 
VALUES (5, 205, 5, 5, 'Timeless folk music.');

INSERT INTO UserRatings (id, user_id, album_id, rating, review) 
VALUES (6, 206, 6, 3, 'Not really into jazz, liked it enough.');

INSERT INTO UserRatings (id, user_id, album_id, rating, review) 
VALUES (7, 207, 7, 2, 'It was okay.');

INSERT INTO UserRatings (id, user_id, album_id, rating, review) 
VALUES (8, 208, 8, 1, 'Metal isnt my thing.');

INSERT INTO UserRatings (id, user_id, album_id, rating, review) 
VALUES (9, 209, 9, 5, 'Love her!');
