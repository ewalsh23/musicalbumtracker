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
