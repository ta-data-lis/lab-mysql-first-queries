/* 1. Which are the different genres? */
SELECT DISTINCT prime_genre FROM apps.applestore;


/* 2. Which is the genre with more apps rated? */
SELECT a.prime_genre, SUM(rating_count_tot) AS 'Total App Ratings'
FROM apps.applestore AS a
GROUP BY a.prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;


/* 3. Which is the genre with more apps? */
SELECT a.prime_genre, COUNT(*) AS 'Quantity'
FROM apps.applestore AS a
GROUP BY a.prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;


/* 4. Which is the one with less? */
SELECT a.prime_genre, COUNT(*) AS 'Quantity'
FROM apps.applestore AS a
GROUP BY a.prime_genre
ORDER BY COUNT(*) ASC
LIMIT 1;


/* 5. Take the 10 apps most rated. */
SELECT id, track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users. */
SELECT id, track_name, user_rating
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;


/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */
/* Those apps seem to be the most popular apps that people use */

/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */
/* All those apps have the same average rating of 5 starts. 
Maybe they have rating counts and every user that rated them gave them 5 stars.
Or maybe the ratings are being rounded up to 5, so can't really distinguish their ratings
 */

/* 9. Now compare the data from questions 5 and 6. What do you see? */
/* Those 2 lists don't intersect

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */
SELECT id, track_name, user_rating, rating_count_tot
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;
/* I can sort by the user_rating as before, but also sort by number of votes so that we get from the apps with 5 stars the most voted*/

/* 11. Does people care about the price? */
SELECT id, track_name, rating_count_tot, price
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT id, track_name, rating_count_tot, price
FROM (
	SELECT id, track_name, rating_count_tot, price
	FROM applestore
	ORDER BY rating_count_tot DESC
	LIMIT 100
	) AS top100
WHERE price <> 0;

/* The top 10 apps with the most ratings are free and out of the top 100 only 11 are paid, 
which points to price being an important factor in people's choice of apps */
