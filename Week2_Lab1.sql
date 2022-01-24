/* WEEK2_LAB1
Please, import the .csv database called AppleStore.csv. 
Use the data table to query the data about Apple Store Apps and answer the following questions:

Deliverables
You need to submit a .sql file that includes the queries used to answer the questions above, as well as an .md file including your answers. */

SELECT DISTINCT *
FROM lab.applestore2;

/* 1. Which are the different genres? */
SELECT DISTINCT prime_genre
FROM lab.applestore2;

/* 2. Which is the genre with more apps rated? */
SELECT prime_genre, rating_count_tot
FROM lab.applestore2
ORDER BY rating_count_tot DESC;

/* 3. Which is the genre with more apps? */
SELECT prime_genre, COUNT(track_name) as app_number
FROM lab.applestore2
GROUP BY prime_genre
ORDER BY app_number DESC;

/* 4. Which is the one with less? */
SELECT prime_genre, COUNT(track_name) as app_number
FROM lab.applestore2
GROUP BY prime_genre
ORDER BY app_number ASC;

/* 5. Take the 10 apps most rated. */
SELECT track_name as app, prime_genre, rating_count_tot AS rating
FROM lab.applestore2
ORDER BY rating DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users. */
SELECT track_name as app, prime_genre, user_rating 
FROM lab.applestore2
ORDER BY user_rating DESC
LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights. 
The most rated apps are games and social networks. 
Specifically the most rated app is Facebook, followed by Instagram and Clash of Clans */

/* 8. Take a look on the data you retrieved in the question 6. Give some insights. 
The apps that are best rated by users are games. The highest rate possible is 5. */

/* 9. Now compare the data from questions 5 and 6. What do you see? */
/* The ten most rated apps are the same in the two tables, as well as the number of rating. 
This suggests that the sum of rating_count_tot and the sum of user_rating are equals.
We can check it doing the following: */
SELECT  prime_genre, COUNT(rating_count_tot), COUNT(user_rating)
FROM lab.applestore2
GROUP BY prime_genre;

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */
SELECT track_name, rating_count_tot AS votes, user_rating 
FROM lab.applestore2
ORDER BY user_rating DESC, votes DESC
LIMIT 3;

/* 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. 
What is your conclusion? 
If we look at the prices of the best rated (4.5-5*) apps that are not for free, we can see that most of them are less than 4 dollars. 
This suggests that users do care about the price, as they rated the most cheap apps. 
However, this could also indicate that the cheap apps are the mostly used, that's why the are most rated. 
To distinguish between these two possiblities we should look at the data of downloaded apps over rated apps */

SELECT prime_genre, track_name, price, user_rating, rating_count_tot, cont_rating
FROM lab.applestore2
WHERE price != 0 AND user_rating BETWEEN 4.5 AND 5
ORDER BY price;
 