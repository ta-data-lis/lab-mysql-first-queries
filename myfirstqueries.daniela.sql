SELECT *
FROM labs.applestore;


/* 1. Which are the different genres?*/
SELECT DISTINCT prime_genre
FROM labs.applestore;


/* 2. Which is the genre with more apps rated? */
SELECT prime_genre, SUM(rating_count_tot) as sum_rating_count_total
FROM labs.applestore
GROUP BY prime_genre
ORDER BY sum_rating_count_total DESC
LIMIT 1;


/* 3. Which is the genre with more apps? */
SELECT prime_genre,Count(prime_genre)
FROM labs.applestore
GROUP BY prime_genre
ORDER BY Count(prime_genre) DESC
LIMIT 1;


/* 4. Which is the one with less? */
SELECT prime_genre,Count(prime_genre)
FROM labs.applestore
GROUP BY prime_genre
ORDER BY Count(prime_genre) ASC
LIMIT 1;


/* 5. Take the 10 apps most rated */
SELECT track_name
FROM labs.applestore
GROUP BY track_name
ORDER BY SUM(rating_count_tot) DESC
LIMIT 10;


/* 6. Take the 10 apps best rated by users */
SELECT track_name, user_rating, rating_count_tot
FROM labs.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;


/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */


/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */


/* 9. Now compare the data from questions 5 and 6. What do you see? */


/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */
SELECT track_name, user_rating, rating_count_tot
FROM labs.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


/* 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */
SELECT price, count(sup_devices.num)
FROM labs.applestore
GROUP BY price
ORDER BY sup_devices.num DESC;

SELECT user_rating, avg(price)
FROM labs.AppleStore
GROUP BY user_rating
ORDER BY avg(price) DESC;





