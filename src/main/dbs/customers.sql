DELIMITER //

CREATE PROCEDURE AddCustomer(
    IN p_phone_number VARCHAR(15),
    IN p_full_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_username VARCHAR(50)
)
BEGIN
    INSERT INTO Customers (phone_number, full_name, email, username)
    VALUES (p_phone_number, p_full_name, p_email, p_username);
    
    INSERT INTO UserRoles (username, role_id)
    VALUES (p_username, (SELECT role_id FROM Roles WHERE role_name = 'ROLE_USER'));
END //

CREATE PROCEDURE UpdateCustomer(
    IN p_phone_number VARCHAR(15),
    IN p_full_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_username VARCHAR(50)
)
BEGIN
    UPDATE Customers
    SET full_name = p_full_name,
        email = p_email,
        username = p_username
    WHERE phone_number = p_phone_number;
END //

CREATE PROCEDURE DeleteCustomer(
    IN p_phone_number VARCHAR(15)
)
BEGIN
    DELETE FROM Customers
    WHERE phone_number = p_phone_number;
    
    -- Xóa thông tin tài khoản và vai trò của khách hàng
    DELETE FROM Users
    WHERE username = (SELECT username FROM Customers WHERE phone_number = p_phone_number);
    
    DELETE FROM UserRoles
    WHERE username = (SELECT username FROM Customers WHERE phone_number = p_phone_number);
END //

DELIMITER ;


