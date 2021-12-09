USE lab_mysql;

/*1. Which are the different genres?*/
SELECT DISTINCT prime_genre
FROM lab_mysql.apple_store
ORDER BY prime_genre;

/*2. Which is the genre with more apps rated?*/
SELECT DISTINCT prime_genre, SUM(rating_count_tot) AS total_rating
FROM lab_mysql.apple_store
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1;

/*3. Which is the genre with more apps?*/
SELECT DISTINCT prime_genre, COUNT(prime_genre) AS qtt_apps
FROM lab_mysql.apple_store
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
LIMIT 1;

/*4. Which is the one with less?*/
SELECT DISTINCT prime_genre, COUNT(prime_genre) AS qtt_apps
FROM lab_mysql.apple_store
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
LIMIT 1;

/*5. Take the 10 apps most rated.*/
SELECT DISTINCT track_name, rating_count_tot
FROM lab_mysql.apple_store
ORDER BY rating_count_tot DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/
SELECT DISTINCT track_name, user_rating
FROM lab_mysql.apple_store
ORDER BY user_rating DESC
LIMIT 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
-- most of them are free apps, from all kinds of genres.
SELECT DISTINCT track_name, price, prime_genre, user_rating, rating_count_tot
FROM lab_mysql.apple_store
ORDER BY rating_count_tot DESC
LIMIT 10;

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
-- They are manly apps from Games genre and with a 5* rating
SELECT DISTINCT track_name, price, prime_genre, rating_count_tot, user_rating
FROM lab_mysql.apple_store
ORDER BY user_rating DESC
LIMIT 10;

/*9. Now compare the data from questions 5 and 6. What do you see?*/
-- The apps with most donwloads are not the one with 5* ratings, but most of them have a ratting bigger then 4,5.alter
-- There are more apps from Games genre the has a bigger amount of dnwloads and ratings

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT DISTINCT track_name, user_rating, rating_count_tot
FROM lab_mysql.apple_store
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/*11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
-- Users download more apps with lower price ranges
SELECT track_name, user_rating, rating_count_tot, price
FROM lab_mysql.apple_store
ORDER BY user_rating DESC, rating_count_tot DESC, price DESC
LIMIT 10;

-- The correlation between price and user ratings is ~0.47, considered a positive and weak correlation
SELECT @ax := AVG(price), 
       @ay := AVG(user_rating), 
       @DIV := (stddev_samp(price) * stddev_samp(user_rating))
FROM lab_mysql.apple_store;
SELECT SUM((price - @ax) * (user_rating - @ay)) / ((COUNT(price) -1) * @DIV) AS CORRELATION
FROM lab_mysql.apple_store;

-- The correlation between price and user ratings is ~-0.04, considered a negative and negligible correlation
SELECT @ax := AVG(price), 
       @ay := AVG(rating_count_tot), 
       @DIV := (stddev_samp(price) * stddev_samp(rating_count_tot))
FROM lab_mysql.apple_store;
SELECT SUM((price - @ax) * (rating_count_tot - @ay)) / ((COUNT(price) -1) * @DIV) AS CORRELATION
FROM lab_mysql.apple_store;