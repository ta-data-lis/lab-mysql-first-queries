create database lab_myfirstqueries;

use lab_myfirstqueries; 

SELECT DISTINCT prime_genre
FROM applestore2;

SELECT prime_genre, rating_count_tot
FROM applestore2
ORDER BY rating_count_tot DESC
LIMIT 1;

SELECT COUNT(id), prime_genre
from applestore2
GROUP BY prime_genre
ORDER BY COUNT(id) DESC;

SELECT COUNT(id), prime_genre
from applestore2
GROUP BY prime_genre
ORDER BY COUNT(id) ASC;

SELECT track_name, rating_count_tot
FROM applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating
FROM applestore2
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot
FROM applestore2
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;



SELECT track_name, price
FROM applestore2
ORDER BY price ASC;
-- to see what are the cheapest apps and if they are the same ones as the best rated

SELECT track_name, user_rating
FROM applestore2
ORDER BY user_rating ASC;
-- to see what are the least rated apps