INSERT INTO categories (categories_name, description) VALUES
('Thời trang nam', 'Quần áo, giày dép, phụ kiện dành cho nam giới'),
('Thời trang nữ', 'Quần áo, giày dép, phụ kiện dành cho nữ giới'),
('Trẻ em', 'Trang phục và giày dép cho trẻ em từ sơ sinh đến thanh thiếu niên'),
('Phụ kiện', 'Các loại phụ kiện như túi xách, thắt lưng, mũ, v.v.'),
('Giày dép', 'Các loại giày dép dành cho cả nam và nữ, bao gồm giày thể thao và giày công sở');


INSERT INTO products (product_name, description, category_id) VALUES
('Áo thun nam', 'Áo thun cotton mềm mại cho nam', 1),
('Áo sơ mi nữ', 'Áo sơ mi công sở cho nữ, dễ phối đồ', 2),
('Quần jeans nam', 'Quần jeans phong cách, thoải mái cho nam', 1),
('Áo khoác mùa đông', 'Áo khoác giữ ấm cho nữ vào mùa đông', 2),
('Áo len trẻ em', 'Áo len ấm áp cho trẻ em', 3),
('Giày thể thao nam', 'Giày thể thao phong cách, thể thao và thoải mái', 4),
('Giày cao gót nữ', 'Giày cao gót cho nữ, sang trọng và thanh lịch', 4),
('Balo trẻ em', 'Balo đáng yêu dành cho trẻ em', 3),
('Túi xách nữ', 'Túi xách thời trang cho nữ', 4),
('Giày thể thao trẻ em', 'Giày thể thao cho trẻ em, thoải mái và dễ thương', 3);


INSERT INTO variants (product_id, name) VALUES
(1, 'Màu sắc'),
(1, 'Kích cỡ'),
(2, 'Màu sắc'),
(2, 'Kích cỡ'),
(3, 'Kích cỡ'),
(4, 'Màu sắc'),
(5, 'Màu sắc'),
(6, 'Kích cỡ'),
(7, 'Màu sắc'),
(8, 'Kích cỡ');


INSERT INTO variant_options (variant_id, value) VALUES
(1, 'Trắng'),
(1, 'Đen'),
(2, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'Đỏ'),
(4, 'Xanh'),
(5, 'S'),
(6, 'Màu vàng'),
(7, 'S'),
(8, 'L'),
(9, 'Màu xanh'),
(10, 'L');

INSERT INTO product_variants (variant_option_id, product_id, sku, price, stock) VALUES
(1, 1, 'THUN-001', 150000, 50),
(2, 1, 'THUN-002', 150000, 60),
(3, 2, 'SOMI-001', 200000, 40),
(4, 2, 'SOMI-002', 220000, 30),
(5, 3, 'JEANS-001', 250000, 20),
(6, 4, 'KOAK-001', 300000, 15),
(7, 5, 'LEN-001', 120000, 100),
(8, 6, 'GTTN-001', 350000, 25),
(9, 7, 'GCGT-001', 400000, 50),
(10, 8, 'BALO-001', 150000, 70);


INSERT INTO images (product_variant_id, variant_option_id, image_url) VALUES
(1, 1, 'http://example.com/images/thun-trang.jpg'),
(2, 2, 'http://example.com/images/thun-den.jpg'),
(3, 3, 'http://example.com/images/somi-trang.jpg'),
(4, 4, 'http://example.com/images/somi-xanh.jpg'),
(5, 5, 'http://example.com/images/jeans- xanh.jpg'),
(6, 6, 'http://example.com/images/koak-do.jpg'),
(7, 7, 'http://example.com/images/len-vang.jpg'),
(8, 8, 'http://example.com/images/gttn-trang.jpg'),
(9, 9, 'http://example.com/images/gcgt-xanh.jpg'),
(10, 10, 'http://example.com/images/balo-den.jpg');

INSERT INTO roles (role_name) VALUES
('Admin'),
('User'),
('Guest'),
('Manager'),
('Support');


