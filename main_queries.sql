CREATE DATABASE lab_queries;

SELECT * FROM applestore
LIMIT 10;

SELECT DISTINCT prime_genre
FROM applestore;

SELECT prime_genre, sum(rating_count_tot)
FROM applestore
GROUP BY prime_genre 
ORDER BY sum(rating_count_tot) DESC
LIMIT 1;

SELECT prime_genre, COUNT(prime_genre)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
LIMIT 1;

SELECT prime_genre, COUNT(prime_genre)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
LIMIT 1;

SELECT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name, rating_count_tot, user_rating
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

SELECT track_name, user_rating, rating_count_tot, price
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 15;

SELECT SUM(rating_count_tot)
FROM (SELECT track_name, user_rating, rating_count_tot, price
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 15)
AS Total;

SELECT track_name, user_rating, rating_count_tot, price, prime_genre
FROM applestore
ORDER BY price DESC, user_rating DESC, rating_count_tot DESC
LIMIT 15;

SELECT sum(rating_count_tot)
FROM (SELECT track_name, user_rating, rating_count_tot, price, prime_genre
FROM applestore
ORDER BY price DESC, user_rating DESC, rating_count_tot DESC
LIMIT 15)
AS Total;

SELECT track_name, user_rating, rating_count_tot, price
FROM applestore
ORDER BY price ASC, user_rating DESC, rating_count_tot DESC
LIMIT 15;