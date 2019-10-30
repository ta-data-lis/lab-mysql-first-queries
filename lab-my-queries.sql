CREATE DATABASE apple_store;
USE apple_store;
SELECT * FROM applestore;

SELECT COUNT(*)
FROM applestore;

## 1. Which are the different genres?
SELECT prime_genre 
FROM applestore 
GROUP BY prime_genre;

## 2. Which is the genre with more apps rated?
SELECT prime_genre, sum(rating_count_tot)
FROM applestore 
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC; 

## 3. Which is the genre with more apps?
SELECT prime_genre, COUNT(*) 
FROM applestore 
GROUP BY prime_genre
ORDER BY count(*) DESC;

## 4. Which is the one with less?
SELECT prime_genre, COUNT(*) 
FROM applestore 
GROUP BY prime_genre
ORDER BY count(*) ASC;

## 5. Take the 10 apps most rated.
SELECT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

## 6. Take the 10 apps best rated by users.
SELECT track_name, user_rating
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;

## 7. Take a look on the data you retrieved in the question 5. Give some insights.
## Social networks, games, and music streaming apps fill the top 10 list of most ratings. These are all well-known apps across the world.

## 8. Take a look on the data you retrieved in the question 6. Give some insights.
## All these have ratings of 5 so this information is not necessarily useful unless we index it against another column.

## 9. Now compare the data from questions 5 and 6. What do you see?
## There is no overlap between the two. The 'best rated' apps do not take into account quantitiy of ratings so can be in the top list if 1 person votes it a 5. 

## 10. How could you take the top 3 regarding the user ratings but also the number of votes?
## Option 1 - Add a filter to the minimum number of ratings and then rank the user rating from that filtered list.
SELECT track_name, user_rating, rating_count_tot
FROM applestore
WHERE rating_count_tot > 1000000
ORDER BY user_rating DESC
LIMIT 3;


## Option 2 - Switch the above to filter to ratings of 5 and rank by total number of ratings.
SELECT track_name, user_rating, rating_count_tot
FROM applestore
WHERE user_rating > 4.5
ORDER BY rating_count_tot DESC
LIMIT 3;


## 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

### Order by most expensive - These apps do not have many reviews, most with a few hundred. There is one that has nearly 1000 reviews, but it is rated low, most likely due to people upset about the quality of the app given its price.
SELECT track_name, price, user_rating, rating_count_tot
FROM applestore
ORDER BY price DESC;

### Apps with most number of ratings are mostly free. There are only 10 or so apps in the top 100 most rated apps that cost money and mostly are just a few dollars.
SELECT track_name, price, user_rating, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 100;

### Some niche apps in the gaming and productivity / education genre that people are willing to pay for and enjoy using.
SELECT track_name, prime_genre, price, user_rating, rating_count_tot
FROM applestore
WHERE price > 10 AND user_rating > 4
ORDER BY rating_count_tot DESC;
