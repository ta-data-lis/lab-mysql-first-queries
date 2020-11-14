
/*1. Which are the different genres?
 * 
 */

SELECT prime_genre FROM AppleStore;


/*
 * 2. Which is the genre with more apps rated?
 */

SELECT 
prime_genre, 
SUM(rating_count_tot) AS Sum_of_rating 
FROM AppleStore
GROUP BY 1
ORDER BY Sum_of_rating DESC; /* if I pout order by 2 than it doesn't run. Could you tell me why, please?


/*
 * 3. Which is the genre with more apps?
 */


SELECT * FROM AppleStore;


SELECT COUNT(id) AS NO_of_APPS,
prime_genre
FROM AppleStore 
GROUP BY 2
ORDER BY NO_of_APPS DESC
LIMIT 1;

/*
* 4. Which is the one with less?
*/

SELECT COUNT(id) AS NO_of_APPS,
prime_genre
FROM AppleStore 
GROUP BY 2
ORDER BY NO_of_APPS ASC 
LIMIT 1;

/*
 * 5. Take the 10 apps most rated.
 */


SELECT 
track_name, 
SUM(rating_count_tot) AS Sum_of_rating 
FROM AppleStore
GROUP BY 1
ORDER BY Sum_of_rating DESC
LIMIT 10;


/*
 * 6. Take the 10 apps best rated by users.
 */

SELECT 
track_name,
user_rating, 
rating_count_tot 
FROM AppleStore 
ORDER BY rating_count_tot --- it orders based on data type for some reason. 
desc;




--7. Take a look on the data you retrieved in the question 5. Give some insights.

/* top 6 apps are dominationg the market in terms of rating volume and therefore can be assumed that the # downloads are also way higher. 
 * Chriatianity still dominant 
 * Facebook is killing it
 *
 */

--8. Take a look on the data you retrieved in the question 6. Give some insights.

/* no idea what the actual top 10 APPs are

--9. Now compare the data from questions 5 and 6. What do you see?

--10. How could you take the top 3 regarding the user ratings but also the number of votes?

--11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?


