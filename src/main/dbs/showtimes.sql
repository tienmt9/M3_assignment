use rap_chieu_phim;

DELIMITER //

CREATE PROCEDURE AddShowtime(
    IN p_movie_id INT,
    IN p_duration INT,
    IN p_start_time DATETIME,
    IN p_end_time DATETIME,
    IN p_theater_id INT,
    IN p_room_id INT,
    IN p_seats INT
)
BEGIN
    INSERT INTO Showtimes (movie_id, duration, start_time, end_time, theater_id, room_id, seats)
    VALUES (p_movie_id, p_duration, p_start_time, p_end_time, p_theater_id, p_room_id, p_seats);
END //

CREATE PROCEDURE UpdateShowtime(
    IN p_showtime_id INT,
    IN p_movie_id INT,
    IN p_duration INT,
    IN p_start_time DATETIME,
    IN p_end_time DATETIME,
    IN p_theater_id INT,
    IN p_room_id INT,
    IN p_seats INT
)
BEGIN
    UPDATE Showtimes
    SET movie_id = p_movie_id,
        duration = p_duration,
        start_time = p_start_time,
        end_time = p_end_time,
        theater_id = p_theater_id,
        room_id = p_room_id,
        seats = p_seats
    WHERE showtime_id = p_showtime_id;
END //

CREATE PROCEDURE DeleteShowtime(
    IN p_showtime_id INT
)
BEGIN
    DELETE FROM Showtimes
    WHERE showtime_id = p_showtime_id;
END //

CREATE PROCEDURE GetShowtime(
    IN p_showtime_id INT
)
BEGIN
    SELECT * FROM Showtimes
    WHERE showtime_id = p_showtime_id;
END //

DELIMITER ;

