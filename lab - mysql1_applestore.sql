CREATE DATABASE apple_lab;

SELECT *
FROM apple_lab.applestore;

/*1. Which are the different genres?*/

SELECT DISTINCT prime_genre
FROM apple_lab.applestore;

/* 2. Which is the genre with more apps rated?*/
/*Nao esquecer de por limit 1*/

SELECT prime_genre, COUNT(rating_count_tot)
FROM apple_lab.applestore
GROUP BY prime_genre
ORDER BY COUNT(rating_count_tot) DESC
LIMIT 1;

/*3. Which is the genre with more apps?*/

SELECT prime_genre, COUNT(track_name)
FROM apple_lab.applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC
LIMIT 1;

/*4. Which is the one with less?*/

SELECT prime_genre, COUNT(track_name)
FROM apple_lab.applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC
LIMIT 1;

/*5. Take the 10 apps most rated.*/
/*This one I have doubt, if i need to count or no the rating_count_tot column */

SELECT track_name, rating_count_tot
FROM apple_lab.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/

SELECT DISTINCT track_name, user_rating
FROM apple_lab.applestore
ORDER BY user_rating DESC
LIMIT 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/* Facebook are the app with the bigest number of rating, but with lowest score among the TOP 10. 
Games and Music apps are the genders that most appear in the TOP 10, all with a good rating by users.*/

SELECT track_name, rating_count_tot,prime_genre, user_rating
FROM apple_lab.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/* Games are the apps with the best score, but adding rating_count_tot at the QUERY it is clear that these 
apps doesn't have many ratings compared to the TOP 10 in question 5 */

SELECT DISTINCT track_name, user_rating, prime_genre,rating_count_tot
FROM apple_lab.applestore
ORDER BY user_rating DESC
LIMIT 10;

/*9. Now compare the data from questions 5 and 6. What do you see?*/
/*The TOP 10 best rated by users are not in the 10 apps most rated*/

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/

SELECT DISTINCT track_name, prime_genre, rating_count_tot, user_rating
FROM apple_lab.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


/*11. Does people care about the price?
Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/

/* Adding the price at the query above, we can see that the apps with the best score by the users are mostly free apps*/

SELECT DISTINCT track_name, prime_genre, rating_count_tot, user_rating, price
FROM apple_lab.applestore
ORDER BY user_rating DESC, rating_count_tot DESC, price DESC
LIMIT 10;

/* The most expensive apps are educations apps, but they are apps with low rating by users*/
SELECT DISTINCT track_name, prime_genre, rating_count_tot, user_rating, price
FROM apple_lab.applestore
ORDER BY price DESC
LIMIT 10;