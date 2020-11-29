SELECT *
FROM applestore;


SELECT prime_genre
FROM applestore
GROUP BY prime_genre;


SELECT prime_genre, sum(rating_count_tot) AS total_ratings
FROM AppleStore 
GROUP BY prime_genre
ORDER BY total_ratings DESC;


SELECT prime_genre, COUNT(id) AS number_apps
FROM AppleStore 
GROUP BY 1
ORDER BY number_apps DESC;


SELECT prime_genre, COUNT(id) AS number_apps
FROM AppleStore 
GROUP BY 1
ORDER BY number_apps ASC;


SELECT track_name, sum(rating_count_tot) AS total_ratings
FROM AppleStore
GROUP BY 1
ORDER BY total_ratings DESC
LIMIT 10;


SELECT track_name, user_rating, rating_count_tot
FROM AppleStore
ORDER BY user_rating DESC, rating_count_tot DESC 
LIMIT 10;


SELECT price, AVG(rating_count_tot) AS avg_ratings, AVG(user_rating) AS avg_user_rating
FROM AppleStore
GROUP BY 1
ORDER BY 1;