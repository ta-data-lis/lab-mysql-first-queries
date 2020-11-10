CREATE DATABASE AppleStore;
-- id	track_name	size_bytes	currency	price	rating_count_tot	rating_count_ver	
-- user_rating	user_rating_ver	ver	cont_rating	prime_genre	sup_devices.num	ipadSc_urls.num	lang.num	vpp_lic
USE AppleStore;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE AppleStore(
	id INT(15),
    track_name VARCHAR(50),
    size_bytes INT(15),
    currency VARCHAR(50),
    price INT(15),
    rating_count_tot INT(15),
    rating_count_ver INT(15),
    user_rating INT(15),
    user_rating_ver INT(15),
    ver VARCHAR(50),
    cont_rating VARCHAR(50),
    prime_genre VARCHAR(50),
    `sup_devices.num` INT(15),
    `ipadSc_urls.num` INT(15),
    `lang.num` INT(15),
    vpp_lic INT(15)
);

SELECT * FROM AppleStore;


USE AppleStore;

SELECT * FROM AppleStore;

-- 1. Which are the different genres?

SELECT DISTINCT (AppleStore.prime_genre) AS GENRE
FROM AppleStore
ORDER BY prime_genre;

-- 2. Which is the genre with more apps rated?

SELECT DISTINCT (AppleStore.prime_genre) AS GENRE, COUNT(rating_count_tot) AS `NUMBER OF APPS RATED`
FROM AppleStore
GROUP BY prime_genre
ORDER BY COUNT(rating_count_tot) DESC
LIMIT 1;

-- 3. Which is the genre with more apps?

SELECT DISTINCT (AppleStore.prime_genre) AS GENRE, COUNT(track_name) AS `NUMBER OF APPS`
FROM AppleStore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC
LIMIT 1;

-- 4. Which is the one with less?

SELECT DISTINCT (AppleStore.prime_genre) AS GENRE, COUNT(track_name) AS `NUMBER OF APPS`
FROM AppleStore
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC
LIMIT 1;

-- 5. Take the 10 apps most rated.

SELECT DISTINCT (AppleStore.track_name) AS APP, rating_count_tot AS `NUMBER OF RATINGS`
FROM AppleStore
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.

SELECT DISTINCT (AppleStore.track_name) AS APP, user_rating AS `RATING`
FROM AppleStore
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.

SELECT DISTINCT (AppleStore.track_name) AS APP, rating_count_tot AS `NUMBER OF RATINGS`, user_rating AS RATING
FROM AppleStore
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.

SELECT DISTINCT (AppleStore.track_name) AS APP, rating_count_tot AS `NUMBER OF RATINGS`, user_rating AS `RATING`
FROM AppleStore
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

-- 9. Now compare the data from questions 5 and 6. What do you see?

SELECT DISTINCT (AppleStore.track_name) AS APP, rating_count_tot AS `NUMBER OF RATINGS`, user_rating AS RATING
FROM AppleStore
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT DISTINCT (AppleStore.track_name) AS APP, rating_count_tot AS `NUMBER OF RATINGS`, user_rating AS `RATING`
FROM AppleStore
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT (AppleStore.track_name) AS APP, rating_count_tot AS `NUMBER OF RATINGS`, user_rating AS `RATING`
FROM AppleStore
WHERE user_rating = 5
GROUP BY track_name 
ORDER BY rating_count_tot DESC
LIMIT 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

-- A. A visualization of the most rated apps that are not free and ordered by the number of ratings.
-- Number of ratings is the closest to a number of downloads or a number of users.
-- It seems to be that, most of them, are games.
SELECT DISTINCT (AppleStore.track_name) AS APP, prime_genre AS GENRE, rating_count_tot AS `NUMBER OF RATINGS`, 
user_rating AS `RATING`, price AS PRICE
FROM AppleStore
WHERE price > 0
GROUP BY track_name
ORDER BY rating_count_tot DESC;


-- B. Now, let's examine those that are free, ordered by the number of ratings.
-- The result seems to be more varied, based on free apps and ordered by the number of ratings.

SELECT DISTINCT (AppleStore.track_name) AS APP, prime_genre AS GENRE, rating_count_tot AS `NUMBER OF RATINGS`, 
user_rating AS `RATING`, price AS PRICE
FROM AppleStore
WHERE price = 0 AND user_rating = 5
GROUP BY track_name
ORDER BY rating_count_tot DESC;

