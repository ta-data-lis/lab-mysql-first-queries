#1. What are the different genres?
SELECT prime_genre
FROM applestore
GROUP BY prime_genre;

#2. What is the genre with more apps rated?
SELECT prime_genre, SUM(rating_count_tot)
FROM applestore
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1;

#3. What is the genre with more apps?
SELECT prime_genre, COUNT(track_name)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC
LIMIT 1;

#4. Which is the one with less?
SELECT prime_genre, COUNT(track_name)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) 
LIMIT 1;

#5. Take the 10 apps most rated.
SELECT track_name
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

#6. Take the 10 apps best rated by users.
SELECT track_name
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;

#7. Take a look on the data you retrieved in the question 5. Give some insights.
# 4 of the top 10 apps are games, only 2 are social networking apps. All apps are suitable for children over 12. 

#8. Take a look on the data you retrieved in the question 6. Give some insights.
# 6 of the top 10 apps are game, yet none are social networking apps. Some of the best rated apps do not have enough ratings to be trustworthy representations of their quality. 

#9. Now compare the data from questions 5 and 6. What do you see?
#Unlike apps with high volumes of ratings, 9/10 of the best rated apps are paid apps.

#10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT *
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC 
LIMIT 3;

#11. Do people care about price? Do some queries, comment why you are doing them, and the results you retrieve. What is your conclusion?
# Step one, let's see how many of the top 20 best rated apps are paid

SELECT user_rating, price
FROM applestore
ORDER BY user_rating DESC;

#It seems that users don't have an obvious preference for free apps. Let's see how the bottom of the ratings table looks like. 

SELECT user_rating, price
FROM applestore
ORDER BY user_rating
LIMIT 20;

#There's still many apps with a price at the bottom of the table. But perhaps our data is being skewed by apps with no rating count. 
#Let's adjust the table to favour apps with more ratings:

SELECT user_rating, rating_count_tot, price
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC 
LIMIT 20;

#Now we start to see more free apps at the top of the table. This suggests that more people download free apps, because free apps seems to have more ratings. 
# Let's test that. Let's see the sum of ratings for each price point.
SELECT SUM(rating_count_tot), price
FROM applestore
GROUP BY price
ORDER BY SUM(rating_count_tot) DESC;

#Well, it appears that there is a strong correlation between the cheapness of apps and the number of ratings. 
#This would initially suggest that users do indeed care about price