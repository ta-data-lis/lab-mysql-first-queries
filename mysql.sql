SELECT * FROM first_query.applestore;

#Question 1
SELECT DISTINCT(prime_genre) as genre FROM first_query.applestore;

#Question 2
SELECT prime_genre, SUM(rating_count_tot)
FROM first_query.applestore
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC;

#Question 3
SELECT prime_genre, count(prime_genre)
FROM first_query.applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) desc;

#Question 4
SELECT prime_genre, count(prime_genre)
FROM first_query.applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre);

#Question 5
SELECT track_name, rating_count_tot
FROM first_query.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

#Question 6
SELECT track_name, user_rating
FROM first_query.applestore
ORDER BY user_rating DESC
LIMIT 10;

#Question 10
SELECT track_name, user_rating, rating_count_tot
FROM first_query.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

#Question 11
SELECT track_name, user_rating, rating_count_tot, price
FROM first_query.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

#Question 12

SELECT track_name, price, rating_count_tot, user_rating
FROM first_query.applestore
ORDER BY price DESC;
#The higher priced apps have few downloads

SELECT track_name, price, rating_count_tot, user_rating
FROM first_query.applestore
ORDER BY rating_count_tot DESC, user_rating DESC;
#The most downloaded APPS are free or have low prices





