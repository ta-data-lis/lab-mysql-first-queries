SELECT * from apple_store_dataset;

SELECT distinct prime_genre
FROM  apple_store_dataset;

SELECT prime_genre, SUM(rating_count_tot) 
FROM apple_store_dataset
GROUP BY prime_genre;

SELECT prime_genre, COUNT(id) 
FROM apple_store_dataset
GROUP BY prime_genre
ORDER BY COUNT(id) DESC;

SELECT track_name, rating_count_tot, prime_genre
FROM apple_store_dataset
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot, prime_genre, price
FROM apple_store_dataset
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot, prime_genre
FROM apple_store_dataset
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3;

SELECT track_name, user_rating, rating_count_tot, price
FROM apple_store_dataset
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 20;