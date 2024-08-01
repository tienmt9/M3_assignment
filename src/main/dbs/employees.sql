DELIMITER //

CREATE PROCEDURE AddEmployee(
    IN p_cccd VARCHAR(20),
    IN p_phone_number VARCHAR(15),
    IN p_full_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(255)
)
BEGIN
    INSERT INTO Employees (cccd, phone_number, full_name, email)
    VALUES (p_cccd, p_phone_number, p_full_name, p_email);
    
    INSERT INTO Users (username, password)
    VALUES (p_username, p_password);
    
    INSERT INTO UserRoles (username, role_id)
    VALUES (p_username, (SELECT role_id FROM Roles WHERE role_name = 'ROLE_EMPLOYEE'));
END //

CREATE PROCEDURE UpdateEmployee(
    IN p_cccd VARCHAR(20),
    IN p_phone_number VARCHAR(15),
    IN p_full_name VARCHAR(100),
    IN p_email VARCHAR(100)
)
BEGIN
    UPDATE Employees
    SET phone_number = p_phone_number,
        full_name = p_full_name,
        email = p_email
    WHERE cccd = p_cccd;
END //

CREATE PROCEDURE PromoteEmployee(
    IN p_cccd VARCHAR(20)
)
BEGIN
    DECLARE v_username VARCHAR(50);

    SELECT username INTO v_username
    FROM Employees
    WHERE cccd = p_cccd;

    IF v_username IS NOT NULL THEN
        INSERT IGNORE INTO UserRoles (username, role_id)
        VALUES (v_username, (SELECT role_id FROM Roles WHERE role_name = 'ROLE_MANAGER'));
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nhân viên không tồn tại';
    END IF;
END //

CREATE PROCEDURE DeleteEmployee(
    IN p_cccd VARCHAR(20)
)
BEGIN
    DECLARE v_username VARCHAR(50);

    SELECT username INTO v_username
    FROM Employees
    WHERE cccd = p_cccd;

    DELETE FROM Employees
    WHERE cccd = p_cccd;

    DELETE FROM Users
    WHERE username = v_username;

    DELETE FROM UserRoles
    WHERE username = v_username;
END //

DELIMITER ;



