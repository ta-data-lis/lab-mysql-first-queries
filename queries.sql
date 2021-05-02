/* SQL queries for the lab lab-mysql-first-queries */

/* 1. What are the different genres? */
SELECT DISTINCT prime_genre AS genres 
FROM apple_store.applestore;

/* 2. Which is the genre with more apps rated? */
SELECT prime_genre AS genre, rating_count_tot AS number_of_ratings
FROM apple_store.applestore
ORDER BY number_of_ratings DESC
LIMIT 1;

/* 3. Which is the genre with more apps? */ 
SELECT prime_genre AS genre, COUNT(id) AS number_of_apps
FROM apple_store.applestore
GROUP BY prime_genre 
ORDER BY number_of_apps DESC
LIMIT 1;

/* 4. Which is the one with less? */
SELECT prime_genre AS genre, COUNT(id) AS number_of_apps
FROM apple_store.applestore
GROUP BY prime_genre 
ORDER BY number_of_apps ASC
LIMIT 1;

/* 5. Take the 10 apps most rated. */ 
SELECT track_name AS name, rating_count_tot AS number_of_ratings
FROM apple_store.applestore
ORDER BY number_of_ratings DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users. */
SELECT track_name as name, user_rating
FROM apple_store.applestore
ORDER BY user_rating DESC
LIMIT 10;

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */ 

SELECT track_name AS app_name, user_rating, rating_count_tot AS number_of_votes
FROM apple_store.applestore
WHERE apple_store.applestore.user_rating = 5
ORDER BY number_of_votes DESC
LIMIT 3;

/* 11. Does people care about the price? */


/* First save the average price, the average number of votes and the division between the standard deviation of the price and the standard deviation of the number of votes */
SELECT @firstValue:=AVG(price),
@secondValue:=AVG(rating_count_tot),
@division:=(stddev_samp(price) * stddev_samp(rating_count_tot)) FROM apple_store.applestore;

/* Take the (sum of ((the price minus the average price) multiplied with the (number of votes minus the average of number of votes)) divided by the count of price minus one mulitiplied with the (the division between the standard deviation of the price and the standard deviation of the number of votes) */
SELECT SUM((price - @firstValue) * (rating_count_tot - @secondValue))/((COUNT(price) - 1) * @division) FROM apple_store.applestore;


