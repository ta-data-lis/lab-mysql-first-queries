/* 1. Which are the different genres? */

SELECT DISTINCT prime_genre
FROM apple.applestore_windows;

/* 2. Which is the genre with more apps rated? */ 

SELECT prime_genre, 
	SUM(rating_count_tot) AS total_rating
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY total_rating DESC
LIMIT 1;

/* 3. Which is the genre with more apps? */

SELECT prime_genre,
	COUNT(track_name) AS app_count
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY app_count DESC
LIMIT 1;

/* 4. Which is the one with less?* */

SELECT prime_genre,
	COUNT(track_name) AS app_count
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY app_count ASC
LIMIT 1;

/* 5. Take the 10 apps most rated. */

SELECT track_name, prime_genre,
	rating_count_tot AS total_rating 
FROM apple.applestore_windows
ORDER BY total_rating DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users.* */

SELECT track_name, prime_genre,  user_rating 
FROM apple.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */


/**8. Take a look on the data you retrieved in the question 6. Give some insights.**/


/**9. Now compare the data from questions 5 and 6. What do you see?**/



/**10. How could you take the top 3 regarding the user ratings but also the number of votes?**/

SELECT track_name, user_rating, rating_count_tot AS total_rating
FROM apple.applestore_windows
ORDER BY user_rating DESC, total_rating DESC
LIMIT 3;



/**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */
SELECT track_name, price, rating_count_tot AS total_rating, user_rating
FROM apple.applestore_windows
ORDER BY price DESC, total_rating DESC, user_rating DESC
LIMIT 20;

SELECT track_name, price, rating_count_tot AS total_rating, user_rating
FROM apple.applestore_windows
ORDER BY price ASC, total_rating DESC, user_rating DESC
LIMIT 20;
SELECT * FROM apple.applestore_windows

