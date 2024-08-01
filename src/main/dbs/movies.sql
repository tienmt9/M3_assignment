DELIMITER //

CREATE PROCEDURE AddMovie(
    IN p_title VARCHAR(100),
    IN p_genre VARCHAR(50),
    IN p_duration INT,
    IN p_image_url VARCHAR(255),
    IN p_trailer_url VARCHAR(255),
    IN p_description TEXT
)
BEGIN
    INSERT INTO Movies (title, genre, duration, image_url, trailer_url, description)
    VALUES (p_title, p_genre, p_duration, p_image_url, p_trailer_url, p_description);
END //

CREATE PROCEDURE UpdateMovie(
    IN p_movie_id INT,
    IN p_title VARCHAR(100),
    IN p_genre VARCHAR(50),
    IN p_duration INT,
    IN p_image_url VARCHAR(255),
    IN p_trailer_url VARCHAR(255),
    IN p_description TEXT
)
BEGIN
    UPDATE Movies
    SET title = p_title,
        genre = p_genre,
        duration = p_duration,
        image_url = p_image_url,
        trailer_url = p_trailer_url,
        description = p_description
    WHERE movie_id = p_movie_id;
END //

CREATE PROCEDURE DeleteMovie(
    IN p_movie_id INT
)
BEGIN
    DELETE FROM Movies
    WHERE movie_id = p_movie_id;
END //

CREATE PROCEDURE GetUpcomingMovies()
BEGIN
    SELECT m.movie_id, m.title, m.genre, m.duration, m.image_url, m.trailer_url, m.description
    FROM Movies m
    JOIN Showtimes s ON m.movie_id = s.movie_id
    WHERE s.start_time > NOW()
    GROUP BY m.movie_id
    ORDER BY MIN(s.start_time);
END //

CREATE PROCEDURE GetMovieInfo(
    IN p_movie_id INT
)
BEGIN
    SELECT * FROM Movies
    WHERE movie_id = p_movie_id;
END //

DELIMITER ;



