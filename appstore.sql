
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
ORDER BY 2,3 ASC;


SELECT track_name, user_rating FROM applestore
ORDER BY user_rating DESC
LIMIT 10;
