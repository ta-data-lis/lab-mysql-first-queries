USE lab-mysql-queries;

SELECT * FROM AppleStore;

/* 1. Which are the different genres? */

SELECT DISTINCT `prime_genre` FROM AppleStore;

/* 2. Which is the genre with more apps rated? */

SELECT `prime_genre`, sum(rating_count_tot) FROM AppleStore GROUP BY `prime_genre`;

/* 3. Which is the genre with more apps? */

SELECT `prime_genre`, count(`id`) FROM AppleStore GROUP BY `prime_genre` ORDER BY count(`id`) DESC LIMIT 1;

/* 4. Which is the one with less? */

SELECT `prime_genre`, count(`id`) FROM AppleStore GROUP BY `prime_genre` ORDER BY count(`id`) ASC LIMIT 1;

/* 5. Take the 10 apps most rated. */

SELECT `id`, rating_count_tot FROM AppleStore GROUP BY `id` ORDER BY rating_count_tot DESC LIMIT 10;

/* 6. Take the 10 apps best rated by users. */

SELECT `id`, user_rating FROM AppleStore GROUP BY `id` ORDER BY user_rating DESC LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */

SELECT AppName as App, CurrentVersionRatings  AS Appsrating, Genre as Gender from Ratings
ORDER by 2 DESC
LIMIT 10
 /* In the top 10 of most rated apps it seems that no app has a rating of 5.
 * It is logic: the more ratings the harder it is to keep the maximum score.
 *That is why the apps with better scores have fewer ratings which may impair the reliability of the rating*/

/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */

SELECT AppName as App, TotalRatings * CurrentVersionRatings as UserRatings, Genre as Gender from Ratings
ORDER by 2 DESC
limit 10
/* Please, kindly note that a top 10 by rating only is not going to provide valuable insight, 
*since there are more than 10 apps with rating 5.*/

/* 9. Now compare the data from questions 5 and 6. What do you see? */

SELECT track_name AS APPS,user_rating AS RATE, SUM(rating_count_tot) AS COUNT_RATES FROM  AppleStore 
GROUP BY 1,2
ORDER BY COUNT_RATES DESC
LIMIT 10;

SELECT track_name AS APPS,user_rating AS RATE, SUM(rating_count_tot) AS COUNT_RATES FROM  AppleStore 
GROUP BY 1,2
ORDER BY RATE DESC
LIMIT 10;
/*As stated above, the apps with better scores have fewer ratings which may impair the reliability of the rating*/

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */

SELECT `id`, `prime_genre`, rating_count_tot, user_rating FROM AppleStore GROUP BY `id` ORDER BY rating_count_tot DESC LIMIT 10;
SELECT `id`, `prime_genre`, user_rating, rating_count_tot FROM AppleStore WHERE user_rating = 5 GROUP BY `id` ORDER BY rating_count_tot DESC;
 /*By getting the best rated ordered by the one that has more rates*/

/* 11. Do people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */

SELECT AppName as App, TotalRatings * CurrentVersionRatings as UserRatings, Genre as Gender, Price as UserPrice from Ratings
ORDER by 2 DESC
limit 10

SELECT AppName as App, TotalRatings * CurrentVersionRatings as UserRatings, Genre as Gender, Price as UserPrice from Ratings
ORDER by 4 DESC
limit 10
/*Definitely, they do, which is aligned with the common sense :)*/