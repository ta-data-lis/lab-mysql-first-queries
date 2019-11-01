
# 1. Which are the different genres?
SELECT DISTINCT prime_genre
FROM AppleStore;

# 2. Which is the genre with more apps rated?
SELECT prime_genre, COUNT(rating_count_tot) AS Counting
FROM AppleStore
WHERE rating_count_tot > 0
GROUP BY prime_genre;

# 3. Which is the genre with more apps?
SELECT prime_genre, COUNT(prime_genre)
FROM AppleStore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
LIMIT 1;

# 4. Which IS the ONE WITH LESS?
SELECT prime_genre, COUNT(prime_genre)
FROM AppleStore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
LIMIT 1;

# 5. Take the 10 apps most rated.
SELECT track_name, user_rating
FROM AppleStore
ORDER BY user_rating DESC
LIMIT 10;

# 6. Take the 10 apps best rated BY users.
SELECT track_name, user_rating, rating_count_tot
FROM AppleStore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

# 7. Take a look ON the DATA you retrieved IN the question 5. Give SOME insights.
### This query won't take into consideration the amount of users that rated the apps, it's imprecise

# 8. Take a look ON the DATA you retrieved IN the question 6. Give SOME insights.
### This query take into consideration the amount of user that actually rated the app, it's a reliable query

# 9. Now compare the DATA FROM questions 5 AND 6. What DO you see?
### I think I've aswered this in the questions 7 and 8

# 10. How could you take the top 3 regarding the USER ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot
FROM AppleStore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

# 11. Does people care about the price?
#SELECT COUNT()