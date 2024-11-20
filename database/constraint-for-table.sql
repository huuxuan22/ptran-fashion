-- đây là trang constraint cho dự án 

alter table categories 
	add constraint check_categories_name_not_empty check (categories_name <> '');
    
alter table product_variants
    add constraint chk_sku_not_empty check (sku <> ''),
    add constraint chk_price_positive check (price > 0),
    add constraint chk_stock_non_negative check (stock >= 0);
    
alter table users
    add constraint chk_age_non_negative check (age >= 0),
    add constraint chk_gender_binary check (gender in (0, 1));	
    
alter table `order`
    add constraint chk_order_code_not_empty check (order_code <> ''),
    add constraint chk_total_positive check (total > 0);
    
alter table order_details
    add constraint chk_quantity_positive check (quantity >= 0),
    add constraint chk_price_positive_order_details check (price >= 0);
    
alter table users add column address varchar(100);
ALTER TABLE users ADD COLUMN is_active boolean default true;
alter table users add column birthday date;

alter table users add constraint chk_birthday check (timestampdiff(year,birthday,curdate()) >= 18 );	


delimiter //

create trigger check_age_before_insert



