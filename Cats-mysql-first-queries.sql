#SELECT * FROM sakila.applestore;

#1.Which are the different genres?
SELECT prime_genre FROM sakila.applestore
GROUP BY prime_genre;

#2.Which is the genre with more apps rated?
SELECT prime_genre, COUNT(rating_count_tot) FROM sakila.applestore
GROUP BY prime_genre;

#3. Which is the genre with more apps?
SELECT prime_genre, COUNT(track_name) FROM sakila.applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC
LIMIT 1;

#4. Which is the one with less?
SELECT prime_genre, COUNT(track_name) FROM sakila.applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC
LIMIT 1;

#5. Take the 10 apps most rated.
SELECT track_name, rating_count_tot FROM sakila.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

#6. Take the 10 apps best rated by users.
SELECT track_name, user_rating FROM sakila.applestore
WHERE user_rating = 5
ORDER BY rating_count_tot DESC #to find the best score to number of ratings relation
LIMIT 10;

#7. Take a look on the data you retrieved in the question 5. Give some insights.
SELECT * FROM sakila.applestore
ORDER BY rating_count_tot DESC;
#Insights: Most rated apps are not directly correlated with higher ratings;
#Insights: The genre with more apps is also the most dominant in the top;

#8. Take a look on the data you retrieved in the question 6. Give some insights.
SELECT * FROM sakila.applestore
WHERE user_rating = 5
ORDER BY rating_count_tot DESC #to find the best score to number of ratings relation
LIMIT 10;
#Insights: The majority of the top 10 best rated apps are Games.

#9.Now compare the data from questions 5 and 6. What do you see?
#I see that Games are still the dominant genre but that none of the apps match.


#10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating FROM sakila.applestore
WHERE user_rating = 5
ORDER BY rating_count_tot DESC 
LIMIT 3;
