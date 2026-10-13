CREATE DATABASE flipkart_product_db;
use flipkart_product_db;



CREATE TABLE flipkart_product(
   product_id int primary key,
   name varchar(50),
   price decimal (10,2),
   category int
);
   
   
insert into flipkart_product (product_id,name,price,category)
values
(1, 'Samsung Mobile', 15999, 'Electronics'),
(2, 'HP Laptop', 45999, 'Electronics'),
(3, 'Boat Headphones', 1499, 'Accessories'),
(4, 'Smart Watch', 2499, 'Accessories'),
(5, 'Washing Machine', 18999, 'Home Appliances'),
(6, 'Refrigerator', 25999, 'Home Appliances'),
(7, 'Wooden Table', 4999, 'Furniture'),
(8, 'Office Chair', 3499, 'Furniture'),
(9, 'Nike Shoes', 2999, 'Fashion'),
(10, 'Mens T-Shirt', 799, 'Fashion'),
(11, 'Canon Camera', 32999, 'Electronics'),
(12, 'Bluetooth Speaker', 1999, 'Accessories'),
(13, 'Microwave Oven', 8999, 'Home Appliances'),
(14, 'Travel Backpack', 1299, 'Fashion'),
(15, 'Study Table', 5999, 'Furniture');


alter table flipkart_product
modify column category varchar(50);


INSERT INTO flipkart_product (product_id, name, price, category)
VALUES
(1, 'Samsung Mobile', 15999, 'Electronics'),
(2, 'HP Laptop', 45999, 'Electronics'),
(3, 'Boat Headphones', 1499, 'Accessories'),
(4, 'Smart Watch', 2499, 'Accessories'),
(5, 'Washing Machine', 18999, 'Home Appliances'),
(6, 'Refrigerator', 25999, 'Home Appliances'),
(7, 'Wooden Table', 4999, 'Furniture'),
(8, 'Office Chair', 3499, 'Furniture'),
(9, 'Nike Shoes', 2999, 'Fashion'),
(10, 'Mens T-Shirt', 799, 'Fashion'),
(11, 'Canon Camera', 32999, 'Electronics'),
(12, 'Bluetooth Speaker', 1999, 'Accessories'),
(13, 'Microwave Oven', 8999, 'Home Appliances'),
(14, 'Travel Backpack', 1299, 'Fashion'),
(15, 'Study Table', 5999, 'Furniture');


select 
  name,
  price,
  category
from flipkart_product
where price > (
 select AVG(price)
 from flipkart_product
 );


select * from flipkart_product;
