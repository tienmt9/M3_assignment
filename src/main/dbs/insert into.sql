INSERT INTO Roles (role_name) VALUES ('ROLE_ADMIN');
INSERT INTO Roles (role_name) VALUES ('ROLE_MANAGER');
INSERT INTO Roles (role_name) VALUES ('ROLE_EMPLOYEE');
INSERT INTO Roles (role_name) VALUES ('ROLE_CUSTOMER');
INSERT INTO Roles (role_name) VALUES ('ROLE_USER');

INSERT INTO Tickets (showtime_id, price, ticket_type, seat_number, start_time, status)
VALUES
(1, 150000.00, 'VIP', 'A1', '2024-07-27 19:00:00', 'Đã thanh toán'),
(1, 120000.00, 'Regular', 'A2', '2024-07-27 19:00:00', 'Đã thanh toán'),
(2, 100000.00, 'Standard', 'B1', '2024-07-28 20:00:00', 'Đã đặt'),
(2, 130000.00, 'VIP', 'B2', '2024-07-28 20:00:00', 'Đã thanh toán'),
(3, 140000.00, 'Regular', 'C1', '2024-07-29 18:30:00', 'Đã thanh toán'),
(3, 110000.00, 'Standard', 'C2', '2024-07-29 18:30:00', 'Đã đặt'),
(4, 160000.00, 'VIP', 'D1', '2024-07-30 21:00:00', 'Đã thanh toán'),
(4, 125000.00, 'Regular', 'D2', '2024-07-30 21:00:00', 'Đã kết thúc'),
(5, 115000.00, 'Standard', 'E1', '2024-07-31 17:45:00', 'Đã thanh toán'),
(5, 105000.00, 'Regular', 'E2', '2024-07-31 17:45:00', 'Đã đặt');

INSERT INTO Showtimes (movie_id, duration, start_time, end_time, theater_id, room_id, seats)
VALUES
(1, 120, '2024-07-27 19:00:00', '2024-07-27 21:00:00', 1, 1, 100),
(1, 120, '2024-07-27 21:30:00', '2024-07-27 23:30:00', 1, 2, 100),
(2, 140, '2024-07-28 20:00:00', '2024-07-28 22:20:00', 2, 1, 150),
(2, 140, '2024-07-28 22:45:00', '2024-07-29 01:05:00', 2, 2, 150),
(3, 110, '2024-07-29 18:30:00', '2024-07-29 20:20:00', 3, 1, 120),
(3, 110, '2024-07-29 20:45:00', '2024-07-29 22:35:00', 3, 2, 120),
(4, 135, '2024-07-30 19:00:00', '2024-07-30 21:15:00', 4, 1, 180),
(4, 135, '2024-07-30 21:45:00', '2024-07-30 23:00:00', 4, 2, 180),
(5, 125, '2024-07-31 17:45:00', '2024-07-31 19:50:00', 5, 1, 90),
(5, 125, '2024-07-31 20:15:00', '2024-07-31 22:20:00', 5, 2, 90);

INSERT INTO Movies (title, genre, duration, image_url, trailer_url, description)
VALUES
('The Grand Adventure', 'Action', 140, 'https://example.com/images/grand_adventure.jpg', 'https://example.com/trailers/grand_adventure.mp4', 'An epic action movie featuring a grand adventure across the world.'),
('Love in the City', 'Romance', 110, 'https://example.com/images/love_in_the_city.jpg', 'https://example.com/trailers/love_in_the_city.mp4', 'A heartwarming romance set in the bustling city, exploring love and relationships.'),
('Mystery of the Old House', 'Mystery', 120, 'https://example.com/images/mystery_of_old_house.jpg', 'https://example.com/trailers/mystery_of_old_house.mp4', 'A thrilling mystery about a detective solving a crime in an old, mysterious house.'),
('Space Odyssey', 'Sci-Fi', 150, 'https://example.com/images/space_odyssey.jpg', 'https://example.com/trailers/space_odyssey.mp4', 'A sci-fi epic about an intergalactic journey to uncover the secrets of the universe.'),
('The Comedic Duo', 'Comedy', 95, 'https://example.com/images/comedic_duo.jpg', 'https://example.com/trailers/comedic_duo.mp4', 'A hilarious comedy following two best friends who get into wacky situations.'),
('The Heroic Tale', 'Drama', 130, 'https://example.com/images/heroic_tale.jpg', 'https://example.com/trailers/heroic_tale.mp4', 'A dramatic story about a hero overcoming personal and external challenges.'),
('Haunted Forest', 'Horror', 105, 'https://example.com/images/haunted_forest.jpg', 'https://example.com/trailers/haunted_forest.mp4', 'A chilling horror film about a group of friends who encounter supernatural forces in a haunted forest.'),
('The Cooking Show', 'Documentary', 85, 'https://example.com/images/cooking_show.jpg', 'https://example.com/trailers/cooking_show.mp4', 'A fascinating documentary exploring the art of cooking and the stories behind famous chefs.'),
('Fantasy World', 'Fantasy', 145, 'https://example.com/images/fantasy_world.jpg', 'https://example.com/trailers/fantasy_world.mp4', 'An enchanting fantasy film set in a magical world with mythical creatures and epic battles.'),
('The Detective', 'Thriller', 125, 'https://example.com/images/detective.jpg', 'https://example.com/trailers/detective.mp4', 'A suspenseful thriller about a private detective unraveling a complex web of deception.');

