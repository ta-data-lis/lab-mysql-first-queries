SELECT * FROM applestore.applestore_windows;

/**1. Which are the different genres?**/

SELECT DISTINCT prime_genre
FROM applestore.applestore_windows;

/**2. Which is the genre with more apps rated?**/

SELECT DISTINCT prime_genre, SUM(rating_count_tot) AS App_ratings
FROM applestore.applestore_windows
GROUP BY prime_genre
ORDER BY App_ratings DESC;

/**3. Which is the genre with more apps?**/
SELECT DISTINCT prime_genre, COUNT(prime_genre) AS TOP_GENRE
FROM applestore.applestore_windows
GROUP BY prime_genre
ORDER BY TOP_GENRE DESC
LIMIT 1;


/**  4. Which is the ONE WITH LESS? **/

SELECT DISTINCT prime_genre, COUNT(prime_genre) AS BEST_GENRE
FROM applestore.applestore_windows
GROUP BY prime_genre
ORDER BY BEST_GENRE ASC
LIMIT 1;

/**  5. Take the 10 apps most rated **/

SELECT DISTINCT rating_count_tot, track_name
FROM applestore.applestore_windows
ORDER BY rating_count_tot DESC
Limit 10;

/*  6. Take the 10 apps BEST rated by user */

SELECT DISTINCT track_name, user_rating
FROM applestore.applestore_windows
ORDER BY user_rating DESC
Limit 10;

/**7. Take a look on the data you retrieved in the question 5. Give some insights.**/

/* The genres with the highest rating counts are usually social media platforms with games coming in second. */

/**8. Take a look on the data you retrieved in the question 6. Give some insights.**/

/* The data I retrieved only gives insight into possible spam apps being created and bots rating them 5 stars. The apps name were ?????. */

/**9. Now compare the data from questions 5 and 6. What do you see?**/

/* The apps with the most ratings will probably reflect the rating better unless you consider user ratings and number of votes. */

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?** /

SELECT DISTINCT track_name, user_rating, rating_count_tot
FROM applestore.applestore_windows
GROUP BY user_rating, rating_count_tot
ORDER BY user_rating DESC, rating_count_tot DESC
Limit 3;

/**11. Does people care about the price?**/

SELECT DISTINCT track_name, user_rating, rating_count_tot, price
FROM applestore.applestore_windows
GROUP BY user_rating, rating_count_tot ,price 
ORDER BY user_rating DESC, rating_count_tot DESC ,price ASC

/* Yes, the top rated apps have are free or under $1.99 while the lowest rated apps are the priciest.



