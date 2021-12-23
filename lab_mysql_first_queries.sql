CREATE DATABASE lab_mysql_first_queries;

USE lab_mysql_first_queries;

SELECT DISTINCT prime_genre FROM AppleStore;

SELECT prime_genre as Genre, SUM(rating_count_tot) AS Most_Rated
FROM AppleStore
GROUP BY prime_genre
ORDER BY Most_Rated DESC
LIMIT 1;

SELECT prime_genre as Genre, COUNT(track_name) AS Apps_Count
FROM AppleStore
GROUP BY prime_genre
ORDER BY Apps_Count DESC
LIMIT 1;

SELECT prime_genre as Genre, COUNT(track_name) AS Apps_Count
FROM AppleStore
GROUP BY prime_genre
ORDER BY Apps_Count ASC
LIMIT 1;

SELECT track_name as App, SUM(rating_count_tot) AS Most_Rated
FROM AppleStore
GROUP BY track_name
ORDER BY Most_Rated DESC
LIMIT 10;

SELECT track_name as App
FROM AppleStore
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name as App
FROM AppleStore
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

SELECT DISTINCT track_name as APP, user_rating as Rate, rating_count_tot as Most_Rated
FROM AppleStore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;