
SELECT *
FROM LAB.applestore2;

/* Question 1 */
SELECT DISTINCT prime_genre 
FROM LAB.applestore2;

/* Question 2 */
SELECT prime_genre, rating_count_tot
FROM LAB.applestore2
ORDER BY rating_count_tot DESC
LIMIT 1;

/* Question 3 */
SELECT prime_genre, COUNT(prime_genre)
FROM LAB.applestore2
group by prime_genre
ORDER BY COUNT(prime_genre) DESC
LIMIT 1;

/* Question 4 */
SELECT prime_genre, COUNT(prime_genre)
FROM LAB.applestore2
group by prime_genre
ORDER BY COUNT(prime_genre) ASC
LIMIT 1;

/* Question 5 */
SELECT track_name, rating_count_tot
FROM LAB.applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;

/* Question 7 */
SELECT track_name, user_rating, prime_genre
FROM LAB.applestore2
ORDER BY user_rating DESC
LIMIT 10;

/* Question 10 */
SELECT track_name, user_rating, rating_count_tot
FROM LAB.applestore2
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/* Question 11 */

SELECT price,sum(rating_count_tot)
FROM LAB.applestore2
GROUP BY price
ORDER BY SUM(rating_count_tot) DESC;

SELECT track_name, user_rating, price, rating_count_tot
FROM LAB.applestore2
WHERE price != 0
ORDER BY user_rating DESC, rating_count_tot DESC;

SELECT user_rating, AVG(price) 
FROM LAB.applestore2
GROUP BY user_rating
ORDER BY AVG(price) DESC;

