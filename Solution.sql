create database applestore;

use applestore;

drop table if exists appledata;
create table appledata (
id int not null auto_increment,
appleid varchar(50) not null,
track_name varchar(100) not null,
size_bytes int(50) not null,
currency char(3) not null,
price float(10) not null,
rating_count_tot int not null,
rating_count_ver int not null,
user_rating float(5) not null,
user_rating_ver float(5) not null,
ver varchar(50) not null,
cont_rating varchar(5) not null,
prime_genre varchar(100) not null,
sup_devices_num int(5) not null,
ipadSc_urls_num int(5) not null,
lang_num int(5) not null,
vpp_lic int(5) not null,
primary key (id)
);

#1. Which are the different genres?
#2. Which is the genre with more apps rated?

drop table if exists genres;
create table genres (
select distinct appledata.prime_genre,
sum(appledata.rating_count_tot) as rating_sum
from appledata
group by appledata.prime_genre
order by sum(appledata.rating_count_tot) desc
);

#3. Which is the genre with more apps?
#4. Which is the one with less?

drop table if exists genres2;
create table genres2 (
select distinct appledata.prime_genre,
count(appledata.track_name) as app_count
from appledata
group by appledata.prime_genre
order by app_count desc
);

#5. Take the 10 apps most rated.

drop table if exists apps;
create table apps (
select appledata.track_name,
sum(appledata.rating_count_tot) as rating_num
from appledata
group by appledata.track_name
order by rating_num desc
limit 10
);

#Take the 10 apps best rated by users

drop table if exists rating;
create table rating (
select distinct appledata.track_name,
user_rating
from appledata
order by user_rating desc
limit 10
);

#10. How could you take the top 3 regarding the user ratings but also the number of votes?

drop table if exists ratingnum;
create table ratingnum (
select distinct appledata.track_name,
user_rating,
sum(appledata.rating_count_tot) as rating_num
from appledata
group by 1,2
order by rating_num desc
limit 3
);

drop table if exists userrating;
create table userrating (
select distinct appledata.track_name,
sum(appledata.rating_count_tot) as rating_num,
user_rating
from appledata
group by 1,3
order by user_rating desc
limit 3
);

#11. Does people care about the price?

drop table if exists highratingpricedesc;
create table highratingpricedesc (
select distinct appledata.track_name,
rating_count_tot,
user_rating,
price
from appledata
where user_rating > 4.5
order by price desc
limit 50
);


drop table if exists lowratingpricedesc;
create table lowratingpricedesc (
select distinct appledata.track_name,
rating_count_tot,
user_rating,
price
from appledata
where user_rating < 2
order by price desc
limit 50
);

drop table if exists highratingpriceasc;
create table highratingpriceasc (
select distinct appledata.track_name,
rating_count_tot,
user_rating,
price
from appledata
where user_rating > 4.5
order by price asc
limit 50
);

drop table if exists lowratingpricedasc;
create table lowratingpricedasc (
select distinct appledata.track_name,
rating_count_tot,
user_rating,
price
from appledata
where user_rating < 2
order by price asc
limit 50
);
