/*SQL LAB 1 - MY FIRST SQL QUERIES*/

USE new_schema;

/* 1. Which are the different genres?*/

SELECT DISTINCT prime_genre
FROM apps;

/* 2. Which is the genre with more apps rated?*/

SELECT prime_genre, SUM(rating_count_tot) AS total_reviews
FROM apps
GROUP BY prime_genre
ORDER BY total_reviews DESC
LIMIT 1;

/*3. Which is the genre with more apps?*/

SELECT prime_genre, COUNT(id) AS number_apps  /* could also use COUNT(*)*/
FROM apps
GROUP BY prime_genre
ORDER BY number_apps DESC
LIMIT 1;

/*4. Which is the one with less?*/

SELECT prime_genre, COUNT(id) AS number_apps  /* could also use COUNT(*)*/
FROM apps
GROUP BY prime_genre
ORDER BY number_apps  /* ASC by default*/
LIMIT 1;

/*5. Take the 10 apps most rated.*/

SELECT track_name AS app_name, rating_count_tot
FROM apps
ORDER BY rating_count_tot DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/

SELECT track_name AS app_name, user_rating, rating_count_tot
FROM apps
ORDER BY user_rating DESC
LIMIT 10;


/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/*Answer in .md file*/

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/*Answer in .md file*/

/*9. Now compare the data from questions 5 and 6. What do you see?*/
/*Answer in .md file*/

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/

SELECT track_name AS app_name, prime_genre, user_rating, rating_count_tot AS number_votes
FROM apps
ORDER BY user_rating DESC, number_votes DESC
LIMIT 3;

/*11. Does people care about the price? 
Do some queries, comment why are you doing them and the results you retrieve. 
What is your conclusion?*/

/*Note: the queries are included in this file, and the conclusions are provided in the .md file/

/*Q1+Q2: How many paid apps are there? How many free apps are there?*/

SELECT COUNT(*)
FROM apps
WHERE price != 0;

SELECT COUNT(*)
FROM apps
WHERE price = 0;

/*Q3+Q4: What is the avg score of paid apps? What is the avg score of free apps?*/

SELECT AVG(user_rating)
FROM apps
WHERE price != 0;

SELECT AVG(user_rating)
FROM apps
WHERE price = 0;

/*Q5: Are there any paid apps among the top popular (most rated, highest scores) apps?*/

SELECT track_name, rating_count_tot, user_rating, CONCAT (price,' ',currency) AS price_usd
FROM apps
WHERE rating_count_tot > 50
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 50;

/*Q6: Can the top most expensive apps get high scores? How do they compare with the avg scores?*/

SELECT track_name, CONCAT (price,' ',currency) AS price_usd, user_rating, rating_count_tot 
FROM apps
WHERE rating_count_tot > 50
ORDER BY price DESC, rating_count_tot DESC
LIMIT 50;

