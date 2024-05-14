-- Chèn dữ liệu cho bảng Band
INSERT INTO Band (band_name, description, image_url, website_url)
VALUES ('Ngọt', 'Nhóm nhạc pop rock nổi tiếng của Việt Nam', 'ngot_band_image.jpg', 'https://www.ngotband.vn');

-- Chèn dữ liệu cho bảng Member
INSERT INTO Member (band_id, member_name, instrument, bio)
VALUES (1, 'Vũ Đinh Trọng Thắng', 'Hát, Guitar đệm', 'Thắng là ca sĩ chính của nhóm và cũng là người sáng tác nhạc.'),
       (1, 'Phan Việt Hoàng', 'Guitar bass', 'Hoàng chơi guitar và cũng là thành viên sáng tác âm nhạc.'),
       (1, 'Nguyễn Hùng Nam Anh', 'Trống', 'Nam Anh chơi guitar và cũng là thành viên sáng tác âm nhạc.'),
       (1, 'Hoàng Chí Trung', 'Keyboard', 'Trung đảm nhận vai trò bass trong nhóm và cũng làm phụ trách sản xuất âm nhạc.');

-- Chèn dữ liệu cho bảng Album 
INSERT INTO Album (band_id, album_title, release_date, cover_image_url)
VALUES (1, 'Mơ', '2017-08-04', 'mo_album_image.jpg'),
       (1, 'Về Lại', '2019-04-05', 've_lai_album_image.jpg'),
       (1, '3107', '2020-12-18', '3107_album_image.jpg'),
       (1, 'Âm Nhạc Giữa Chúng Ta', '2023-07-07', 'am_nhac_giua_chung_ta_album_image.jpg');

-- Chèn dữ liệu cho bảng Song 
INSERT INTO Songs (track, song_name, author, duration, production_year, album_id, format) 
VALUES (11, '(bé)', 'Ngọt', '4.36', '2019', 1, 'Album'),
       (6, '(sau đây là) DỰ BÁO THỜI TIẾT (cho các vùng vào ngày mai)', 'Ngọt', '3.18', '2019', 2, 'Album'),
       (10, '(tôi) ĐI TRÚ ĐÔNG', 'Ngọt', '4.05', '2019', 3, 'Album'),
       (1, '01 Chuyện Dở Dang', 'Ngọt', '3.31', '2024', 2, 'EP'),
       (2, '02 Mơ Làm Ma', 'Ngọt, Thỏ Trauma', '2.57', '2024', 1, 'EP'),
       (3, '03 Hay Là', 'Ngọt', '3.22', '2024', 1, 'EP'),
       (4, '04 Thắp Hương 05 Hóa Vàng', 'Ngọt', '3.48', '2024', 3, 'EP'),
       (6, 'À Ơi', 'Ngọt', '3.24', '2016', 4, 'Album'),
       (1, 'Bạn thỏ tivi nhỏ', 'Ngọt', '4.28', '2022', 1, 'Album'),
       (5, 'Bartender', 'Ngọt', '5.18', '2017', 2, 'Album'),
       (2, 'Bartender (bản CNGDC)', 'Ngọt', '4.42', '2019', 3, 'EP'),
       (4, 'Be Cool', 'Ngọt', '3.25', '2016', 1, 'Album'),
       (3, 'Cá Hồi', 'Ngọt', '4.24', '2016', 4, 'Album'),
       (6, 'Chào Buổi Sáng', 'Ngọt', '1.4', '2022', 2, 'Album'),
       (2, 'Cho', 'Ngọt', '3.1', '2017', 1, 'Album'),
       (1, 'Cho Tôi Lang Thang', 'Ngọt, Đen', '4.18', '2017', 3, 'Single'),
       (2, 'Cho Tôi Đi Theo', 'Ngọt', '2.58', '2016', 3, 'Album'),
       (3, 'Cho Tôi Đi Theo (bản thu ở chương trình Cuộc Hẹn Cuối Tuần)', 'Ngọt', '3.58', '2021', 4, 'EP'),
       (5, 'CHUÔNG BÁO THỨC (sáng rồi)', 'Ngọt', '4.07', '2019', 2, 'Album'),
       (7, 'CHUYỂN KÊNH (sản phẩm này không phải là thuốc)', 'Ngọt', '4.33', '2019', 1, 'Album'),
       (10, 'Drama Queen', 'Ngọt', '5.05', '2016', 4, 'Album'),
       (3, 'EM CÓ CHẮC KHÔNG (?) (bài ca rebound)', 'Ngọt', '4.35', '2019', 3, 'Album'),
       (7, 'Em Dạo Này', 'Ngọt', '3.21', '2017', 2, 'Album'),
       (4, 'Em Dạo Này (bản CNGDC)', 'Ngọt', '3.35', '2019', 3, 'EP'),
       (3, 'Em Trang Trí', 'Ngọt', '2.45', '2022', 2, 'Album'),
       (5, 'Em Trong Đầu', 'Ngọt', '3.18', '2022', 4, 'Album'),
       (4, 'GIẢ VỜ', 'Ngọt', '2.58', '2019', 1, 'Album'),
       (10, 'Gieo', 'Ngọt', '3.27', '2022', 3, 'Album'),
       (8, 'HẾT THỜI', 'Ngọt', '4.38', '2019', 3, 'Album'),
       (4, 'Kẻ Thù', 'Ngọt', '3.54', '2017', 4, 'Album'),
       (3, 'Kẻ Thù (bản CNGDC)', 'Ngọt', '4.36', '2019', 1, 'EP'),
       (8, 'Khắp Xung Quanh', 'Ngọt', '4.03', '2016', 2, 'Album'),
       (3, 'Kho Báu', 'Ngọt', '3.39', '2017', 3, 'Album'),
       (9, 'Không Làm Gì', 'Ngọt', '4.04', '2016', 4, 'Album'),
       (12, 'LẦN CUỐI (đi bên em xót xa người ơi)', 'Ngọt', '3.42', '2019', 1, 'Album'),
       (11, 'Mất Tích', 'Ngọt', '4.31', '2022', 3, 'Album'),
       (1, 'MÀU (đen trắng)', 'Ngọt', '3.36', '2019', 1, 'Album'),
       (2, 'Mấy Khi', 'Ngọt', '2.57', '2022', 2, 'Album'),
       (6, 'Mèo Hoang', 'Ngọt', '5.1', '2017', 3, 'Album'),
       (1, 'Mèo Hoang (bản CNGDC)', 'Ngọt', '5.01', '2019', 4, 'EP'),
       (2, 'MẾU MÁO (T.T)', 'Ngọt', '3.37', '2019', 2, 'Album'),
       (8, 'Một Ngày Không Mưa', 'Ngọt', '5.12', '2017', 1, 'Album'),
       (7, 'Những Chuyến Phiêu Lưu', 'Ngọt', '3.08', '2016', 2, 'Album'),
       (13, 'NỨT (đôi chuân đôi tay đôi mắt trái tim)', 'Ngọt', '6.32', '2019', 4, 'Album'),
       (14, 'RU MÌNH', 'Ngọt', '2.06', '2019', 3, 'Album'),
       (7, 'Thấy Chưa', 'Ngọt', '3.52', '2022', 2, 'Album'),
       (1, 'Tìm Người Nhà', 'Ngọt', '3.54', '2020', 1, 'Single'),
       (9, 'VÉ ĐI THIÊN ĐƯỜNG (một chiều)', 'Ngọt', '2.45', '2019', 3, 'Album'),
       (1, 'Vì Ai', 'Ngọt', '3.37', '2016', 1, 'Album'),
       (5, 'Xanh', 'Ngọt', '4.54', '2016', 4, 'Album'),
       (1, 'Xanh (bản thu ở chương trình Cuộc Hẹn Cuối Tuần)', 'Ngọt', '5.43', '2021', 4, 'EP'),
       (1, 'Xin Cho Tôi', 'Ngọt', '2.23', '2017', 3, 'Album'),
       (8, 'Đá Tan', 'Ngọt, Mạc Mai Sương', '3.22', '2022', 2, 'Album'),
       (1, 'để quên', 'Ngọt', '2.5', '2021', 1, 'Single'),
       (2, 'để quên (bản thu ở chương trình Cuộc Hẹn Cuối Tuần)', 'Ngọt', '3.23', '2021', 1, 'EP'),
       (9, 'Đêm Hôm Qua', 'Ngọt', '3.48', '2022', 5, 'Album'),
       (4, 'Điểm Đến Cuối Cùng', 'Ngọt', '3.33', '2022', 2, 'Album'),
       (1, 'Đốt', 'Ngọt', '3.55', '2021', 3, 'Single');


