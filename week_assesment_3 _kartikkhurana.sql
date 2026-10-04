-- ============================================================
-- FlipCart Products Database — Week 3 Assessment Dataset
-- The Unlox Academy · DA/DS Track
-- ============================================================
-- HOW TO RUN:
--   1. Open MySQL Workbench
--   2. File > Open SQL Script... > select this file
--   3. Press Ctrl+Shift+Enter to run all
--   4. Refresh Schemas panel — you should see 'flipcart' with 'products' table
--   5. Verify with: SELECT COUNT(*) FROM flipcart.products;  -- should return 30
-- ============================================================

CREATE DATABASE IF NOT EXISTS flipcart;
USE flipcart;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id       INT PRIMARY KEY,
    product_name     VARCHAR(80),
    category         VARCHAR(30),
    brand            VARCHAR(30),
    price            DECIMAL(10, 2),
    stock_quantity   INT,
    is_active        BOOLEAN,
    launched_date    DATE,
    avg_rating       DECIMAL(3, 2),
    discount_pct     INT
);

INSERT INTO products VALUES
-- Electronics (8 products)
(1,  'Sony Bravia 55 TV',        'Electronics', 'Sony',      65000.00,  12, TRUE,  '2022-05-10', 4.50, 15),
(2,  'Apple iPhone 15',           'Electronics', 'Apple',     79999.00,  25, TRUE,  '2023-09-22', 4.80,  5),
(3,  'boAt Airdopes 141',         'Electronics', 'boAt',       1499.00, 200, TRUE,  '2022-11-15', 4.20, 30),
(4,  'Xiaomi Redmi Buds 4',       'Electronics', 'Xiaomi',      799.00, 350, TRUE,  '2023-03-08', 4.00, 20),
(5,  'Samsung Galaxy Watch',      'Electronics', 'Samsung',   22999.00,  45, TRUE,  '2023-06-15', 4.40, 10),
(6,  'OnePlus Nord Buds 2',       'Electronics', 'OnePlus',    2199.00, 180, TRUE,  '2024-01-10', NULL, 25),
(7,  'JBL Flip 6 Speaker',        'Electronics', 'JBL',        4999.00,   0, TRUE,  '2022-07-20', 4.30, 15),
(8,  'Nokia 105',                 'Electronics', 'Nokia',      1499.00, 500, FALSE, '2019-01-15', 3.80,  0),
-- Apparel (6 products)
(9,  'Nike Air Max Shoes',        'Apparel',     'Nike',       8999.00,  65, TRUE,  '2023-02-20', 4.60, 20),
(10, 'Levis 511 Slim Jeans',      'Apparel',     'Levis',      2999.00, 120, TRUE,  '2022-08-15', 4.30, 30),
(11, 'Puma Essential T-Shirt',    'Apparel',     'Puma',       1299.00, 250, TRUE,  '2023-05-10', 4.10, 40),
(12, 'Van Heusen Formal Shirt',   'Apparel',     'Van Heusen', 1899.00,  90, TRUE,  '2022-09-25', 4.20, 25),
(13, 'Fabindia Cotton Kurti',     'Apparel',     'Fabindia',   2499.00,  75, TRUE,  '2024-02-01', NULL, 10),
(14, 'Adidas Track Pants',        'Apparel',     'Adidas',     3499.00, 130, TRUE,  '2023-01-15', 4.50, 15),
-- Home (5 products)
(15, 'Prestige Pressure Cooker',  'Home',        'Prestige',   1999.00,  85, TRUE,  '2022-06-10', 4.40, 20),
(16, 'Milton Water Bottle 1L',    'Home',        'Milton',      449.00, 400, TRUE,  '2023-03-15', 4.00, 25),
(17, 'Godrej Bedsheet Set',       'Home',        'Godrej',     1499.00, 150, TRUE,  '2023-08-20', 4.20, 30),
(18, 'IKEA Study Table',          'Home',        'IKEA',       5999.00,  40, TRUE,  '2024-01-20', NULL,  0),
(19, 'Havells Ceiling Fan',       'Home',        'Havells',    3299.00,  60, TRUE,  '2022-04-15', 4.30, 15),
-- Books (4 products)
(20, 'The Silent Patient',        'Books',       'Alex Michaelides', 399.00, 200, TRUE, '2020-07-15', 4.50, 20),
(21, 'Atomic Habits',             'Books',       'James Clear',      349.00, 350, TRUE, '2019-10-16', 4.70, 25),
(22, 'Rich Dad Poor Dad',         'Books',       'Robert Kiyosaki',  299.00, 180, TRUE, '2017-04-01', 4.40, 30),
(23, 'Sapiens',                   'Books',       'Yuval Harari',     499.00,  90, TRUE, '2018-11-15', 4.60, 15),
-- Beauty (4 products)
(24, 'Nykaa Matte Lipstick',      'Beauty',      'Nykaa',       599.00, 320, TRUE, '2023-04-10', 4.20, 20),
(25, 'Lakme Eye Liner',           'Beauty',      'Lakme',       299.00, 500, TRUE, '2022-05-20', 4.10, 25),
(26, 'Mamaearth Face Wash',       'Beauty',      'Mamaearth',   249.00, 400, TRUE, '2023-07-15', 4.30, 30),
(27, 'WOW Skin Vitamin C Serum',  'Beauty',      'WOW',         899.00,   0, TRUE, '2023-11-10', 4.50, 40),
-- Sports (3 products)
(28, 'Cosco Cricket Bat',         'Sports',      'Cosco',      1299.00,  45, TRUE, '2022-10-15', 4.00, 10),
(29, 'Yonex Badminton Racket',    'Sports',      'Yonex',      2499.00,  80, TRUE, '2023-06-20', 4.40, 15),
(30, 'Nivia Football Size 5',     'Sports',      'Nivia',       899.00, 120, TRUE, '2023-05-05', 4.20, 25);

