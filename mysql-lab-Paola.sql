SELECT * from sql_lab.applestore;

-- Question 1
SELECT distinct prime_genre;

-- Question 2 
SELECT prime_genre, SUM(rating_count_tot) 
FROM sql_lab.applestore
GROUP BY prime_genre;

-- Question 3 and 4
SELECT prime_genre, COUNT(id) 
FROM sql_lab.applestore
GROUP BY prime_genre
ORDER BY COUNT(id) DESC;

-- Question 5
SELECT track_name, rating_count_tot, prime_genre
FROM sql_lab.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

-- Question 6
SELECT track_name, user_rating, rating_count_tot, prime_genre, price
FROM sql_lab.applestore
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10
;

-- Question 10
SELECT track_name, user_rating, rating_count_tot, prime_genre
FROM sql_lab.applestore
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3;

-- Question 11
SELECT track_name, user_rating, rating_count_tot, price
FROM sql_lab.applestore
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10
;

SELECT track_name, price, user_rating, rating_count_tot
FROM sql_lab.applestore
ORDER BY price DESC
;

SELECT track_name, rating_count_tot, prime_genre, price
FROM sql_lab.applestore
ORDER BY rating_count_tot DESC
LIMIT 50;
