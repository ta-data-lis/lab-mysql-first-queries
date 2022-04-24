SELECT * FROM SQL_Labs.applestore_windows;

/* 1. Which are the different genres?*/
/*Option 1*/

SELECT prime_genre
FROM SQL_Labs.applestore_windows
GROUP BY prime_genre;

/*Option 2*/

SELECT DISTINCT prime_genre
FROM SQL_Labs.applestore_windows;



/* 2. Which is the genre with more apps rated?*/

SELECT prime_genre, COUNT(rating_count_tot)
FROM (SELECT *
	FROM SQL_Labs.applestore_windows
	WHERE rating_count_tot > 0) AS apps_with_rating
GROUP BY prime_genre
ORDER BY COUNT(rating_count_tot) DESC
LIMIT 1;



/* 3. Which is the genre with more apps?*/

SELECT prime_genre, COUNT(rating_count_tot)
FROM SQL_Labs.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(rating_count_tot) DESC
LIMIT 1;

/*To verify*/
SELECT COUNT(*)
FROM SQL_Labs.applestore_windows
WHERE prime_genre = 'games';


/* 4. Which is the genre with less apps?*/

SELECT prime_genre, COUNT(rating_count_tot)
FROM SQL_Labs.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(rating_count_tot) ASC
LIMIT 1;

/*To verify*/
SELECT COUNT(*)
FROM SQL_Labs.applestore_windows
WHERE prime_genre = 'catalogs';


/* 5. Take the 10 apps most rated*/

SELECT track_name, rating_count_tot
FROM SQL_Labs.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;


/* 6. Take the 10 apps  best rated by users*/

SELECT track_name, user_rating
FROM SQL_Labs.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

/*To verify*/

SELECT track_name, user_rating
FROM SQL_Labs.applestore_windows
ORDER BY user_rating DESC;


SELECT prime_genre,track_name, rating_count_tot
FROM SQL_Labs.applestore_windows
WHERE rating_count_tot = 0;


/*7. To provide insights about question 5 */

SELECT *
FROM SQL_Labs.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;


/*8. To provide insights about question 6 */

SELECT avg(price)
FROM SQL_Labs.applestore_windows
WHERE user_rating = 5;

SELECT *
FROM SQL_Labs.applestore_windows
WHERE user_rating = 5;


/* 9. Compare q5 and q6*/

SELECT track_name, rating_count_tot, user_rating, prime_genre
FROM SQL_Labs.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name, rating_count_tot, prime_genre, user_rating
FROM SQL_Labs.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;


/* 10. How could you take the top 3 regarding the user rating but also the numner of votes*/

SELECT track_name, user_rating, rating_count_tot, prime_genre
FROM SQL_Labs.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


/* 11. Does people care about the price?*/

SELECT track_name, user_rating, rating_count_tot, prime_genre, price
FROM SQL_Labs.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC;

SELECT avg(price)
FROM SQL_Labs.applestore_windows
WHERE user_rating = 5
ORDER BY user_rating DESC, rating_count_tot DESC;

SELECT avg(price)
FROM SQL_Labs.applestore_windows;

SELECT avg(price)
FROM SQL_Labs.applestore_windows
WHERE rating_count_tot >= 824451
ORDER BY user_rating DESC, rating_count_tot DESC;
