CREATE TABLE Artists (
    id INTEGER PRIMARY KEY,
    name VARCHAR2(255) UNIQUE NOT NULL,
    genre VARCHAR2(100) NOT NULL,
    debut_time DATE NOT NULL
);

CREATE TABLE Albums (
    id INTEGER PRIMARY KEY,
    artist_id INTEGER NOT NULL,
    album_name VARCHAR2(255) NOT NULL,
    release_date DATE NOT NULL,  
    total_tracks INTEGER NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artists(id)
);

CREATE TABLE Tracks (
    id INTEGER PRIMARY KEY,
    album_id INTEGER NOT NULL,
    track_name VARCHAR2(255) NOT NULL,
    duration INTERVAL DAY TO SECOND NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);

CREATE TABLE UserRatings (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    album_id INTEGER NOT NULL,
    rating INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),
    review VARCHAR2(4000),
    UNIQUE (user_id, album_id),
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);


SELECT * FROM Artists;
SELECT * FROM Albums;
SELECT * FROM Tracks;
SELECT * FROM UserRatings;

SELECT album_name, release_date FROM Albums;
SELECT track_name, duration FROM Tracks;
SELECT user_id, album_id, rating, review FROM UserRatings;

SELECT a.album_name, ar.name AS artist_name
FROM Albums a
JOIN Artists ar ON a.artist_id = ar.id;

SELECT t.track_name, al.album_name, ar.name AS artist_name
FROM Tracks t
JOIN Albums al ON t.album_id = al.id
JOIN Artists ar ON al.artist_id = ar.id;

SELECT album_id, AVG(rating) AS average_rating
FROM UserRatings
GROUP BY album_id;

UPDATE UserRatings
SET review = 'Still one of my favorites!'
WHERE id = 1;

INSERT INTO UserRatings (id, user_id, album_id, rating, review)
VALUES (10, 210, 3, 5, 'Fantastic album!');

DELETE FROM UserRatings
WHERE id = 10;

SELECT * FROM Albums
WHERE release_date > TO_DATE('2000-01-01', 'YYYY-MM-DD');

SELECT * FROM Tracks
WHERE duration > INTERVAL '4' MINUTE;

SELECT * FROM UserRatings
WHERE rating = 5
ORDER BY id;