INSERT INTO Theaters (theater_name, number_of_rooms)
VALUES
('Cinema Lux', 5),
('Grandview Theater', 8),
('Starplex Cinemas', 6),
('Royal Cinemas', 4),
('Metroplex Theater', 7),
('Galaxy Theater', 10),
('CineWorld', 3),
('Platinum Cinema', 5),
('Cinemagic', 6),
('Epic Theater', 9);

INSERT INTO ScreeningRooms (room_name, seats)
VALUES
('Room 1', 100),
('Room 2', 150),
('Room 3', 120),
('Room 4', 80),
('Room 5', 200),
('Room 6', 90),
('Room 7', 110),
('Room 8', 140),
('Room 9', 130),
('Room 10', 160);

INSERT INTO UserRoles (username, role_id)
VALUES
('john_doe', 1),
('jane_smith', 2),
('michael_jones', 3),
('emily_davis', 4),
('sarah_lee', 5),
('alex_brown', 3),
('chris_white', 2),
('lisa_green', 4),
('tom_wilson', 5),
('natalie_clark', 3);

INSERT INTO Users (username, password)
VALUES
('john_doe', 'password123'),
('jane_smith', 'securePass456'),
('michael_jones', 'michael789'),
('emily_davis', 'emily2024'),
('sarah_lee', 'sarah@123'),
('alex_brown', 'alex987'),
('chris_white', 'chris!2024'),
('lisa_green', 'lisa2024pass'),
('tom_wilson', 'tomw1234'),
('natalie_clark', 'nat!2024pass');

INSERT INTO Promotions (promo_name, promo_description, discount_amount)
VALUES
('Summer Sale', 'Giảm giá mùa hè đặc biệt lên đến 30% cho tất cả các vé.', 30.00),
('Weekend Deal', 'Giảm 20% cho tất cả các vé vào cuối tuần.', 20.00),
('New Release Offer', 'Giảm giá 15% cho tất cả các phim mới ra mắt.', 15.00),
('Holiday Special', 'Giảm giá 25% cho tất cả các vé trong dịp lễ.', 25.00),
('Buy One Get One', 'Mua một vé, tặng một vé miễn phí cho phim cùng suất chiếu.', 50.00),
('Student Discount', 'Giảm giá 10% cho sinh viên với thẻ sinh viên hợp lệ.', 10.00),
('VIP Package', 'Giảm giá 40% cho gói VIP bao gồm vé và đồ ăn nhẹ.', 40.00),
('Early Bird', 'Giảm 10% cho những vé đặt trước ít nhất 7 ngày.', 10.00),
('Family Pack', 'Mua 4 vé, giảm giá 20% cho tổng giá vé.', 20.00),
('Loyalty Reward', 'Giảm giá 15% cho khách hàng thân thiết sau 10 lần đặt vé.', 15.00);

INSERT INTO Employees (cccd, phone_number, name, email, username)
VALUES
('CCCD123456', '0987654321', 'Nguyễn Văn A', 'nguyenvana@example.com', 'alex_brown'),
('CCCD234567', '0976543210', 'Trần Thị B', 'tranthib@example.com', 'chris_white'),
('CCCD345678', '0965432109', 'Lê Văn C', 'levanc@example.com', 'emily_davis'),
('CCCD456789', '0954321098', 'Phạm Thị D', 'phamthid@example.com', 'jane_smith'),
('CCCD567890', '0943210987', 'Hoàng Văn E', 'hoangvane@example.com', 'john_doe');

INSERT INTO Customers (phone_number, full_name, email, username)
VALUES
('0912345678', 'Nguyễn Thị Hoa', 'nguyenhoa@example.com', 'lisa_green'),
('0923456789', 'Trần Văn Bình', 'tranbinh@example.com', 'michael_jones'),
('0934567890', 'Lê Thị Mai', 'lemai@example.com', 'natalie_clark'),
('0945678901', 'Phạm Văn Tuấn', 'phamtuant@example.com', 'sarah_lee'),
('0956789012', 'Hoàng Thị Lan', 'hoanglan@example.com', 'tom_wilson');



