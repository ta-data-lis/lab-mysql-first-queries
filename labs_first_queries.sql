select *
from labs.applestore;

#1: 

select prime_genre
from labs.applestore
group by prime_genre;

#2:

select prime_genre, count(*)rating_count_ver
from labs.applestore
group by prime_genre;

#3

select prime_genre, count(*)rating_count_tot
from labs.applestore
group by prime_genre;

#4

select prime_genre, count(*)rating_count_tot
from labs.applestore
group by prime_genre;

#5

SELECT track_name, rating_count_ver
FROM labs.applestore
WHERE rating_count_ver > 0
ORDER BY rating_count_tot DESC
LIMIT 10;

#6

SELECT track_name, user_rating, rating_count_tot
FROM labs.applestore
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;

#10

SELECT track_name, user_rating, cont_rating
FROM labs.applestore
WHERE user_rating = 5 AND cont_rating = 17
ORDER BY cont_rating DESC
LIMIT 3;	

#11

SELECT track_name, price, rating_count_tot
FROM labs.applestore
WHERE price > 0 AND rating_count_tot > 0
ORDER BY rating_count_tot DESC;	

