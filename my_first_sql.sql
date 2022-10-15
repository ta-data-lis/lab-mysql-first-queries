SELECT * FROM apple.applestore_windows;

/* 1. Which are the different genres?**/

SELECT DISTINCT prime_genre
FROM apple.applestore_windows;

/* **2. Which is the genre with more apps rated?**/
SELECT prime_genre, sum(rating_count_tot)
FROM apple.applestore_windows
GROUP BY prime_genre;

/* *3. Which is the genre with more apps?**/
SELECT prime_genre, count(*)
FROM apple.applestore_windows
GROUP BY prime_genre;

/*4. Which is the one with less?**/
SELECT prime_genre, count(*) AS count
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY count ASC;

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?**/

/**5. Take the 10 apps most rated.**/
SELECT track_name, rating_count_tot
FROM apple.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

/**6. Take the 10 apps best rated by users.**/
SELECT track_name, user_rating
FROM apple.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?****/

SELECT track_name, user_rating, rating_count_tot
FROM apple.applestore_windows
WHERE user_rating=5
ORDER BY rating_count_tot DESC;

/***11. Do people care about the price?**/
SELECT track_name, user_rating, rating_count_tot, price
FROM apple.applestore_windows
ORDER BY rating_count_tot DESC;

SELECT track_name, user_rating, rating_count_tot, price
FROM apple.applestore_windows
ORDER BY user_rating DESC;

SELECT track_name, user_rating, rating_count_tot, price
FROM apple.applestore_windows
ORDER BY price DESC;

SELECT track_name, user_rating, rating_count_tot, price
FROM apple.applestore_windows
ORDER BY price ASC;

SELECT track_name, user_rating, rating_count_tot, price
FROM apple.applestore_windows
WHERE user_rating=5
ORDER BY rating_count_tot DESC
LIMIT 20;

