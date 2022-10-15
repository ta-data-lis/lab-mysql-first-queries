SELECT * FROM apple.applestore_windows;

-- 1
SELECT DISTINCT prime_genre
FROM apple.applestore_windows;

-- 2
SELECT prime_genre, count(rating_count_tot) AS count_rating
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY count_rating DESC
LIMIT 3;

-- 3
SELECT prime_genre, COUNT(id) as num_app
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY num_app DESC
LIMIT 3;

-- 4
SELECT prime_genre, COUNT(id) as num_app
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY num_app ASC
LIMIT 3;

-- 5
SELECT track_name, rating_count_tot, prime_genre
FROM apple.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6
SELECT id, track_name, user_rating, user_rating_ver
FROM apple.applestore_windows
ORDER BY user_rating DESC, user_rating_ver DESC
LIMIT 10;

SELECT id, track_name, user_rating, user_rating_ver, prime_genre
FROM apple.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

-- 10
SELECT track_name, rating_count_tot, user_rating, prime_genre
FROM apple.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

-- 11
SELECT track_name, rating_count_tot, user_rating, price, prime_genre
FROM apple.applestore_windows
ORDER BY rating_count_tot DESC;

SELECT track_name, rating_count_tot, user_rating, price, prime_genre
FROM apple.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC;