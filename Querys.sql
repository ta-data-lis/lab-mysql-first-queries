# Question 1
SELECT DISTINCT prime_genre from Apple;

# Question 2
SELECT prime_genre, count(id)
FROM Apple 
WHERE rating_count_tot != 0
GROUP BY prime_genre
ORDER BY COUNT(id) 
DESC LIMIT 1;

# Question 3
SELECT prime_genre, COUNT(id) 
FROM Apple 
GROUP BY prime_genre 
ORDER BY COUNT(id) 
DESC LIMIT 1;

# Question 4
SELECT prime_genre, COUNT(id) 
FROM Apple 
GROUP BY prime_genre 
ORDER BY COUNT(id) 
LIMIT 1;

# Question 5
SELECT id, track_name, rating_count_tot 
FROM Apple 
ORDER BY rating_count_tot DESC
LIMIT 10;

# Question 6
SELECT id, track_name, user_rating
FROM Apple 
ORDER BY user_rating DESC
LIMIT 10;

# Question 10
SELECT id, track_name, user_rating,rating_count_tot 
FROM Apple
ORDER BY user_rating DESC,rating_count_tot DESC LIMIT 3;

# Question 11
SELECT user_rating, AVG(price) 
FROM Apple
GROUP BY user_rating
ORDER BY user_rating DESC;

#Users don´t seem to care much about price when reviewing since avg price isince rates 0, 2, 3 have the lower price mean. 

SELECT AVG(user_rating)
FROM Apple 
WHERE price > 10

SELECT AVG(user_rating)
FROM Apple 
WHERE price > 5

SELECT AVG(user_rating)
FROM Apple 
WHERE price < 1

SELECT AVG(user_rating)
FROM Apple 
WHERE price = 0

#Review average does not vary much between free and expensive apps (around 3.7-3.9), so price is not a big factory

#Looking only at the top priced apps 