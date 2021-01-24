SELECT * FROM applestore.applestore;

/*1. Which are the different genres?*/

SELECT prime_genre 
FROM applestore.applestore
GROUP BY prime_genre;

/*2. Which is the genre with more apps rated?*/

SELECT prime_genre, SUM(rating_count_tot) AS number_ratings
FROM applestore.applestore
GROUP BY prime_genre
LIMIT 1;

/*3. Which is the genre with more apps?*/

SELECT prime_genre, COUNT(id) AS number_apps
FROM applestore.applestore
GROUP BY prime_genre
ORDER BY number_apps DESC
LIMIT 1;

/*4. Which is the one with less?*/

SELECT prime_genre, COUNT(id) AS number_apps
FROM applestore.applestore
GROUP BY prime_genre
ORDER BY number_apps ASC
LIMIT 1;

/*5. Take the 10 apps most rated.*/

SELECT prime_genre, SUM(rating_count_tot) AS number_ratings
FROM applestore.applestore
GROUP BY prime_genre
ORDER BY number_ratings DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/

SELECT track_name, user_rating, prime_genre
FROM applestore.applestore
ORDER BY user_rating DESC
LIMIT 10;

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/

SELECT track_name, user_rating, rating_count_tot AS number_votes, prime_genre
FROM applestore.applestore
WHERE user_rating = 5
ORDER BY number_votes DESC
LIMIT 3;

/*11. Does people care about the price?*/

SELECT price, currency, sum(rating_count_tot)
FROM applestore.applestore
GROUP BY price
ORDER BY sum(rating_count_tot) DESC
LIMIT 10;