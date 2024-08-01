DELIMITER //

CREATE PROCEDURE AddTicket(
    IN p_showtime_id INT,
    IN p_price DECIMAL(10, 2),
    IN p_ticket_type VARCHAR(50),
    IN p_seat_number VARCHAR(10),
    IN p_start_time DATETIME,
    IN p_status ENUM('Đã thanh toán', 'Đã đặt', 'Đã kết thúc')
)
BEGIN
    INSERT INTO Tickets (showtime_id, price, ticket_type, seat_number, start_time, status)
    VALUES (p_showtime_id, p_price, p_ticket_type, p_seat_number, p_start_time, p_status);
END //

CREATE PROCEDURE UpdateTicket(
    IN p_ticket_id INT,
    IN p_price DECIMAL(10, 2),
    IN p_ticket_type VARCHAR(50),
    IN p_seat_number VARCHAR(10),
    IN p_start_time DATETIME,
    IN p_status ENUM('Đã thanh toán', 'Đã đặt', 'Đã kết thúc')
)
BEGIN
    UPDATE Tickets
    SET price = p_price,
        ticket_type = p_ticket_type,
        seat_number = p_seat_number,
        start_time = p_start_time,
        status = p_status
    WHERE ticket_id = p_ticket_id;
END //

CREATE PROCEDURE DeleteTicket(
    IN p_ticket_id INT
)
BEGIN
    DELETE FROM Tickets
    WHERE ticket_id = p_ticket_id;
END //

CREATE PROCEDURE GetTicket(
    IN p_ticket_id INT
)
BEGIN
    SELECT * FROM Tickets
    WHERE ticket_id = p_ticket_id;
END //

CREATE PROCEDURE TrackTicketStatus(
    IN p_showtime_id INT
)
BEGIN
    SELECT
        status,
        COUNT(*) AS count
    FROM Tickets
    WHERE showtime_id = p_showtime_id
    GROUP BY status;
END //

DELIMITER ;




