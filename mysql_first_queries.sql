
CREATE DATABASE LABS;

SELECT * FROM labs.applestore;

/**1. Which are the different genres?**/

SELECT DISTINCT prime_genre
FROM labs.applestore;

/**2. Which is the genre with more apps rated?**/

SELECT prime_genre, sum(rating_count_tot) AS Tot_Rating
FROM labs.applestore
GROUP BY prime_genre
ORDER BY Tot_Rating DESC
LIMIT 5;

/**3. Which is the genre with more apps?**/

SELECT prime_genre, COUNT(*) AS app_count
FROM labs.applestore
GROUP BY prime_genre
ORDER BY app_count DESC
LIMIT 3;

/**4. Which is the one with less?**/

SELECT prime_genre, COUNT(*) AS app_count
FROM labs.applestore
GROUP BY prime_genre
ORDER BY app_count 
LIMIT 3;

/**5. Take the 10 apps most rated.**/

SELECT track_name, rating_count_tot
FROM labs.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/**6. Take the 10 apps best rated by users.**/

SELECT prime_genre, ROUND(AVG(user_rating),1) AS Users_Rating
FROM labs.applestore
GROUP BY prime_genre
ORDER BY Users_Rating DESC
LIMIT 10;

SELECT track_name, user_rating
FROM labs.applestore
ORDER BY user_rating DESC
LIMIT 10;

/**7. Take a look on the data you retrieved in the question 5. Give some insights.**/

/**8. Take a look on the data you retrieved in the question 6. Give some insights.**/

/**9. Now compare the data from questions 5 and 6. What do you see?**/

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?**/

SELECT prime_genre, ROUND(AVG(user_rating),1) as Rating,SUM(rating_count_tot) AS n_votes
FROM labs.applestore
WHERE prime_genre IN (SELECT prime_genre 
						FROM labs.applestore
                        ORDER BY user_rating DESC
                        )
GROUP BY prime_genre 
ORDER BY Rating DESC
LIMIT 3;

/**11. Does people care about the price?** Do some queries, comment why are you doing them 
and the results you retrieve. What is your conclusion?*/

