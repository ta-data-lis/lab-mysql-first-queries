select * from AppleStore;


/* 1. Which are the different genres? */
select DISTINCT prime_genre from AppleStore;

/* 2. Which is the genre with more apps rated? */

select sum(rating_count_tot) as Apps_Rated, prime_genre as Genre FROM AppleStore 
group by 2;

/* 3. Which is the genre with more apps? */ 
select count(id) as Apps_number, prime_genre as Genre from AppleStore
group by 2
order by Apps_number DESC 
LIMIT 1;

/* 4. Which is the one with less? */ 
select count(id) as Apps_number, prime_genre as Genre from AppleStore
group by 2
order by Apps_number ASC 
LIMIT 1;

/* 5. Take the 10 apps most rated. */

SELECT track_name AS "APPS", rating_count_tot AS "Number of Ratings"  FROM  AppleStore 
ORDER BY 2 DESC
LIMIT 10;


/* 6. Take the 10 apps best rated by users. */ 

SELECT track_name AS "APPS", user_rating AS "User Rating"  FROM  AppleStore 
ORDER BY 2 DESC, rating_count_tot DESC 
LIMIT 10;


/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */
/* the rating_count_tot is not treated as an integrer, so the order is not correct. I'm looking
 * into a way of converting the column data type*/

/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */
/* I used rating_count_tot as a second input when ordering because out of the options availables, 
 * and given the fact that there's more than 10 apps with a rating of 5, it seemed as an appropiate way
 * of sorting them.*/

/* 9. Now compare the data from questions 5 and 6. What do you see? */
SELECT track_name AS "APPS", user_rating AS "User Rating", rating_count_tot AS "Number of Ratings" FROM  AppleStore 
ORDER BY 2 DESC, rating_count_tot DESC 
LIMIT 10;
/* Since I took into account the rating count already when ordering question 5, there hasn't been much change besides displaying the number of ratings*/


/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */
SELECT track_name AS "APPS", user_rating AS "User Rating", rating_count_tot AS "Number of Ratings" FROM  AppleStore 
ORDER BY 2 DESC, rating_count_tot DESC 
LIMIT 3;

/* 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */
SELECT track_name AS APP, user_rating AS RATING, SUM(rating_count_tot) AS "Number of Ratings", AVG(price) as PRICE FROM  AppleStore 
GROUP BY 2, 1
ORDER BY 2 DESC
LIMIT 15; 

/* It seems like cheaper or free apps do have more ratings, but the rating itself is not lower generally. 
 * So we could conclude that people do, in fact, care about the price */




