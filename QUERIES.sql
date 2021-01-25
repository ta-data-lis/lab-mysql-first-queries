SELECT *
FROM labs.apple_df;

#1. Which are the different genres?

SELECT prime_genre
FROM labs.apple_df
GROUP BY prime_genre;

#2. Which is the genre with more apps rated?

SELECT prime_genre, count(prime_genre)
FROM labs.apple_df
WHERE rating_count_tot <> 0
GROUP BY prime_genre
ORDER BY count(prime_genre) DESC;

#3. Which is the genre with more apps?

SELECT prime_genre, count(prime_genre)
FROM labs.apple_df
GROUP BY prime_genre
ORDER BY count(prime_genre) DESC;

#4. Which is the one with less?

SELECT prime_genre, count(prime_genre)
FROM labs.apple_df
GROUP BY prime_genre
ORDER BY count(prime_genre) ASC;

#5. Take the 10 apps most rated.

SELECT track_name, rating_count_tot, price, prime_genre, cont_rating
FROM labs.apple_df
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

#6. Take the 10 apps best rated by users.

SELECT track_name, user_rating, price, prime_genre, rating_count_tot, cont_rating
FROM labs.apple_df
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

#7. Take a look on the data you retrieved in the question 5. Give some insights.

#Answered in .md file with data from the Query in question 5.

#8. Take a look on the data you retrieved in the question 6. Give some insights.

#Answered in .md file with data from the Query in question 6.

#9. Now compare the data from questions 5 and 6. What do you see?

#Answered in .md file with data from the Queries in question 5 and 6

#10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT track_name, user_rating, price, prime_genre, rating_count_tot, cont_rating
FROM labs.apple_df
GROUP BY track_name
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

#11. Do people care about the price?

#checking the most popular paid apps to see how they compare to the most popular apps in general
SELECT track_name, user_rating, price, rating_count_tot
FROM labs.apple_df
WHERE price <> 0 AND rating_count_tot > 100000
GROUP BY track_name
ORDER BY rating_count_tot DESC;

#checking the top100 most popular apps
SELECT track_name, user_rating, price, rating_count_tot
FROM labs.apple_df
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 100;

#checking the avg number of ratings and the avg rating itself for each price category
SELECT price, avg(user_rating) AS ratings, avg(rating_count_tot) AS number_ratings
FROM labs.apple_df
GROUP BY price
ORDER BY number_ratings DESC