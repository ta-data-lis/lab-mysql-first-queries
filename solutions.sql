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

/*7 */
SELECT prime_genre,rating_count_tot  FROM app.applestore AS app
GROUP BY rating_count_tot
ORDER BY rating_count_tot ASC

/*The genre with more rating is Social Networking 
and the one with none is finance */

/*8 */
SELECT app.track_name,app.user_rating 
FROM app.applestore AS app
GROUP BY app.track_name ORDER BY app.user_rating DESC
LIMIT 10;
/*The top user rating is for the app She Works His Way */

/*9 */
/*The genre Social Networking have an app called She
works His Way that is in the top 5 of user rating  */ 

/*10*/
SELECT app.track_name,app.user_rating ,app.rating_count_tot
FROM app.applestore AS app
ORDER BY user_rating DESC, app.rating_count_tot DESC
LIMIT 3;

/*11*/
SELECT app.track_name,app.user_rating ,app.rating_count_tot,app.price
FROM app.applestore AS app
ORDER BY user_rating DESC, app.rating_count_tot DESC, app.price DESC
LIMIT 100;