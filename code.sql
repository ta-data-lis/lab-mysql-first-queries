/* 1. Which are the different genres?*/

SELECT prime_genre
FROM TEST_SCHEMA.applestore_windows;

/* 2. Which is the genre with more apps rated?*/

SELECT prime_genre, sum(rating_count_tot)
FROM TEST_SCHEMA.applestore_windows
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC;


/* 3. Which is the genre with more apps?*/

SELECT prime_genre, COUNT(*)
FROM TEST_SCHEMA.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) DESC;

/* 4. Which is the one with less? */

SELECT prime_genre, COUNT(*)
FROM TEST_SCHEMA.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) ASC;

/* 5. Take the 10 apps most rated.*/
SELECT track_name, rating_count_tot
FROM TEST_SCHEMA.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users. */

SELECT track_name, user_rating
FROM TEST_SCHEMA.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights.*/
	/* I display the name of the apps depending on the amount of their ratings in a descending order. 
    Only the 10 highest amounts of ratings are displayed. The app with the most ratings is Facebook. */


/* 8. Take a look on the data you retrieved in the question 6. Give some insights.*/
	/* The 10 apps with the best rating are displayed in descending order. Since the ratings are not much distinct, all apps displayed have 
    the same rating and probably the following apps as well. */
    

/* 9. Now compare the data from questions 5 and 6. What do you see?*/
	/* Because the amount of rating is a very high and therefore distinct number, there is an actual difference between the top 10 
    of this category, in comparison to 6., where the top 10 have the same value in their category for comparison. The data from 5 is more
    valuable and meaningful then the data from 6.


/* 10. How could you take the top 3 regarding the user ratings but also the number of votes?*/

SELECT track_name, user_rating, rating_count_tot
FROM TEST_SCHEMA.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/*11. Does people care about the price?*/


/* check for the most expensive apps and their rating -- > no conclusion*/
SELECT track_name, price, user_rating
FROM TEST_SCHEMA.applestore_windows
ORDER BY price DESC;

/* check for best rated apps and their prices -- >  not many expensive apps with top rating, but many cheap apps with top rating*/
SELECT track_name, price, user_rating
FROM TEST_SCHEMA.applestore_windows
ORDER BY user_rating DESC, price DESC;

/* people are more likely to give top rating when they dont have to pay for app*/

