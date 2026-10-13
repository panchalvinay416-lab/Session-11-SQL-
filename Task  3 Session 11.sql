use tops;


CREATE TABLE users2(
 user_id int primary key,
 username varchar (100)
);


CREATE TABLE playlists2(
  playlist_id int primary key,
  user_id int,
  playlist_name varchar(100),
  foreign key (user_id) references users2(user_id)
);


insert into users2(user_id,username)
values
(1, 'Rahul'),
(2, 'Priya'),
(3, 'Amit'),
(4, 'Neha'),
(5, 'Vikas'),
(6, 'Pooja'),
(7, 'Rohit'),
(8, 'Kiran'),
(9, 'Anjali'),
(10, 'Jay');


insert into playlists2(playlist_id,user_id,playlist_name)
values
(1, 1, 'Bollywood Hits'),
(2, 2, 'Romantic Songs'),
(3, 3, 'Workout Music'),
(4, 4, 'Gujarati Songs'),
(5, 5, 'Party Hits'),
(6, 6, 'Sad Songs'),
(7, 7, 'Devotional Songs'),
(8, 8, 'Lo-Fi Music'),
(9, 9, 'Old Classics'),
(10, 10, 'Trending Songs');


select * from users2;
select* from playlists2;


SELECT
  u.username,
  p.total_playlists
FROM users2 as u
join(
    select
     user_id,
     count(*) as total_playlists
     from playlists2
     group by user_id
) as p
on u.user_id = p.user_id
where p.total_playlists > (
    select AVG(playlist_count)
    from(
     select count(*) as playlist_count
     from playlists2
     group by user_id
	) as avg_playlists
);
  