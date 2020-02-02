# 1. Which are the different genres?
SELECT DISTINCT prime_genre FROM apps;

# 2. Which is the genre with more apps rated?
SELECT prime_genre, COUNT(id)
FROM apps 
WHERE rating_count_tot != 0
GROUP BY prime_genre
ORDER BY COUNT(id) 
DESC LIMIT 1;

# 3. Which is the genre with more apps?
SELECT prime_genre, COUNT(id) 
FROM apps 
GROUP BY prime_genre 
ORDER BY COUNT(id) 
DESC LIMIT 1;

# 4. Which is the one with less?
SELECT prime_genre, COUNT(id) 
FROM apps
GROUP BY prime_genre 
ORDER BY COUNT(id) 
LIMIT 1;

# 5. Take the 10 apps most rated.
SELECT track_name, rating_count_tot 
FROM apps 
ORDER BY rating_count_tot DESC
LIMIT 10;

# 6. Take the 10 apps best rated by users.
SELECT track_name, user_rating
FROM apps
ORDER BY user_rating DESC
LIMIT 10;

# 7. Take a look on the data you retrieved in the question 5. Give some insights.

# 8. Take a look on the data you retrieved in the question 6. Give some insights.

SELECT track_name, rating_count_tot, user_rating
FROM apps
WHERE rating_count_tot > 100000
ORDER BY user_rating DESC
LIMIT 10;

# 9. Now compare the data from questions 5 and 6. What do you see?

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot 
FROM apps
ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 3;

# 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT rating_count_tot, AVG(price) 
FROM apps
GROUP BY rating_count_tot
ORDER BY rating_count_tot DESC;

SELECT user_rating, AVG(price) 
FROM apps
GROUP BY user_rating
ORDER BY user_rating DESC;

SELECT price, rating_count_tot, user_rating
FROM apps
WHERE price = 0 AND rating_count_tot > 100000
ORDER BY user_rating DESC;

