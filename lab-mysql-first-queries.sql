create database my_first_queries;
create table if not exists apple_store_table 
(Unnamed int PRIMARY KEY,
id int,
track_name varchar(50),
size_bytes int,
currency varchar(5),
price decimal(10),
rating_count_tot int,
rating_count_ver int,
user_rating decimal(10),
user_rating_ver decimal(10),
ver varchar(10),
cont_rating varchar(5),
prime_genre varchar(25),
sup_devices_num int,
ipadSc_urls_num int,
lang_num int,
vpp_lic int);

select * from apple_store_table;
select distinct prime_genre from apple_store_table;
select prime_genre, count(prime_genre) from apple_store_table where rating_count_tot != 0 group by prime_genre;
select prime_genre, count(prime_genre) from apple_store_table group by prime_genre;
select track_name, rating_count_tot from apple_store_table order by rating_count_tot desc limit 10;
select track_name, user_rating from apple_store_table order by user_rating desc limit 10;
select track_name, rating_count_tot, user_rating from apple_store_table order by user_rating desc, rating_count_tot desc limit 3;
select track_name, rating_count_tot, user_rating, (rating_count_tot * user_rating) as multi from apple_store_table order by multi desc limit 3;
select avg(rating_count_tot), avg(user_rating) from apple_store_table where price > 0;
select avg(rating_count_tot), avg(user_rating) from apple_store_table where price = 0;