INSERT INTO users (full_name, age, email, number_phone, gender, role_id, img_url) VALUES
('Nguyễn Văn A', 25, 'nguyenvana@example.com', '0901234567', 1, 1, 'http://example.com/images/nguyenvana.jpg'),
('Trần Thị B', 30, 'tranthib@example.com', '0912345678', 0, 2, 'http://example.com/images/tranthib.jpg'),
('Lê Minh C', 28, 'leminhc@example.com', '0923456789', 1, 2, 'http://example.com/images/leminhc.jpg'),
('Phạm Thị D', 22, 'phamthid@example.com', '0934567890', 0, 3, 'http://example.com/images/phamthid.jpg'),
('Vũ Quang E', 27, 'vuquange@example.com', '0945678901', 1, 4, 'http://example.com/images/vuquange.jpg'),
('Ngô Hoàng F', 35, 'ngohoangf@example.com', '0956789012', 1, 2, 'http://example.com/images/ngohoangf.jpg'),
('Đỗ Thị G', 40, 'dothig@example.com', '0967890123', 0, 5, 'http://example.com/images/dothig.jpg'),
('Bùi Tiến H', 50, 'buitienh@example.com', '0978901234', 1, 1, 'http://example.com/images/buitienh.jpg'),
('Phan Thu I', 45, 'phanthui@example.com', '0989012345', 0, 3, 'http://example.com/images/phanthui.jpg'),
('Hoàng Văn J', 33, 'hoangvanj@example.com', '0990123456', 1, 4, 'http://example.com/images/hoangvanj.jpg');


INSERT INTO `order` (user_id, order_code, status, total) VALUES
(1, 'ORD001', 'Đang xử lý', 550000),
(2, 'ORD002', 'Đã giao', 700000),
(3, 'ORD003', 'Đang xử lý', 450000),
(4, 'ORD004', 'Đã giao', 600000),
(5, 'ORD005', 'Đang xử lý', 500000),
(6, 'ORD006', 'Đã giao', 750000),
(7, 'ORD007', 'Đang xử lý', 300000),
(8, 'ORD008', 'Đã giao', 900000),
(9, 'ORD009', 'Đang xử lý', 650000),
(10, 'ORD010', 'Đã giao', 800000);


INSERT INTO order_details (order_id, product_variant_id, quantity, price) VALUES
(1, 1, 2, 150000),
(2, 3, 1, 200000),
(3, 5, 2, 120000),
(4, 6, 3, 350000),
(5, 8, 1, 150000),
(6, 7, 2, 220000),
(7, 9, 1, 250000),
(8, 2, 2, 220000),
(9, 10, 1, 250000),
(10, 4, 1, 300000);


INSERT INTO feedbacks (user_id, title, content, status) VALUES
(1, 'Sản phẩm tuyệt vời', 'Áo thun này rất thoải mái và chất lượng tốt', 'Đã giải quyết'),
(2, 'Giao hàng nhanh', 'Mình rất hài lòng với dịch vụ giao hàng của shop', 'Đã giải quyết'),
(3, 'Chất lượng tốt', 'Giày thể thao rất êm và đẹp', 'Đã giải quyết'),
(4, 'Hàng bị lỗi', 'Sản phẩm bị lỗi khi nhận được, mong shop đổi lại', 'Chưa giải quyết'),
(5, 'Màu sắc đẹp', 'Màu sắc của áo khoác rất đẹp và hợp với thời tiết', 'Đã giải quyết'),
(6, 'Tuyệt vời', 'Dịch vụ chăm sóc khách hàng rất tốt', 'Đã giải quyết'),
(7, 'Không đúng size', 'Mình nhận được áo có kích thước không đúng như mình chọn', 'Chưa giải quyết'),
(8, 'Tốt', 'Giày đẹp và vừa vặn', 'Đã giải quyết'),
(9, 'Không hài lòng', 'Chất lượng sản phẩm không giống như trong hình ảnh', 'Chưa giải quyết'),
(10, 'Rất hài lòng', 'Tôi rất thích sản phẩm và sẽ mua thêm', 'Đã giải quyết');