-- Verify the data loaded
SELECT COUNT(*) AS total_products FROM products;
SELECT category, COUNT(*) AS count FROM products GROUP BY category ORDER BY count DESC;

-- SECTION A
-- A1 (c)
-- A2 (b)
-- A3 (b)
-- A4 (c)
-- A5 (b)
-- A6 (d)
-- A7 (b)
-- A8 (c)

-- SECTION B

-- B1
-- (8)
select count(*) from products
where category = "Electronics";

-- B2
-- (11 rows)
select * from products
where price between 1000 and 3000;

-- B3
-- (The Silent Patient)
select product_name from products
where category = 'Books' and price < 400
order by price desc
limit 1;

-- B4
-- (3 rows)
select * from products
where avg_rating is null;

-- B5
-- (499.00)
select max(price) from products
where category = "Books";

-- B6
-- ( Electronics - 7,Apparel - 6,Home - 5)
select category, count(*) from products
where is_active = true
group by category
having COUNT(*) > 4;

-- B7
-- (Nykka Mtte Lipstick - Mid)
-- (Lakme Eye Liner - Budget)
-- (Mamaearth Face wash - Budget)
-- (WOW Skin Vitamin C Serum - Mid)

SELECT product_name,
CASE
WHEN price < 500 THEN 'Budget'
WHEN price < 5000 THEN 'Mid'
ELSE 'Premium'
END AS tier
FROM products WHERE category = 'Beauty';

-- B8
-- (JBL Flip 6 Speaker - 4.30)
-- ( WOW Skin Vitamin C Serum - 4.50)

SELECT product_name, COALESCE(avg_rating, 0) AS rating
FROM products
WHERE stock_quantity = 0;


-- SECTION C

-- C1
select * from products;

-- C2
select product_name , price
from products where category = "Books";

-- C3
select *
from products
where price > 10000
order by price desc;

-- C4
select product_name,price
from products
where category = "Electronics"
order by price desc limit 5;

-- C5
select * from 
products where
category in ("Electronics","Apparel");

-- C6
select * from products
where price between 500 and 2000;

-- C7
select * from products
where product_name like "%Watch%";

-- C8
select *
from products
where brand like'S%';

-- C9
select distinct
category from products;

-- C10
select count(*) from products;

-- C11
select avg(price)
from products
where category = "Books";

-- C12
select
max(price),
min(price)
from products;

-- C13
select category ,count(*)
from products
group by category;

-- C14
select category,sum(stock_quantity)
from products 
group by category;

-- C15
select category, avg(price)
from products
group by category
order by avg(price) desc;

-- C16
select
    brand,
    count(*) as product_count,
    avg(price) as average_price
from products
group by brand;

-- C17
select
    category,
    count(*) as active_product_count
from products
where is_active = true
group by category
having count(*) > 4;

-- C18
select *
from products
order by price desc
limit 3;

-- C19
select
    category,
    avg(price) as average_price
from products
group by category
having avg(price) > 2000;

-- C20
select *
from products
where avg_rating is null;

-- C21
select
    product_name,
    coalesce(avg_rating, 'New Launch') as rating
from products;

-- 	C22
select
    product_name,
    price,
    case
        when price < 1000 then 'Budget'
        when price < 10000 then 'Mid'
        else 'Premium'
    end as price_tier
from products;

-- C23
select
    category,
    count(*) as total_products,
    sum(
        case
            when price >= 10000 then 1
            else 0
        end
    ) as premium_products
from products
group by category;

-- C24
select
    category,
    count(*) as total_products,
    sum(
        case
            when is_active = true then 1
            else 0
        end
    ) as active_products,
    avg(price) as average_price,
    case
        when avg(price) < 1500 then 'Cheap'
        when avg(price) < 10000 then 'Standard'
        else 'Luxury'
    end as category_tier
from products
group by category
having count(*) >= 3
order by average_price desc;




