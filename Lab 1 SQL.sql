/* Q1: Which are the different genres*/
SELECT
ap.prime_genre 
FROM mysql_ex.applestore AS ap
GROUP BY ap.prime_genre ;

/* Q2: Which is the genre with more apps rated */
SELECT
ap.prime_genre,
ap.rating_count_tot
FROM mysql_ex.applestore AS ap
GROUP BY ap.prime_genre
ORDER BY ap.rating_count_tot DESC
LIMIT 1 ;
/*Answer: Social Networking */

/* Q3: Which is the genre with more apps */
SELECT
ap.prime_genre ,
COUNT(ap.prime_genre)
FROM mysql_ex.applestore AS ap
GROUP BY ap.prime_genre
ORDER BY COUNT(ap.prime_genre) DESC
LIMIT 1 ;
/* The games genre */

/* Q4: which is the one with less*/
SELECT
ap.prime_genre ,
COUNT(ap.prime_genre)
FROM mysql_ex.applestore AS ap
GROUP BY ap.prime_genre
ORDER BY COUNT(ap.prime_genre) ASC
LIMIT 1 ;
/* Answer: The Catalogs genre */

/* Q5: Take the top 10 most rated apps */
SELECT
ap.track_name , 
ap.rating_count_tot
FROM mysql_ex.applestore AS ap
ORDER BY ap.rating_count_tot DESC
LIMIT 10 ;
/* Answer: list of the output */

/* Q6: Take the 10 apps most best rated by user */
SELECT
ap.track_name ,
ap.user_rating
FROM mysql_ex.applestore AS ap
ORDER BY ap.user_rating DESC
LIMIT 10 ;
/* Answer: list of the output */

/* Question #11: Does people care about the price? */
SELECT
ap.track_name , 
ap.rating_count_tot ,
ap.user_rating ,
ap.price
FROM mysql_ex.applestore AS ap
ORDER BY ap.price DESC
LIMIT 10 ;

SELECT
ap.track_name , 
ap.rating_count_tot ,
ap.user_rating ,
ap.price
FROM mysql_ex.applestore AS ap
ORDER BY ap.rating_count_tot DESC
LIMIT 10
