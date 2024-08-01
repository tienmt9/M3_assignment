use rap_chieu_phim;

CREATE TABLE Users (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    cccd VARCHAR(20) PRIMARY KEY,
    phone_number VARCHAR(15) NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    username VARCHAR(50) UNIQUE,
    FOREIGN KEY (username) REFERENCES Users(username)
);

CREATE TABLE Customers (
    phone_number VARCHAR(15) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    username VARCHAR(50) UNIQUE,
    FOREIGN KEY (username) REFERENCES Users(username)
);

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    duration INT NOT NULL,
    image_url VARCHAR(255),
    trailer_url VARCHAR(255),
    description TEXT
);

CREATE TABLE ScreeningRooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_name VARCHAR(50) NOT NULL,
    seats INT NOT NULL
);

CREATE TABLE Theaters (
    theater_id INT PRIMARY KEY AUTO_INCREMENT,
    theater_name VARCHAR(100) NOT NULL,
    number_of_rooms INT NOT NULL
);

CREATE TABLE Showtimes (
    showtime_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    duration INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    theater_id INT,
    room_id INT,
    seats INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (theater_id) REFERENCES Theaters(theater_id),
    FOREIGN KEY (room_id) REFERENCES ScreeningRooms(room_id)
);

CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    showtime_id INT,
    price DECIMAL(10, 2) NOT NULL,
    ticket_type VARCHAR(50),
    seat_number VARCHAR(10),
    start_time DATETIME NOT NULL,
    status ENUM('Đã thanh toán', 'Đã đặt', 'Đã kết thúc') NOT NULL,
    FOREIGN KEY (showtime_id) REFERENCES Showtimes(showtime_id)
);

CREATE TABLE Promotions (
    promo_id INT PRIMARY KEY AUTO_INCREMENT,
    promo_name VARCHAR(100) NOT NULL,
    promo_description TEXT,
    discount_amount DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Roles (
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE UserRoles (
    username VARCHAR(50),
    role_id INT,
    PRIMARY KEY (username, role_id),
    FOREIGN KEY (username) REFERENCES Users(username),
    FOREIGN KEY (role_id) REFERENCES Roles(role_id)
);