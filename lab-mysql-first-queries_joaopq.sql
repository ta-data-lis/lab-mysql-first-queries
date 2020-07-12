/* 1. Which are the different genres?*/
SELECT DISTINCT prime_genre
FROM `lab-mysql-first-queries-master`.applestore;

/* 2. Which is the genre with more apps rated? */
SELECT DISTINCT prime_genre, SUM(rating_count_tot) AS total_rating
FROM `lab-mysql-first-queries-master`.applestore AS f
GROUP BY prime_genre
ORDER BY total_rating DESC
LIMIT 1

/* 3. Which is the genre with more apps? */
SELECT DISTINCT prime_genre, COUNT(track_name) AS total_tracks
FROM `lab-mysql-first-queries-master`.applestore AS f
GROUP BY prime_genre
ORDER BY total_tracks DESC
LIMIT 1

/* 5. Take the 10 apps most rated. */
SELECT track_name, rating_count_tot, prime_genre
FROM `lab-mysql-first-queries-master`.applestore AS f
ORDER BY rating_count_tot DESC
LIMIT 10

/* 6. Take the 10 apps best rated by users. */
SELECT track_name, user_rating, prime_genre
FROM `lab-mysql-first-queries-master`.applestore AS f
ORDER BY user_rating DESC
LIMIT 10

/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */
/* ANSWER: We can see that social media and games are the most commnon rated types of apps. */

/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */
/* ANSWER:  The apps that are better rated by users tend to be games, except for TurboScan. */

/* 9. Now compare the data from questions 5 and 6. What do you see? */
/* We can see that apps who are most rated arent necessarily the apps that have the best user ratings */

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */
SELECT track_name, user_rating
FROM `lab-mysql-first-queries-master`.applestore AS f
ORDER BY user_rating, rating_count_tot DESC
LIMIT 10

/* 11. Does people care about the price?
Do some queries, comment why are you doing them and the results you retrieve.
What is your conclusion? */
/* Answer: no, they don't care about the price, seemingly. */
/* The price fluctuations are wide be it in the case of the best user rated apps as the worst rated ones.*/

SELECT track_name, user_rating, price
FROM `lab-mysql-first-queries-master`.applestore AS f
ORDER BY user_rating DESC
LIMIT 25

SELECT track_name, user_rating, price
FROM `lab-mysql-first-queries-master`.applestore AS f
ORDER BY user_rating ASC
LIMIT 20