SELECT *
FROM Apple_schema.applestore;


/*1. Which are the different genres?**/

SELECT DISTINCT prime_genre
FROM Apple_schema.applestore;

/*2. Which is the genre with more apps rated?*/

SELECT prime_genre, COUNT(rating_count_tot)
FROM Apple_schema.applestore
GROUP BY prime_genre
ORDER BY COUNT(rating_count_tot) DESC
LIMIT 1;

/*3. Which is the genre with more apps?*/

SELECT prime_genre, COUNT(track_name)
FROM Apple_schema.applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC
LIMIT 1;

/*4. Which is the one with less?*/

SELECT prime_genre, COUNT(track_name)
FROM Apple_schema.applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC
LIMIT 1;

/*5. Take the 10 apps most rated.*/

SELECT DISTINCT track_name, rating_count_tot
FROM Apple_schema.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users. */
SELECT *
FROM Apple_schema.applestore;


SELECT DISTINCT track_name, user_rating
FROM Apple_schema.applestore
ORDER BY user_rating DESC
LIMIT 10;


/*7. Take a look on the data you retrieved in the question 5. Give some insights. */
/*Games and music genders are very much used and popular, but Social Networking is still ahead of everything else by far.   */
SELECT DISTINCT track_name, rating_count_tot, prime_genre
FROM Apple_schema.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/*Games for training the brain are very popular and evergreen, all of them with the best rates */
SELECT DISTINCT track_name, user_rating
FROM Apple_schema.applestore
ORDER BY user_rating DESC
LIMIT 10;


/*9. Now compare the data from questions 5 and 6. What do you see? */
/*The best rated apps are not in the top used apps, and viceversa the most used are not among the best rated. */

SELECT DISTINCT track_name, rating_count_tot, prime_genre
FROM Apple_schema.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT DISTINCT track_name, user_rating
FROM Apple_schema.applestore
ORDER BY user_rating DESC
LIMIT 10;

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/

SELECT DISTINCT track_name, prime_genre, rating_count_tot, user_rating
FROM Apple_schema.applestore
ORDER BY user_rating DESC, rating_count_tot DESC 
LIMIT 3;

/*11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */
SELECT *
FROM Apple_schema.applestore;

/* Checking between the top rated and most voted apps, how much expensive they are, and the result is that mosto of them are for free.*/

SELECT DISTINCT track_name, prime_genre, rating_count_tot, user_rating, price
FROM Apple_schema.applestore
ORDER BY user_rating DESC, rating_count_tot DESC, price DESC
LIMIT 15;

/*Even though neither for free nor cheap "LAMP words for life" has a good rating out of a small number of users that rated it*/

SELECT DISTINCT track_name, prime_genre, rating_count_tot, user_rating, price
FROM Apple_schema.applestore
ORDER BY price DESC
LIMIT 100;

/* Many games from Asia have a average game price and they also get a zero in the ratings*/


SELECT DISTINCT track_name, prime_genre, rating_count_tot, user_rating, price
FROM Apple_schema.applestore
ORDER BY user_rating ASC
LIMIT 100;




