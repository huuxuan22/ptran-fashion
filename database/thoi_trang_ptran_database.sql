-- tạo cơ sở dữ liệu
create database if not exists thoi_trang_ptran;
use thoi_trang_ptran;

-- bảng categories
create table categories (
    categories_id int auto_increment primary key,
    categories_name varchar(255) not null,
    description text
);

-- bảng products
create table products (
    product_id int auto_increment primary key,
    product_name varchar(255) not null,
    description text,
    category_id int,
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    foreign key (category_id) references categories(categories_id) on delete set null    
);

-- bảng variants
create table variants (
    variant_id int auto_increment primary key,
    product_id int,
    name varchar(255) not null,
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    foreign key (product_id) references products(product_id) on delete cascade
);

-- bảng variant_options
create table variant_options (
    variant_option_id int auto_increment primary key,
    variant_id int,
    value varchar(255) not null,
    foreign key (variant_id) references variants(variant_id) on delete cascade
);

-- bảng product_variants
create table product_variants (
    product_variant_id int auto_increment primary key,
    variant_option_id int,
    product_id int,
    sku varchar(255) not null, -- mã định danh duy nhất cho từng sản phẩm ví dụ áo trắng sneaker size xxl là SNK-XXL-WHT
    price decimal(10, 2) not null, 
    stock int not null, -- đây là hàng tồn kho số lượng còn lại là bao nhiêu
    foreign key (product_id) references products(product_id) on delete cascade,
    foreign key(variant_option_id) references variant_options (variant_option_id) on delete cascade
);

create table images
(
	image_id int auto_increment primary key,
	product_variant_id int,
    variant_option_id int,
    image_url varchar(255),
    create_at datetime default current_timestamp,
    update_at datetime default current_timestamp,
    foreign key (product_variant_id) references product_variants(product_variant_id) on delete cascade,
    foreign key (variant_option_id)references variant_options(variant_option_id) on delete cascade
);

create table roles 
(
	role_id int auto_increment primary key,
    role_name varchar(30) not null unique
);

create table users 
(
	user_id int auto_increment primary key,
    full_name varchar(50) not null,
    age int default 18,
    email varchar(100),
    number_phone varchar(10),
    gender bit default 1,
    role_id int,
    img_url varchar(100),
    create_at datetime default current_timestamp,
    update_at datetime default current_timestamp on update current_timestamp,
    foreign key (role_id) references roles (role_id) on delete set null
);

create table `order` (
    order_id int auto_increment primary key,
    user_id int,
    order_code varchar(50) not null unique,
    order_date datetime default current_timestamp,
    status varchar(50) not null,
    total decimal(10, 2) not null,
    foreign key (user_id) references users(user_id) on delete set null
);

create table order_details (
    order_detail_id int auto_increment primary key,
    order_id int,
    product_variant_id int,
    quantity int not null,
    price decimal(10, 2) not null,
    foreign key (order_id) references `order`(order_id) on delete cascade,
    foreign key (product_variant_id) references product_variants(product_variant_id) on delete cascade
);

create table feedbacks (
    feedback_id int auto_increment primary key,
    user_id int not null,            -- ID của người dùng gửi phản hồi
    title varchar(255) not null,     -- Tiêu đề phản hồi
    content text not null,           -- Nội dung phản hồi
    status varchar(50) default 'pending', -- Trạng thái phản hồi (ví dụ: pending, resolved)
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    foreign key (user_id) references users(user_id) on delete cascade
);

create table messages (
    message_id int auto_increment primary key,
    sender_id int not null,            -- ID của người gửi
    receiver_id int not null,          -- ID của người nhận
    content text not null,             -- Nội dung tin nhắn
    sent_at datetime default current_timestamp, -- Thời gian gửi tin nhắn
    is_read boolean default false,     -- Trạng thái đã đọc hay chưa
    foreign key (sender_id) references users(user_id) on delete cascade,
    foreign key (receiver_id) references users(user_id) on delete cascade
);

