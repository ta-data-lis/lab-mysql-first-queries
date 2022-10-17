SELECT * FROM Apple.applestore_windows;

SELECT DISTINCT prime_genre
FROM apple.applestore_windows;

-- 2. Which is the genre with more apps rated?
SELECT COUNT(*), rating_count_tot, prime_genre
FROM apple.applestore_windows
GROUP BY prime_genre, rating_count_tot
ORDER BY rating_count_tot DESC
LIMIT 1;
-- Social Networking

-- or
SELECT prime_genre, COUNT(*)
FROM apple.applestore_windows
GROUP BY prime_genre
LIMIT 1;

-- 3. Which is the genre with more apps?**
SELECT prime_genre, COUNT(*)
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
Limit 1;
-- Games

-- 4. Which is the one with less?**
SELECT prime_genre, COUNT(*)
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) ASC
Limit 1;

-- CATALOGS

-- 5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot
FROM apple.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating
FROM apple.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot
FROM apple.applestore_windows
ORDER BY user_rating DESC
LIMIT 3;

-- 11. Do people care about price?
SELECT track_name, rating_count_tot, price
FROM apple.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;
-- the most rated apps are free
SELECT track_name, user_rating, price
FROM apple.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;
-- the users favorite apps are also free
SELECT track_name, user_rating, price
FROM apple.applestore_windows
ORDER BY user_rating ASC
LIMIT 10;
-- there are 3 apps in the top 5 least rated by users that are not free.
SELECT track_name, user_rating, price
FROM apple.applestore_windows
ORDER BY user_rating DESC;
