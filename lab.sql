-- 0 - Table Visualization
SELECT *
FROM applestore.applestore_windows;

-- 1. Which are the different genres?
SELECT DISTINCT prime_genre
FROM applestore.applestore_windows;

-- 2. Which is the genre with more apps rated?
SELECT prime_genre, COUNT(*) AS app_count
FROM applestore.applestore_windows
WHERE rating_count_tot != 0
GROUP BY prime_genre
ORDER BY app_count DESC;

-- 3. Which is the genre with more apps?

SELECT prime_genre, COUNT(*) AS app_count
FROM applestore.applestore_windows
GROUP BY prime_genre
ORDER BY app_count DESC;

-- 4. Which is the one with less?

SELECT prime_genre, COUNT(*) AS app_count
FROM applestore.applestore_windows
GROUP BY prime_genre
ORDER BY app_count ASC;

-- 5. Take the 10 apps most rated.

SELECT track_name, rating_count_tot
FROM applestore.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.
SELECT track_name, user_rating
FROM applestore.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.

-- Used to know how many apps are not games

SELECT count(*) as app_count_non_games
FROM applestore.applestore_windows
WHERE prime_genre != 'Games';

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
SELECT track_name, user_rating, rating_count_tot
FROM applestore.applestore_windows
WHERE user_rating = 5 AND rating_count_tot <= 100
ORDER BY user_rating DESC;

SELECT track_name, user_rating, rating_count_tot, prime_genre
FROM applestore.applestore_windows
WHERE user_rating = 5 AND rating_count_tot >= 1000
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- NO QUERIES

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot, rating_count_tot * user_rating AS rating_score
FROM applestore.applestore_windows
ORDER BY rating_score DESC
LIMIT 3;

-- 11. Do people care about the price?
CREATE TEMPORARY TABLE more_ratings
SELECT id, track_name, price, rating_count_tot
FROM applestore.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 100;
#DROP TEMPORARY TABLE more_ratings;

CREATE TEMPORARY TABLE priciest
SELECT id, track_name, price, rating_count_tot
FROM applestore.applestore_windows
ORDER BY price DESC
LIMIT 100;

-- Determine if any of the 50 priciest items are one of the most downloaded

SELECT * FROM more_ratings
INNER JOIN priciest
ON more_ratings.id = priciest.id;

-- Calculate a revenue proxy, rating_count_tot (as a proxy for downloads) * price
CREATE TEMPORARY TABLE more_revenue
SELECT id, track_name, price, rating_count_tot, price * rating_count_tot AS revenue
FROM applestore.applestore_windows
WHERE price != 0
ORDER BY revenue DESC
LIMIT 100;

#DROP TEMPORARY TABLE more_revenue;
-- Now, see if any of the apps with most revenue are also one of the 100 most downloaded (rated):
SELECT *
FROM more_ratings
INNER JOIN more_revenue
ON more_ratings.id = more_revenue.id
ORDER BY more_ratings.rating_count_tot DESC;

#Getting the proportion of paid/free apps
SELECT 
(SELECT COUNT(*)
FROM applestore.applestore_windows
WHERE price = 0) / 
(SELECT COUNT(*)
FROM applestore.applestore_windows)
AS free_apps_pct,
(SELECT COUNT(*)
FROM applestore.applestore_windows
WHERE price != 0) / 
(SELECT COUNT(*)
FROM applestore.applestore_windows)
AS paid_apps_pct;

#Finding out top 100 paid apps
SELECT *
FROM(
SELECT id
FROM applestore.applestore_windows
WHERE price > 2.68
ORDER BY rating_count_tot DESC
LIMIT 100) AS costly_apps
INNER JOIN (SELECT id, track_name, price, rating_count_tot
FROM applestore.applestore_windows
WHERE price != 0
ORDER BY rating_count_tot DESC
LIMIT 100) AS top_paid_apps
ON costly_apps.id = top_paid_apps.id
ORDER BY top_paid_apps.price DESC;

#Finding out average price
SELECT AVG(price) AS avg_top100_paid_apps_price
FROM (
SELECT track_name, price, rating_count_tot
FROM applestore.applestore_windows
WHERE price != 0
ORDER BY rating_count_tot DESC
LIMIT 100) AS top_100_paid_apps;