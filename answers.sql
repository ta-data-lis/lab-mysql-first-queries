SELECT * FROM applestore_windows;

SELECT DISTINCT prime_genre FROM applestore_windows;

SELECT max(rating_count_tot), prime_genre
FROM applestore_windows
GROUP BY prime_genre
ORDER BY rating_count_tot DESC
LIMIT 1;

SELECT prime_genre, count(id)
FROM applestore_windows
GROUP BY prime_genre
ORDER BY count(id) DESC;

SELECT prime_genre, count(id)
FROM applestore_windows
GROUP BY prime_genre
ORDER BY count(id) ASC
LIMIT 5;

SELECT track_name, rating_count_tot
FROM applestore_windows
GROUP BY track_name
ORDER BY rating_count_tot desc
LIMIT 10;

SELECT track_name, user_rating
FROM applestore_windows
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

SELECT count(*)
FROM applestore_windows
WHERE user_rating = 5;

SELECT track_name, rating_count_tot, user_rating
FROM applestore_windows
GROUP BY track_name
ORDER BY rating_count_tot desc
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot
FROM applestore_windows
GROUP BY track_name
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

SELECT price, user_rating
FROM applestore_windows
GROUP BY price
ORDER BY price DESC, user_rating DESC;

SELECT price, rating_count_tot, user_rating
FROM applestore_windows
GROUP BY price
ORDER BY price DESC, rating_count_tot DESC;

SELECT rating_count_tot, price, user_rating
FROM applestore_windows
GROUP BY price
ORDER BY rating_count_tot DESC, price DESC;

SELECT price, user_rating, rating_count_tot
FROM applestore_windows
GROUP BY price
ORDER BY price DESC, user_rating DESC;