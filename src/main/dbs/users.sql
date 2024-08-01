DELIMITER //

CREATE PROCEDURE AddAccount(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(255),
    IN p_role_name VARCHAR(50)
)
BEGIN
    DECLARE v_role_id INT;
    DECLARE v_role_count INT;
    
    SELECT role_id INTO v_role_id
    FROM Roles
    WHERE role_name = p_role_name;
    
    SELECT COUNT(*) INTO v_role_count
    FROM Users
    WHERE username = p_username;
    
    IF v_role_count = 0 THEN
        INSERT INTO Users (username, password)
        VALUES (p_username, p_password);
        
        INSERT INTO UserRoles (username, role_id)
        VALUES (p_username, v_role_id);
    ELSE
        SELECT 'Tài khoản đã tồn tại' AS Error;
    END IF;
END //

CREATE PROCEDURE UpdateAccount(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(255)
)
BEGIN
    UPDATE Users
    SET password = p_password
    WHERE username = p_username;
END //

CREATE PROCEDURE DeleteAccount(
    IN p_username VARCHAR(50)
)
BEGIN
    DELETE FROM UserRoles
    WHERE username = p_username;
    
    DELETE FROM Users
    WHERE username = p_username;
END //

CREATE PROCEDURE AssignRole(
    IN p_username VARCHAR(50),
    IN p_role_name VARCHAR(50)
)
BEGIN
    DECLARE v_role_id INT;
    
    SELECT role_id INTO v_role_id
    FROM Roles
    WHERE role_name = p_role_name;
    
    INSERT IGNORE INTO UserRoles (username, role_id)
    VALUES (p_username, v_role_id);
END //

CREATE PROCEDURE UpdateAccountRole(
    IN p_username VARCHAR(50),
    IN p_new_role_name VARCHAR(50)
)
BEGIN
    DECLARE v_new_role_id INT;
    
    -- Lấy role_id dựa trên role_name mới
    SELECT role_id INTO v_new_role_id
    FROM Roles
    WHERE role_name = p_new_role_name;
    
    -- Xóa vai trò cũ của tài khoản
    DELETE FROM UserRoles
    WHERE username = p_username;
    
    -- Cấp vai trò mới cho tài khoản
    INSERT INTO UserRoles (username, role_id)
    VALUES (p_username, v_new_role_id);
END //

DELIMITER ;




