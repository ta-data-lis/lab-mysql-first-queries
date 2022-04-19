SELECT DISTINCT prime_genre
FROM newlabs.applestore_windows;

SELECT prime_genre, COUNT(*)
FROM newlabs.applestore_windows
WHERE applestore_windows.rating_count_tot != 0
GROUP BY prime_genre;

SELECT prime_genre, COUNT(*) AS num_apps
FROM newlabs.applestore_windows
GROUP BY prime_genre
ORDER BY num_apps DESC;

SELECT id, track_name, rating_count_tot
FROM newlabs.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT id, track_name, user_rating
FROM newlabs.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

SELECT id, track_name, rating_count_tot, prime_genre, price, `lang.num`
FROM newlabs.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT id, track_name, user_rating, prime_genre, price
FROM newlabs.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

SELECT id, track_name, user_rating, rating_count_tot, user_rating*rating_count_tot AS absolute_score
FROM newlabs.applestore_windows
WHERE user_rating*rating_count_tot IS NOT NULL
ORDER BY absolute_score DESC
LIMIT 3;

SELECT id, track_name, price, rating_count_tot, user_rating
FROM newlabs.applestore_windows
ORDER BY price DESC;


