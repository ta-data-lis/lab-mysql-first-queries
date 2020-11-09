CREATE DATABASE first_queries;

USE first_queries;

-- Database imported using Dbeaver assistant

-- Q1

SELECT DISTINCT(prime_genre) FROM AppleStore_csv;

-- Q2

SELECT prime_genre, count(user_rating)from AppleStore_csv
WHERE user_rating != 0
GROUP BY 1
ORDER BY 2 DESC;

-- Q3

SELECT prime_genre, COUNT(DISTINCT(track_id)) FROM AppleStore_csv asc2
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- Q4

SELECT prime_genre, COUNT(DISTINCT(track_id)) FROM AppleStore_csv asc2
GROUP BY 1
ORDER BY 2
LIMIT 1;

-- Q5

SELECT track_id, track_name, sum(rating_count_tot) FROM AppleStore_csv asc2
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10;


-- Q6

SELECT track_id, track_name, user_rating FROM AppleStore_csv asc2
ORDER BY 3 DESC
LIMIT 10;

-- Q7
-- The top rated apps are mainly related to social media.

-- Q8
-- This query was not worth, because these apps have few reviews compare to question 5.

-- Q9
-- We should make a query considering the quantity of rates that each app has, to avoid this discrepancy

-- Q10

SELECT track_id, track_name, user_rating, sum(rating_count_tot) FROM AppleStore_csv asc2
WHERE rating_count_tot > 500000
GROUP BY 1,2,3
ORDER BY 3 DESC
LIMIT 3;

-- Q11

SELECT track_id, track_name, price, sum(rating_count_tot) FROM AppleStore_csv asc2
GROUP BY 1,2,3
ORDER BY 4 DESC
LIMIT 10;

-- The most famous apps are free, so it is easy to people start to use them.

SELECT * FROM AppleStore_csv
LIMIT 3;


