          /* only the applestore_windows file worked despite me using a mac */
          
/* 1. Which are the different genres? */
     
SELECT DISTINCT prime_genre
FROM Applestore_mac.applestore_windows;

/* 2. Which is the genre with more apps rated? */

SELECT *
FROM Applestore_mac.applestore_windows;

SELECT prime_genre, COUNT(*)
FROM Applestore_mac.applestore_windows
WHERE Applestore_mac.applestore_windows.rating_count_tot > 0
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;

/* 3. Which is the genre with more apps? */

SELECT prime_genre, COUNT(*)
FROM Applestore_mac.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;

/* 4. Which is the one with less? */

SELECT prime_genre, COUNT(*)
FROM Applestore_mac.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) ASC
LIMIT 1;

/* 5. Take the 10 apps most rated. */

SELECT *
FROM Applestore_mac.applestore_windows
ORDER BY Applestore_mac.applestore_windows.rating_count_tot DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users. */

SELECT *
FROM Applestore_mac.applestore_windows
ORDER BY Applestore_mac.applestore_windows.user_rating DESC
LIMIT 10;

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */

SELECT *
FROM Applestore_mac.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/* 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */


/* Average rating of reviewed apps, free and paid */
SELECT AVG(user_rating)
FROM Applestore_mac.applestore_windows
WHERE rating_count_tot > 0 AND price = 0;

SELECT AVG(user_rating)
FROM Applestore_mac.applestore_windows
WHERE rating_count_tot > 0 AND price > 0;

/* Which rating value holds the most reviews */
SELECT user_rating, SUM(rating_count_tot)
FROM Applestore_mac.applestore_windows
WHERE user_rating BETWEEN 1 AND 5
GROUP BY user_rating
ORDER BY SUM(rating_count_tot) DESC;
