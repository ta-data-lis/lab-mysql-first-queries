/* Question 1*/
/* Which are the different genres? */
SELECT DISTINCT prime_genre
FROM ironhack.applestore;

/* Question 2 */
/* Which is the genre with more apps rated? */
SELECT prime_genre, count('track_name') AS number_of_apps 
FROM ironhack.applestore
/* To select only the rated ones */
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY number_of_apps DESC
LIMIT 1;

/* Question 3 */
/* Which is the genre with more apps? */
SELECT prime_genre, count('track_name') AS number_of_apps 
FROM ironhack.applestore
GROUP BY prime_genre
ORDER BY number_of_apps DESC
LIMIT 1;

/* Question 4 */
/* Which is the one with less? */
SELECT prime_genre, count('track_name') AS number_of_apps 
FROM ironhack.applestore
GROUP BY prime_genre
ORDER BY number_of_apps ASC
LIMIT 1;

/* Question 5 */
/* Take the 10 apps most rated. */
SELECT track_name
FROM ironhack.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/* Question 6 */
/* Take the 10 apps best rated by users. */
SELECT track_name
FROM ironhack.applestore
ORDER BY user_rating DESC,rating_count_tot DESC
LIMIT 10;

/* Question 7 */
/* Take a look on the data you retrieved in the question 5. Give some insights. */
SELECT *
FROM ironhack.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;
/* All of the most rated apps are free, most are games (which is to be expected according to the result of question 2). 
 It's likely that the apps that are most rated are also the ones with the largest number of users, assuming the app rating rate is similar across apps. */

/* Question 8 */
/* Take a look on the data you retrieved in the question 6. Give some insights. */
SELECT *
FROM ironhack.applestore
ORDER BY user_rating DESC,rating_count_tot DESC
LIMIT 10;
/* 90% of the apps in this list are Games, and less than half are paid apps (33%)

/* Question 9 */
/* Now compare the data from questions 5 and 6. What do you see? */

/* intersects table with 10 best rated apps with table with 10 most rated apps */
SELECT * FROM
(SELECT * 
FROM ironhack.applestore
ORDER BY user_rating DESC,rating_count_tot DESC
LIMIT 10) AS  best_rated
INNER JOIN (SELECT *  
FROM ironhack.applestore
ORDER BY rating_count_tot DESC
LIMIT 10) AS most_rated ON most_rated.track_name = best_rated.track_name;
/* None of the 10 best rated apps is one of the 10 most rated apps, it is possible that larger numbers of reviews negatively impacts the average score */ 
/* A larger porportion of the the best rated are games than in most rated apps. We should check if games tend to be better rated than other app genres. */

/* Question 10 */
/* How could you take the top 3 regarding the user ratings but also the number of votes? */
SELECT track_name
FROM ironhack.applestore
ORDER BY user_rating DESC,rating_count_tot DESC
LIMIT 3;

/* Question 11 */
/* Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */

/* Find out what is the maximum, minimum, median and mean */
SELECT AVG(price)
FROM ironhack.applestore
/* average price is 1.6818916269951598 */
SELECT MAX(price)
FROM ironhack.applestore
/* maximum price is 299.99 */
SELECT MIN(price)
FROM ironhack.applestore
/* minimum price is 0 */

SELECT price, sum(rating_count_tot) AS TotalSum 
FROM ironhack.applestore
GROUP BY price
ORDER BY price DESC;

SELECT count(price)
FROM ironhack.applestore
WHERE price = 0;
/* a total of 4049 apps are free */

SELECT count(price)
FROM ironhack.applestore
WHERE price > 0;
/* a total of 3093 apps are free */
/* 43% of apps are paid */

SELECT sum(rating_count_tot)
FROM ironhack.applestore
WHERE price > 0;
/* there are 12567691 ratings for paid apps */

SELECT sum(rating_count_tot)
FROM ironhack.applestore
WHERE price = 0;
/* there are 79973561 ratings for paid apps */
/* 86% of ratings are of free apps, assuming ratings as a proxy for number of users, the most used apps are the free ones, users seem to be sensitive to price. */





