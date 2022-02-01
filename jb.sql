select *
from apple.applestore2;

/* 1st exercice*/
select distinct prime_genre
from apple.applestore2;

/* 2nd exercice*/
select applestore2.prime_genre, count(applestore2.track_name) as apps_num
from apple.applestore2
where rating_count_tot > 0
group by prime_genre
order by apps_num desc
limit 1;

/* 3rd exercice*/
select prime_genre, count(applestore2.track_name) as apps_num
from apple.applestore2
group by prime_genre
order by apps_num desc
limit 1;

/* 4th exercice*/
select prime_genre, count(applestore2.track_name) as apps_num
from apple.applestore2
group by prime_genre
order by apps_num asc
limit 1;

/* 5th exercice*/
select track_name, rating_count_tot
FROM apple.applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;

/* 6th exercice*/
select track_name, user_rating
FROM apple.applestore2
ORDER BY user_rating DESC, rating_count_tot desc
LIMIT 10;

/* 7th exercice*/

/* 8th exercice*/

/* 9th exercice*/

/* 10th exercice*/
select track_name, user_rating, rating_count_tot
FROM apple.applestore2
ORDER BY user_rating DESC, rating_count_tot desc
LIMIT 3;

/* 11th exercice*/

/* this query is to check if the number of rates is realated with the mean price of the apps*/
select rating_count_tot, avg(price)
from apple.applestore2
group by rating_count_tot
order by rating_count_tot desc;

/* this query is to check if the value of rate is realated with the mean price of the apps*/
select user_rating, avg(price) 
from apple.applestore2
group by user_rating
order by user_rating desc; /*, price desc;