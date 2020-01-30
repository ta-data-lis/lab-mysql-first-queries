# Which are the different genres?
SELECT DISTINCT prime_genre
FROM apps;

# Which is the genre with more apps rated?
SELECT prime_genre, COUNT(prime_genre) AS genre_occurence
FROM (SELECT *
FROM apps
WHERE rating_count_tot > 0) summary
GROUP BY prime_genre
ORDER BY genre_occurence DESC
LIMIT 1;

# Which is the genre with more apps?
SELECT prime_genre, COUNT(prime_genre) AS genre_occurence
FROM apps
GROUP BY prime_genre
ORDER BY genre_occurence DESC
LIMIT 1;

# Which is the one with less?
SELECT prime_genre, COUNT(prime_genre) AS genre_occurence
FROM apps
GROUP BY prime_genre
ORDER BY genre_occurence ASC
LIMIT 1;

# Take the 10 apps most rated.
SELECT  track_name, currency, price, rating_count_tot, user_rating, prime_genre
FROM apps
ORDER BY rating_count_tot DESC
LIMIT 10;

# Take the 10 apps best rated by users.
SELECT track_name, currency, price, rating_count_tot, user_rating, prime_genre
FROM apps
ORDER BY user_rating DESC
LIMIT 10;

# How could you take the top 3 regarding the user ratings but also the number of votes?
CREATE TEMPORARY TABLE best_rated
SELECT track_name, currency, price, rating_count_tot, user_rating, prime_genre
FROM apps
ORDER BY user_rating DESC
LIMIT 3;

SELECT *
FROM best_rated
ORDER BY rating_count_tot DESC;