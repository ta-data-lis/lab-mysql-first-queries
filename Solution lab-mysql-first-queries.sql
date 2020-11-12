SELECT * FROM AppleStore


#1. Which are the different genres?
SELECT
prime_genre
FROM AppleStore
GROUP BY prime_genre;

#2. Which is the genre with most apps rated?

SELECT
prime_genre,
COUNT(rating_count_tot) AS app_number
FROM AppleStore
GROUP BY prime_genre
ORDER BY app_number desc;

#3. Which is the genre with the most apps?

SELECT
prime_genre,
COUNT(track_name) AS app_number
FROM AppleStore
GROUP BY prime_genre, app_number
ORDER BY app_number desc;

#4. Which is the one with the fewest apps?

SELECT
prime_genre,
COUNT(track_name) AS app_number
FROM AppleStore
GROUP BY prime_genre, app_number
ORDER BY app_number;

#5. Take the 10 apps most rated.

SELECT
track_name,
SUM(rating_count_tot) as nr_of_ratings
FROM AppleStore
GROUP BY track_name
ORDER BY nr_of_ratings desc
LIMIT 10;

##The output on this does not look right.

#6. Take the 10 apps best rated by users.

SELECT
track_name,
user_rating
FROM AppleStore
ORDER BY user_rating desc
LIMIT 10;

#7. Take a look on the data you retrieved in the question 5. Give some insights.

##Social Media is on top despite games being the most rated genre. But since its winner-takes-all there are much fewer social media apps.

#6. Take a look on the data you retrieved in the question 6. Give some insights.

#I don't know if this is right as there are probably much more apps rated at 5.0 and one should also consider the number or ratings. 

#9. Now compare the data from questions 5 and 6. What do you see?

#In 5. there are much more known apps, in 6 you have a lot of unknown once who probably have few ratings.

#10. How could you find the top 3 regarding the user ratings but also the number of votes?

SELECT
track_name,
user_rating,
SUM(rating_count_tot) as nr_of_ratings
FROM AppleStore
GROUP BY track_name, user_rating
ORDER BY user_rating desc, nr_of_ratings desc
LIMIT 3;

#11. Do people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT
price,
SUM(rating_count_tot)
FROM AppleStore
GROUP BY 1
ORDER BY 1;

--strong negative correlation between user rating count and price.


