select *
from applestore_windows;

/* 1 */
select distinct prime_genre
from applestore_windows;

/* 2 */
select prime_genre, sum(rating_count_tot) as total
from applestore_windows
group by prime_genre
limit 1;

/* 3 */
select prime_genre, count(rating_count_tot) as total
from applestore_windows
group by prime_genre
limit 1;

/* 4 */
select prime_genre, count(rating_count_tot) as total
from applestore_windows
group by prime_genre
order by total asc
limit 1;

/* 5 */
select track_name, rating_count_tot
from applestore_windows
where track_name not like '%???%'
order by rating_count_tot desc
limit 10;

/* 6 */
select track_name, user_rating
from applestore_windows
where track_name not like '%???%'
order by user_rating desc
limit 10;


/* 7 */
select track_name, user_rating
from applestore_windows
where track_name not like '%??%'
order by user_rating desc
limit 10;

/* 10 */
select track_name, user_rating, rating_count_tot
from applestore_windows
order by user_rating desc, rating_count_tot desc
limit 3;

/* 11 */
select track_name, rating_count_tot, price, prime_genre
from applestore_windows
order by rating_count_tot desc
limit 20;

select prime_genre, count(prime_genre)
from applestore_windows
group by prime_genre
order by count(prime_genre) desc;

select  prime_genre, count(prime_genre)
from applestore_windows
where price != 0
group by prime_genre
order by count(prime_genre) desc;

select  prime_genre, count(prime_genre)
from applestore_windows
where price = 0
group by prime_genre
order by count(prime_genre) desc;

select avg(user_rating) as 'Paid Apps'
from applestore_windows
where price != 0;

select avg(user_rating) as 'Free Apps'
from applestore_windows
where price = 0;
