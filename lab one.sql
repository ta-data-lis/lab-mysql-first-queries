CREATE DATABASE AppleStore;

# 1. Which are the different genres?
SELECT prime_genre 
FROM applestore
GROUP BY prime_genre;

# 2. Which is the genre with more apps rated?
SELECT prime_genre, rating_count_tot
FROM applestore
GROUP BY prime_genre
ORDER BY rating_count_tot DESC;

# 3. Which is the genre with more apps?
SELECT prime_genre, COUNT(prime_genre)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC;

# 4. Which is the one with less?
SELECT prime_genre, COUNT(prime_genre)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC;

# 5. Take the 10 apps most rated.
SELECT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

# 6. Take the 10 apps best rated by users.
SELECT track_name, user_rating
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;
 
# 7. Take a look on the data you retrieved in the question 5. Give some insights - 10 apps most rated 
SELECT track_name, rating_count_tot, prime_genre
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;
# facebook is the app that got most ratings, followed by instagram
# we have two music apps and the bible app under the apps that got the most ratings
# last in this ranking is the game angry birds

# 8. Take a look on the data you retrieved in the question 6. Give some insights - 10 apps best rated by users
SELECT track_name, user_rating, prime_genre
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;
# there are at least 10 apps with the best rating of 5
# most of the apps are gaming apps

# 9. Now compare the data from questions 5 and 6. What do you see?
# the apps that received most ratings are not necessary the best apps
# the apps selected are only in one of the table

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot, prime_genre
FROM applestore
ORDER BY user_rating and rating_count_tot DESC
LIMIT 3;

# 11. Does people care about the price? 
# Do some queries, comment why are you doing them and the results you retrieve. 
# What is your conclusion?
SELECT track_name, price, user_rating, rating_count_tot, prime_genre
FROM applestore
ORDER BY user_rating DESC;

SELECT track_name, price, user_rating, rating_count_tot, prime_genre
FROM applestore
ORDER BY user_rating ASC;

# it seems like the price does not really matter, people give good or bad ratings for free apps and for apps that you have to buy
# also the frequency of ratings varies a lot and it does not matter if people payed for the app or not

