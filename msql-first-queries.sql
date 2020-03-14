SELECT *
FROM sakila2.applestore;

/*1. Which are the different genres?*/

SELECT DISTINCT prime_genre 
FROM sakila2.applestore;

/*2. Which is the genre with more apps rated?*/

SELECT DISTINCT prime_genre, rating_count_tot
FROM sakila2.applestore
ORDER BY rating_count_tot DESC
LIMIT 1;

/*3. Which is the genre with more apps?*/

SELECT prime_genre, COUNT(prime_genre) as 'Number'
FROM sakila2.applestore
GROUP BY prime_genre
ORDER BY 'Number' DESC
LIMIT 1;

/*4. Which is the one with less?*/

SELECT prime_genre, COUNT(prime_genre)
FROM sakila2.applestore
GROUP BY prime_genre;

/*5. Take the 10 apps most rated.*/

SELECT track_name, prime_genre, user_rating, rating_count_tot, price
FROM sakila2.applestore
ORDER BY rating_count_tot DESC limit 10;

/*6. Take the 10 apps best rated by users.*/

SELECT track_name, prime_genre, price, `sup_devices.num`
FROM sakila2.applestore
ORDER BY user_rating DESC limit 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.

Most of the apps with the biggest number of ratings have an user rating above 4. They are all free, which mostly explains why they have the biggest number of rating count (more downloads).

*/

/*8. Take a look on the data you retrieved in the question 6. Give some insights.

Most of them are games and their price is lower than $10. The fact they support a lot of devices might explain a high user rating.

*/

/*9. Now compare the data from questions 5 and 6. What do you see?

The price doesn't seem to influence the user rating.

*/

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/

SELECT track_name, user_rating, rating_count_tot
FROM sakila2.applestore
ORDER BY user_rating DESC, rating_count_tot DESC limit 3;

/*11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/

SELECT track_name, user_rating, price
FROM sakila2.applestore
ORDER BY rating_count_tot DESC limit 10;

/*They seem to care, considering the most downloaded apps are all free.*/

SELECT track_name, user_rating, price
FROM sakila2.applestore
ORDER BY user_rating DESC, rating_count_tot DESC limit 10;

/*The same goes when we consider the user rating. The price is not higher than $1.99 for one of the apps and the majority is free.*/
