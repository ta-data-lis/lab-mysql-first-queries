CREATE DATABASE lab_mysql_first_queries;
USE lab_mysql_first_queries;

-- 1. Which are the different genres?
SELECT DISTINCT prime_genre
FROM applestore
ORDER BY prime_genre ASC;

-- 2. Which is the genre with more apps rated?
SELECT prime_genre, sum(rating_count_tot)
FROM applestore
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1;

-- 3. Which is the genre with more apps?
SELECT prime_genre, count(prime_genre)
FROM applestore
GROUP BY prime_genre
ORDER BY count(prime_genre) DESC
LIMIT 1;

-- 4. Which is the one with less?
SELECT prime_genre, count(prime_genre)
FROM applestore
GROUP BY prime_genre
ORDER BY count(prime_genre) ASC
LIMIT 1;

-- 5. Take the 10 apps most rated.
SELECT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.
SELECT track_name, user_rating
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

-- 11. Does people care about the price?
SELECT track_name, price, user_rating, rating_count_tot
FROM applestore
ORDER BY price DESC
LIMIT 15;