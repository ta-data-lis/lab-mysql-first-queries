/* Q1 */
SELECT DISTINCT f.prime_genre
FROM labs.applestore AS f;

/* Q2 */
SELECT f.prime_genre, SUM(f.rating_count_tot)
FROM labs.applestore AS f
GROUP BY f.prime_genre
ORDER BY SUM(f.rating_count_tot) DESC
LIMIT 1;


/* Q3 */
SELECT f.prime_genre, COUNT(f.prime_genre) AS contagem
FROM labs.applestore AS f
GROUP BY f.prime_genre
ORDER BY contagem DESC
LIMIT 1;

/* Q4 */
SELECT f.prime_genre, COUNT(f.prime_genre) AS contagem
FROM labs.applestore AS f
GROUP BY f.prime_genre
ORDER BY contagem ASC
LIMIT 1;

/* Q5 */
SELECT f.track_name, f.rating_count_tot
FROM labs.applestore AS f
ORDER BY f.rating_count_tot DESC
LIMIT 10;

/* Q6 */
SELECT f.track_name, f.user_rating
FROM labs.applestore AS f
ORDER BY f.user_rating DESC
LIMIT 10;

/* Q7 */
/* A: Facebook it's the most rated app */

/* Q8 */
/* A: There are a lot of apps with ratting = 5 */

/* Q10 */
/* A: The most rated app its not the app with best rate */

/* Q10 */
SELECT f.track_name, f.user_rating, f.rating_count_tot
FROM labs.applestore AS f
ORDER BY f.user_rating DESC, f.rating_count_tot DESC
LIMIT 3;

/* Q10 */
/* First we can compare the number of ratings with the price*/

SELECT f.track_name, f.price, f.rating_count_tot, f.user_rating
FROM labs.applestore as f
ORDER BY f.rating_count_tot DESC, f.price DESC, f.user_rating DESC

/* A:Yes because the most rated are all free */
