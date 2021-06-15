SELECT * FROM app.applestore;

/***1. Which are the different genres?**/
SELECT DISTINCT prime_genre 
FROM app.applestore AS app;

/**2. Which is the genre with more apps rated?**/
select prime_genre, count(*) AS count
FROM app.applestore AS app
GROUP BY prime_genre ORDER BY app.count DESC;

/**3. Which is the genre with more apps?**/
SELECT COUNT(prime_genre), prime_genre from app.applestore AS app
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
LIMIT 20;

/**4. Which is the one with less?**/
SELECT COUNT(prime_genre), prime_genre FROM app.applestore AS app
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
LIMIT 20;

/**5. Take the 10 apps most rated.**/
SELECT prime_genre,rating_count_tot  FROM app.applestore AS app
GROUP BY rating_count_tot
ORDER BY rating_count_tot DESC
LIMIT 10;

/**6. Take the 10 apps best rated by users.**/
SELECT app.track_name,app.user_rating 
FROM app.applestore AS app
GROUP BY app.track_name ORDER BY app.user_rating DESC
LIMIT 10;

