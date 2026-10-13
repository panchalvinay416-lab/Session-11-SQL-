CREATE DATABASE orders_db;
use orders_db;

CREATE TABLE orders(
 order_id int primary key,
 user_id int ,
 total_amount decimal(10,2)
 );
 
 
 insert into orders(order_id,user_id,total_amount)
 values
(101, 1, 1500),
(102, 2, 2500),
(103, 3, 1200),
(104, 4, 3000),
(105, 5, 1800),
(106, 6, 2200),
(107, 7, 900),
(108, 8, 3500),
(109, 9, 1600),
(110, 10, 2800);

select* from orders;

select distinct user_id
from orders
where total_amount > (
  select AVG (total_amount)
  from orders
);
 
