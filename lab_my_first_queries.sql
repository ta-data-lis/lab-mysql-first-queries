SELECT *
FROM ironhack.applestore;

/* Question 1. Which are the different genres?*/
SELECT prime_genre
FROM ironhack.applestore
GROUP BY prime_genre;

/* Question 2. Which is the genre with more apps rated?*/
SELECT prime_genre, SUM(rating_count_tot) AS sum_rating_count_tot
FROM ironhack.applestore
GROUP BY prime_genre
ORDER BY sum_rating_count_tot DESC
LIMIT 1;

/* Question 3. Which is the genre with more apps?*/
SELECT prime_genre,Count(prime_genre) AS count_apps
FROM ironhack.applestore
GROUP BY prime_genre
ORDER BY count_apps DESC
LIMIT 1;

/* Question 4. Which is the one with less?*/
SELECT prime_genre,Count(prime_genre) AS count_apps
FROM ironhack.applestore
GROUP BY prime_genre
ORDER BY count_apps ASC
LIMIT 1;

/* Question 5. Take the 10 apps most rated.*/
SELECT track_name, rating_count_tot /*supposing that track_name doesn't repeat*/
FROM ironhack.applestore
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

/* Question 6. Take the 10 apps best rated by users.*/
SELECT track_name,user_rating, rating_count_tot /*supposing that track_name doesn't repeat*/
FROM ironhack.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

/* Question 7. Take a look on the data you retrieved in the question 5. Give some insights.*/
SELECT track_name, rating_count_tot, prime_genre, price /*supposing that track_name doesn't repeat*/
FROM ironhack.applestore
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;
/* The most rated app belongs to games genre and all apps are free.*/

/* Question 8. Take a look on the data you retrieved in the question 6. Give some insights.*/
SELECT track_name,user_rating, rating_count_tot, prime_genre, price /*supposing that track_name doesn't repeat*/
FROM ironhack.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;
/* The most of best rated apps are games and some of them are not for free.*/

/* Question 9. Now compare the data from questions 5 and 6. What do you see?*/
/* The best rated apps are not the 10 apps most rated. */

/* Question 10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name,user_rating, rating_count_tot /*supposing that track_name doesn't repeat*/
FROM ironhack.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/* Question 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
SELECT AVG(rating_count_tot) AS avg_free_rating, COUNT(price) AS free_apps
FROM ironhack.applestore
WHERE price = 0;

SELECT AVG(rating_count_tot) AS avg_paid_rating, COUNT(price) AS paid_apps
FROM ironhack.applestore
WHERE price > 0;

SELECT COUNT(*)
FROM ironhack.applestore;
/* From 7142 apps: 4049 are free and 3093 are paid. Assume that all users that download apps rating them, 
56,7% of users download free apps. This value is very close to the mean, so the conclusion is people doens't care about price. */