-- C. Let's make another aproximation. How many of the paid apps are games and how many are not games?
-- For doing this, we are going to, also, determine the number of apps, so we can check how many a free, compared to how many have a price.
-- Alright, now we know that there are more apps free than not free.
SELECT (SELECT DISTINCT COUNT(AppleStore.track_name) FROM AppleStore WHERE price = 0) AS `NUMBER OF FREE APPS`,
(SELECT DISTINCT COUNT(AppleStore.track_name) FROM AppleStore WHERE price > 0) AS `NUMBER OF NOT FREE APPS`,
COUNT(AppleStore.track_name) `NUMBER OF APPS`
FROM AppleStore;

-- D. But now, we have another question. Based on the arbitrary statement we made before;
-- This is: number of ratings is the closest to number of users; let's change a bit our last table,
-- regarding the number of ratings that free apps have and the number of ratings that not free apps has.
-- Result: In this sense, considering our arbitrary statement, in general, people care about the price. Almost 86% of the "users" are "users" from free apps.

SELECT (SELECT DISTINCT (SUM(AppleStore.rating_count_tot))/(SELECT DISTINCT SUM(AppleStore.rating_count_tot) FROM AppleStore) FROM AppleStore WHERE price = 0) AS `% OF NUMBER OF FREE APPS "USERS"`,
(SELECT DISTINCT (SUM(AppleStore.rating_count_tot))/(SELECT DISTINCT SUM(AppleStore.rating_count_tot) FROM AppleStore) FROM AppleStore WHERE price > 0) AS `% OF NUMBER OF NOT FREE APPS "USERS"`,
SUM(AppleStore.rating_count_tot) `NUMBER OF APPS "USERS"`
FROM AppleStore;

-- E. But, we are not taking into account why do people decide to pay for an app.
-- Let's make another arbitrary statement: Not free applications have a better development that makes them better applications. So, a demanding user may be willing to pay for an app.
-- If we link this previous statement with another arbitrary statement; this is: users rating is the equivalent to the user satisfaction; we are going to check what is the level of satisfation of demanding users, compared to the level of satisfaction with a "normal user" that is not willing to pay for an app.
-- Result: We can observe that most of the users of 5 rated apps comes from free apps.

SELECT DISTINCT (SUM(AppleStore.rating_count_tot))/(SELECT DISTINCT SUM(AppleStore.rating_count_tot) FROM AppleStore) AS `% OF 5 RATED APPS "USERS"`,
(SELECT DISTINCT (SUM(AppleStore.rating_count_tot))/(SELECT DISTINCT SUM(AppleStore.rating_count_tot) FROM AppleStore) FROM AppleStore WHERE price = 0 AND user_rating = 5) AS `% OF 5 RATED FREE APPS "USERS"`,
(SELECT DISTINCT (SUM(AppleStore.rating_count_tot))/(SELECT DISTINCT SUM(AppleStore.rating_count_tot) FROM AppleStore) FROM AppleStore WHERE price > 0 AND user_rating = 5) AS `% OF 5 RATED NOT FREE APPS "USERS"`
FROM AppleStore
WHERE user_rating = 5;

-- So, answering the question, we can say, people does care about the price:
-- People "uses" more free apps. Most of the people is not willing to pay for an app.

-- F. Let's now trying to answer this question: Does the price matters when it comes to rating 5 to an app?
-- Result: It does not seem to be so. People that uses not free apps rates them very similar to free apps.
-- Note: It is remarcable that almost half of the apps have are 5 rated.
SELECT DISTINCT (COUNT(AppleStore.track_name))/(SELECT DISTINCT COUNT(AppleStore.track_name) FROM AppleStore) AS `% OF 5 RATED APPS`,
(SELECT DISTINCT (COUNT(AppleStore.track_name))/(SELECT DISTINCT COUNT(AppleStore.track_name) FROM AppleStore WHERE price = 0) FROM AppleStore WHERE price = 0 AND user_rating = 5) AS `% OF 5 RATED FREE APPS`,
(SELECT DISTINCT (COUNT(AppleStore.track_name))/(SELECT DISTINCT COUNT(AppleStore.track_name) FROM AppleStore WHERE price > 0) FROM AppleStore WHERE price > 0 AND user_rating = 5) AS `% OF 5 RATED NOT FREE APPS `
FROM AppleStore
WHERE user_rating = 5;