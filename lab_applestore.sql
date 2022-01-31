SELECT *
FROM apple.applestore;

/**1. Which are the different genres?**/
SELECT DISTINCT prime_genre
FROM apple.applestore;

/**2. Which is the genre with more apps rated?**/
SELECT prime_genre, COUNT(*) as nr_apps_rated
FROM apple.applestore
WHERE rating_count_tot >0
GROUP BY prime_genre
ORDER BY nr_apps_rated DESC
LIMIT 1;

/**3. Which is the genre with more apps?**/
SELECT prime_genre, COUNT(*) as nr_apps
FROM apple.applestore
GROUP BY prime_genre
ORDER BY nr_apps DESC
LIMIT 1;

/**4. Which is the one with less?**/
SELECT prime_genre, COUNT(*) as nr_apps
FROM apple.applestore
GROUP BY prime_genre
ORDER BY nr_apps ASC
LIMIT 1;

/**5. Take the 10 apps most rated.**/
SELECT track_name, rating_count_tot
FROM apple.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/**6. Take the 10 apps best rated by users.**/
SELECT track_name, user_rating
FROM apple.applestore
ORDER BY user_rating DESC
LIMIT 10;

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?**/
SELECT track_name, user_rating, rating_count_tot
FROM apple.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

SELECT track_name, user_rating, rating_count_tot
FROM apple.applestore
ORDER BY rating_count_tot DESC, user_rating DESC
LIMIT 3;



/**11. Does people care about the price?**/

/*fisrt I checked if there was more than one currency or if I could compare between all different price values*/
SELECT DISTINCT currency
FROM apple.applestore;

/*Average rating and nr of ratings grouped by price*/
SELECT AVG(user_rating), AVG(rating_count_tot), price, COUNT(*)
FROM apple.applestore
GROUP BY price
ORDER BY price DESC;


SELECT track_name, user_rating, rating_count_tot, price
FROM apple.applestore
ORDER BY user_rating DESC;















