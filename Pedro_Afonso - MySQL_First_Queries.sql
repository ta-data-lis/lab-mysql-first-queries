SELECT * FROM labs_mysql_first_queries.applestore;


/* Question 1 - Which are the different genres? */

SELECT DISTINCT prime_genre
FROM labs_mysql_first_queries.applestore;


/* Question 2 - Which is the genre with more apps rated? */

SELECT prime_genre AS genre, rating_count_tot AS Number_of_ratings
FROM labs_mysql_first_queries.applestore
ORDER BY number_of_ratings DESC
LIMIT 1;


/* Question 3 - Which is the genre with more apps? */

SELECT prime_genre AS genre, COUNT(id) AS Number_of_apps
FROM labs_mysql_first_queries.applestore
GROUP BY prime_genre
ORDER BY number_of_apps DESC
LIMIT 1;


/* Question 4 - Wich is the one with less? */

SELECT prime_genre AS genre, COUNT(id) AS Number_of_apps
FROM labs_mysql_first_queries.applestore
GROUP BY prime_genre
ORDER BY Number_of_apps ASC
LIMIT 1;


/* Question 5 - Take the 10 apps most rated. */

SELECT track_name, rating_count_tot
FROM labs_mysql_first_queries.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;


/* Question 6 - Take the 10 apps best rated by users */

SELECT track_name, user_rating
FROM labs_mysql_first_queries.applestore
ORDER BY user_rating DESC
LIMIT 10;


/*  Question 7 -  Take a look on the data you retrieved in question 5. Give some insights
/* They are mainly games and social networking apps. All of them are free. */


/* Question 8 - Take a look on the data you retrieved in the question 6. Give some insights. */
/* 70% of the apps are games, 60% are paid apps */


/*Question 9 - Now compare the data from questions 5 and 6. What do you see? */
/* The most rated apps and best rated apps are not the same. Also, the number of ratings is different. The most rated apps have more ratings than the best rated apps */ 


/* Question 10 - How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name,user_rating,rating_count_tot
FROM labs_mysql_first_queries.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/* Question 11 - Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */ 

/* Number of ratings in free apps versus paid apps */

SELECT sum(rating_count_tot)
FROM labs_mysql_first_queries.applestore
WHERE price = 0 
ORDER BY price DESC;

SELECT sum(rating_count_tot)
FROM labs_mysql_first_queries.applestore
WHERE price <> 0 
ORDER BY price DESC;

/* The number of ratings in free apps is higher than paid apps. There are more people interacting with free apps than with paid apps */


