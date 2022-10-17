SELECT * FROM apple.applestore;

-- Question 1 
SELECT DISTINCT applestore.prime_genre
FROM apple.applestore;

-- Question 2
SELECT prime_genre, sum(rating_count_tot) AS total_rating
FROM apple.applestore
GROUP BY prime_genre
ORDER BY total_rating DESC;

-- Question 3
SELECT prime_genre, count(*)
FROM apple.applestore
GROUP BY prime_genre
ORDER BY count(*) DESC;

-- Question 4
SELECT prime_genre, count(*)
FROM apple.applestore
GROUP BY prime_genre
ORDER BY count(*) ASC;

-- Question 5
SELECT track_name, rating_count_tot, prime_genre
FROM apple.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

-- Question 6
SELECT track_name, user_rating
FROM apple.applestore
ORDER BY user_rating DESC
LIMIT 10;

-- Question 7 
SELECT track_name, rating_count_tot, price, prime_genre, user_rating
FROM apple.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

-- Question 8
SELECT track_name, user_rating, rating_count_tot, prime_genre, price
FROM apple.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

-- Question 9 (Question 5 x Question 6)
-- Question 5
SELECT track_name, rating_count_tot, prime_genre
FROM apple.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

-- Question 6
SELECT track_name, user_rating
FROM apple.applestore
ORDER BY user_rating DESC
LIMIT 10;

-- Question 10
SELECT track_name, user_rating, rating_count_tot
FROM apple.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

-- Question 11
SELECT track_name, rating_count_tot, price, prime_genre
FROM apple.applestore
ORDER BY price DESC
LIMIT 10;

SELECT track_name, rating_count_tot, price, prime_genre
FROM apple.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;