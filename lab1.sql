SELECT * FROM laboratory.applestore3;

/* 1. Which are the different genres? */

SELECT DISTINCT prime_genre
FROM laboratory.applestore3;

/* 2.Which is the genre with more apps rated? */

SELECT DISTINCT prime_genre, SUM(rating_count_tot) AS APP_RATES
FROM laboratory.applestore3
GROUP BY prime_genre
ORDER BY APP_RATES DESC;


/* 3.Which is the genre with more apps? */

SELECT DISTINCT prime_genre, COUNT(prime_genre) AS BEST_GENRE
FROM laboratory.applestore3
GROUP BY prime_genre
ORDER BY BEST_GENRE DESC
LIMIT 1;

/*  4. Which is the ONE WITH LESS? */

SELECT DISTINCT prime_genre, COUNT(prime_genre) AS BEST_GENRE
FROM laboratory.applestore3
GROUP BY prime_genre
ORDER BY BEST_GENRE ASC;

/*  5. Take the 10 apps most rated */

SELECT DISTINCT rating_count_tot, track_name
FROM laboratory.applestore3
ORDER BY rating_count_tot DESC;

/*  6. Take the 10 apps BEST rated by user */

SELECT DISTINCT track_name, user_rating
FROM laboratory.applestore3
ORDER BY user_rating DESC;

/*  10. How could you take the top 3 regarding the user ratings but also the number of votes? */

SELECT DISTINCT track_name, user_rating, rating_count_tot
FROM laboratory.applestore3
GROUP BY user_rating, rating_count_tot
ORDER BY user_rating ASC, rating_count_tot ASC;








