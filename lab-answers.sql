CREATE DATABASE applestore;

SELECT *
FROM applestore_windows;

SELECT DISTINCT prime_genre
FROM applestore_windows;

SELECT *
FROM applestore_windows;

SELECT prime_genre, rating_count_tot, sum(rating_count_tot)
FROM applestore_windows
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC;

SELECT prime_genre, COUNT(track_name)
FROM applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;

SELECT prime_genre, COUNT(track_name)
FROM applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC;

SELECT track_name, MAX(rating_count_tot)
FROM applestore_windows
GROUP BY track_name
ORDER BY MAX(rating_count_tot) DESC
LIMIT 10;

SELECT track_name, MAX(user_rating), MAX(user_rating_ver)
FROM applestore_windows
GROUP BY track_name
ORDER BY MAX(user_rating) & MAX(user_rating_ver) DESC
LIMIT 10; ##i got kinda lost here ngl