-- Chèn dữ liệu cho bảng Products 
INSERT INTO Products (band_id, product_name, description, price, image_url)
VALUES (1, 'Áo thun Ngọt', 'Áo thun cotton in logo Ngọt', 250000, 'ao_thun_ngot_image.jpg'),
       (1, 'Cốc sứ Ngọt', 'Cốc sứ in logo Ngọt', 150000, 'coc_su_ngot_image.jpg'),
       (1, 'Móc khóa Ngọt', 'Móc khóa in logo Ngọt', 50000, 'moc_khoa_ngot_image.jpg'),
       (1, 'CD album Mơ', 'CD album Mơ của Ngọt', 150000, 'cd_album_mo_image.jpg');

-- Chèn dữ liệu cho bảng Products 
INSERT INTO Users (username, email, password_hash)
VALUES ('Lê Nhật Trường', 'nhattruong13112000@gmail.com', '$2y$12$34567890abcdefghijkl'),
       ('Huỳnh Hà Thanh Trúc', 'thanhtruc@yahoo.com', '$2y$12$34567890abcdefghijkl');

-- Chèn dữ liệu cho bảng Address 
INSERT INTO Address (user_id, recipient_name, street_address, city, state, postal_code, country)
VALUES (1, 'Nguyễn Văn A', '123 Nguyễn Trãi', 'Hà Nội', 'Hà Nội', '100000', 'Việt Nam'),
       (2, 'Trần Thị B', '456 Lê Văn Lương', 'TP Hồ Chí Minh', 'TP Hồ Chí Minh', '700000', 'Việt Nam');

-- Chèn dữ liệu cho bảng Orders 
INSERT INTO Orders (user_id, product_id, quantity, total_price)
VALUES (1, 1, 2, 500000),
       (2, 2, 1, 150000),
       (1, 4, 3, 450000);
