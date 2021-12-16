CREATE DATABASE applestore;

USE applestore;

SELECT DISTINCT(prime_genre)
FROM appstore;

SELECT prime_genre, COUNT(prime_genre)'n_apps'
FROM appstore
GROUP BY prime_genre
ORDER BY n_apps DESC;

SELECT prime_genre, COUNT(rating_count_tot)'count'
FROM appstore
WHERE rating_count_tot >0
GROUP BY prime_genre
ORDER BY count DESC
LIMIT 1;

SELECT prime_genre, COUNT(rating_count_tot)'count'
FROM appstore
WHERE rating_count_tot >0
GROUP BY prime_genre
ORDER BY count ASC
LIMIT 1;

-- 5
SELECT track_name, rating_count_tot
FROM appstore
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6
SELECT track_name, user_rating,rating_count_tot
FROM appstore
ORDER BY user_rating DESC
LIMIT 10;

-- 10
SELECT track_name, user_rating, rating_count_tot
FROM appstore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

-- 11

-- First check and clean the ones that have zero ratings and the ones that have less than 30 in the rating count
CREATE TEMPORARY TABLE appstore_n(
SELECT id, track_name, currency, price, rating_count_tot, rating_count_ver, user_rating, user_rating_ver
FROM appstore
WHERE rating_count_tot >30);

SELECT COUNT(track_name)
FROM appstore_n;
-- 5344 APPS

-- Check the most expensive apps, their rating and total of ratings
SELECT track_name, price, user_rating, rating_count_tot, rating_count_ver
FROM appstore_n
ORDER BY price DESC, user_rating DESC
LIMIT 15;

-- Check the cheaper apps, their rating and total of ratings
SELECT track_name, price, user_rating, rating_count_tot, rating_count_ver
FROM appstore_n
ORDER BY price ASC, user_rating DESC
LIMIT 15;

-- Check the most commented and best rated
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
ORDER BY rating_count_tot DESC, user_rating DESC
LIMIT 15;


-- 
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
WHERE price BETWEEN 99 AND 300
Order by price asc;

SELECT AVG(user_rating), AVG(rating_count_tot)
FROM (
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
WHERE price BETWEEN 99 AND 300
Order by price asc)a;
-- 4.167 and 295 

--
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
WHERE price BETWEEN 30 AND 98
Order by price asc;

SELECT AVG(user_rating), AVG(rating_count_tot)
FROM (
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
WHERE price BETWEEN 30 AND 98
Order by price asc)b;

--
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
WHERE price BETWEEN 9 AND 29.99
Order by price asc;

SELECT AVG(user_rating), AVG(rating_count_tot)
FROM (
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
WHERE price BETWEEN 9 AND 29.99
Order by price asc)c;

--
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
WHERE price BETWEEN 0.99 AND 8.99
Order by price asc;

SELECT AVG(user_rating), AVG(rating_count_tot)
FROM (
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
WHERE price BETWEEN 0.99 AND 8.99
Order by price asc)d;

--
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
WHERE price =0
Order by user_rating asc;

SELECT AVG(user_rating), AVG(rating_count_tot)
FROM (
SELECT track_name, price, user_rating, rating_count_tot
FROM appstore_n
WHERE price =0
Order by user_rating asc)e;