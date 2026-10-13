CREATE DATABASE  restaurants_db;
use restaurants_db;


CREATE TABLE restaurants_rating(
   restaurant_id int primary key,
   restaurant_name varchar(50),
   rating int
);

insert into restaurants_rating (restaurant_id,restaurant_name,rating)
values
(1, 'Dominos', 4.5),
(2, 'Pizza Hut', 4.2),
(3, 'McDonalds', 4.1),
(4, 'KFC', 4.3),
(5, 'Subway', 4.0),
(6, 'Burger King', 4.4),
(7, 'La Pinoz', 4.6),
(8, 'Honest', 4.2),
(9, 'Havmor', 4.3),
(10, 'Hocco', 4.1),
(11, 'Wow Momo', 4.0),
(12, 'Taco Bell', 4.2),
(13, 'Barbeque Nation', 4.7),
(14, 'Swati Snacks', 4.6),
(15, 'The Belgian Waffle', 4.4);


select * from restaurants_rating;


select 
  restaurant_name,
  rating
from restaurants_rating
where rating < (
   select AVG(rating)
   from restaurants_rating
);
  