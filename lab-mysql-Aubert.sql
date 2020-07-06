/* question 1 */
SELECT d.prime_genre, count(*)
FROM applestore.data as d
GROUP BY d.prime_genre;

/* question 2 */
SELECT 
	d.prime_genre,d.rating_count_tot as "Maximum"
FROM 
	applestore.data as d
WHERE d.rating_count_tot = (
		SELECT MAX(d.rating_count_tot) AS "MAX"
		FROM applestore.data as d
            )
;

/* question 3 */
SELECT
d.prime_genre as genre, 
count(*) as maximum
FROM applestore.data as d
group by d.prime_genre
ORDER BY maximum DESC
LIMIT 1;

/* question 4 */
SELECT
d.prime_genre as genre, 
count(*) as maximum
FROM applestore.data as d
group by d.prime_genre
ORDER BY maximum ASC
LIMIT 1;

/* question 5 */
SELECT d.track_name as name, d.rating_count_tot
FROM applestore.data as d
ORDER BY d.rating_count_tot DESC
LIMIT 10;

/* question 6 */
SELECT d.track_name as name, d.user_rating
FROM applestore.data as d
ORDER BY d.user_rating DESC
LIMIT 10;

/* question 7 */
SELECT ten_most_rated.prime_genre, count(*)
FROM 
	(SELECT *
	FROM applestore.data as d
	ORDER BY d.rating_count_tot DESC
	LIMIT 10) ten_most_rated
GROUP BY ten_most_rated.prime_genre
ORDER BY count(*) DESC

SELECT ten_most_rated.track_name, ten_most_rated.price
FROM 
	(SELECT *
	FROM applestore.data as d
	ORDER BY d.rating_count_tot DESC
	LIMIT 10) ten_most_rated
;

/* question 8 */
SELECT ten_highly_rated.track_name, ten_highly_rated.price
FROM (SELECT *
	FROM applestore.data as d
	ORDER BY d.user_rating DESC
	LIMIT 10) ten_highly_rated
ORDER BY ten_highly_rated.price
;

SELECT ten_highly_rated.track_name, ten_highly_rated.price
FROM (SELECT *
	FROM applestore.data as d
	ORDER BY d.user_rating DESC
	LIMIT 10) ten_highly_rated
ORDER BY ten_highly_rated.price
;

SELECT AVG(ten_highly_rated.price)
FROM (SELECT *
	FROM applestore.data as d
	ORDER BY d.user_rating DESC
	LIMIT 10) ten_highly_rated
ORDER BY ten_highly_rated.price
;

/* Question 10 */
SELECT most_rated.track_name, most_rated.user_rating, most_rated.rating_count_tot
FROM (SELECT *
	FROM applestore.data as d
	ORDER BY d.rating_count_tot DESC
	LIMIT 100) most_rated
ORDER BY most_rated.user_rating DESC
limit 3
;

/* Question 11 */
SELECT most_rated_most_rating.user_rating, ROUND(AVG(most_rated_most_rating.price),2) as "AVERAGE PRICE"
FROM (
	SELECT *
	FROM (SELECT *
			FROM applestore.data as d
			ORDER BY d.rating_count_tot DESC
			LIMIT 1000) most_rated
	ORDER BY most_rated.user_rating DESC
) most_rated_most_rating
GROUP BY most_rated_most_rating.user_rating
ORDER BY most_rated_most_rating.user_rating

SELECT highest_price.price, SUM(highest_price.rating_count_tot) AS TOTAL_RATING
FROM (SELECT *
		FROM applestore.data as d
		/*ORDER BY d.price DESC*/
		LIMIT 10000) highest_price
GROUP BY highest_price.price
ORDER BY TOTAL_RATING DESC

SELECT SUM(paid_app.rating_count_tot)
FROM (SELECT *
		FROM applestore.data as d
		WHERE d.price >0 ) paid_app

SELECT SUM(free_app.rating_count_tot)
FROM (SELECT *
		FROM applestore.data as d
		WHERE d.price <0.01 ) free_app

SELECT SUM(total_app.rating_count_tot)
FROM (SELECT *
		FROM applestore.data as d) total_app





