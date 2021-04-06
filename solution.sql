SELECT * FROM AppleStore;

-- 1. Q.
SELECT DISTINCT prime_genre FROM AppleStore;

-- 2. Q.
SELECT SUM(rating_count_tot) AS Apps_Rated, prime_genre AS Genre FROM AppleStore 
GROUP BY 2;

-- 3. Q.
SELECT COUNT(id) AS Apps_number, prime_genre AS Genre FROM AppleStore
GROUP BY 2
ORDER BY Apps_number DESC 
LIMIT 1;

-- 4. Q.
SELECT count(id) AS Apps_number, prime_genre AS Genre FROM AppleStore
GROUP BY 2
ORDER BY Apps_number ASC 
LIMIT 1;

-- 5. Q.
SELECT track_name AS "APPS", rating_count_tot AS "Number of Ratings"  FROM  AppleStore 
ORDER BY 2 DESC
LIMIT 10;

-- 6. Q.
SELECT track_name AS "APPS", user_rating AS "User Rating"  FROM  AppleStore 
ORDER BY 2 DESC, rating_count_tot DESC 
LIMIT 10;

-- 7. Q

-- 8. Q

-- 9. Q.
SELECT track_name AS "APPS", user_rating AS "User Rating", rating_count_tot AS "Number of Ratings" FROM  AppleStore 
ORDER BY 2 DESC, rating_count_tot DESC 
LIMIT 10;

-- 10. Q.
SELECT track_name AS "APPS", user_rating AS "User Rating", rating_count_tot AS "Number of Ratings" FROM  AppleStore 
ORDER BY 2 DESC, rating_count_tot DESC 
LIMIT 3;

-- 11. Q.
SELECT track_name AS APP, user_rating AS RATING, SUM(rating_count_tot) AS "Number of Ratings", AVG(price) AS PRICE FROM  AppleStore 
GROUP BY 2, 1
ORDER BY 2 DESC
LIMIT 15;