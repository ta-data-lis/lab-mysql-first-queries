SELECT * FROM applestore

SELECT DISTINCT(prime_genre) FROM applestore;

SELECT DISTINCT(prime_genre), SUM(rating_count_tot)
FROM applestore
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC;

SELECT DISTINCT(prime_genre), COUNT(track_name)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC
LIMIT 1; 

SELECT DISTINCT(prime_genre), COUNT(track_name)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC
LIMIT 1; 

SELECT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating
FROM applestore
ORDER BY price DESC
LIMIT 10; 

SELECT track_name, user_rating, price, rating_count_tot
FROM applestore
ORDER BY price DESC, rating_count_tot DESC;

SELECT track_name, user_rating, price, rating_count_tot
FROM applestore
WHERE price != 0
ORDER BY user_rating DESC, rating_count_tot DESC;

