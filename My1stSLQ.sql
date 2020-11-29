/* Query to understand the database */
SELECT *
FROM applestore

/* 1. Which are the different genres? */
SELECT prime_genre
FROM applestore
GROUP BY prime_genre

/* 2. Which is the genre with more apps rated? */
SELECT prime_genre, COUNT(id)
FROM applestore
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY count(id) DESC
LIMIT 1;

/* 3. Which is the genre with more apps? */
SELECT prime_genre, COUNT(track_name)
FROM applestore
GROUP BY prime_genre
ORDER BY count(track_name) DESC
LIMIT 1;

/* 4. Which is the one with less? */
SELECT prime_genre, COUNT(track_name)
FROM applestore
GROUP BY prime_genre
ORDER BY count(track_name) ASC
LIMIT 1;

/*5. Take the 10 apps most rated. */
SELECT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/
SELECT track_name, user_rating
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */
/* Facebook is the application with more ratings */ 

/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */
/* Facebook is not included in the top 10 applications with higher rating */ 

/* 9. Now compare the data from questions 5 and 6. What do you see? */
/* That the top 10 most rated apps are not the ones with the higher rating */

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */
SELECT track_name, user_rating, rating_count_tot
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/* 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */

/* Query to identify the more expensive apps and their ratio */
SELECT track_name, price, user_rating, rating_count_tot, round(rating_count_tot/price)*100 as ratio
FROM applestore
ORDER BY price DESC
LIMIT 10;

/* Query to identify the apps with the higher ratio */
SELECT track_name, price, user_rating, rating_count_tot, round(rating_count_tot/price)*100 as ratio
FROM applestore
ORDER BY ratio DESC
LIMIT 10;

/* Query to identify the cheapes apps and their ratio */
SELECT track_name, price, user_rating, rating_count_tot, round(rating_count_tot/price)*100 as ratio
FROM applestore
ORDER BY price ASC
LIMIT 10;
/* There is no clear relation between price, number of ratings provided or the rating */

 