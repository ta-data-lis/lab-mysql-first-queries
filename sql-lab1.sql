CREATE DATABASE lab_mysql_Alona;

SELECT * FROM AppleStore;

SELECT DISTINCT(prime_genre) FROM AppleStore; #1. Which are the different genres?

SELECT DISTINCT(prime_genre), SUM(rating_count_tot) FROM AppleStore #2. Which is the genre with more apps rated?
GROUP BY prime_genre;

SELECT DISTINCT(prime_genre), COUNT(prime_genre)FROM AppleStore #3. Which is the genre with more apps?
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
LIMIT 1;

SELECT DISTINCT(prime_genre), COUNT(prime_genre) FROM AppleStore #4. Which is the one with less?
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
LIMIT 1;

SELECT track_name, rating_count_tot FROM AppleStore#5. Take the 10 apps most rated.
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating FROM AppleStore#6. Take the 10 apps best rated by users.
ORDER BY user_rating  DESC
LIMIT 10;

# I dont see any relations between this two ratings

SELECT track_name, rating_count_tot, user_rating FROM AppleStore #9. Now compare the data from questions 5 and 6. What do you see?
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, rating_count_tot, user_rating FROM AppleStore #10. How could you take the top 3 regarding the user ratings but also the number of votes
#ORDER BY user_rating DESC, rating_count_tot DESC
ORDER BY rating_count_tot DESC, user_rating DESC
LIMIT 3;

#11. Does people care about the price? Do some queries, comment why are you doing them 
#and the results you retrieve. What is your conclusion?
SELECT track_name, price, rating_count_tot, user_rating FROM AppleStore
#ORDER BY price DESC, rating_count_tot DESC; 
#Not much people are giving rating for the most expensive applications
ORDER BY price ASC, rating_count_tot DESC;
#Most of all people likes free applications or the most cheapest
