-- 1
SELECT DISTINCT prime_genre
FROM Apple.applestore_windows;

-- 2
SELECT prime_genre,count(rating_count_tot)
FROM Apple.applestore_windows
GROUP BY prime_genre
LIMIT 1;

-- 3 
SELECT prime_genre,sum(track_name)
FROM Apple.applestore_windows
GROUP BY prime_genre
LIMIT 1;

-- 4
SELECT prime_genre,sum(track_name)
FROM Apple.applestore_windows
GROUP BY prime_genre
ORDER BY sum(track_name) ASC;

-- 5
SELECT track_name, rating_count_tot
FROM Apple.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6
SELECT track_name, user_rating
FROM Apple.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

-- 7 facebook and instagram were teh most rated
-- 8 Escape the Sweet Shop Series and Laurie Hernandez the Human Emoji were the best rated
-- 9 the 10 apps with the best user rating are not among the 10 most voted apps
-- 10
SELECT track_name, user_rating, rating_count_tot
FROM Apple.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


-- 11
SELECT user_rating, avg(price)
FROM Apple.applestore_windows
GROUP BY user_rating
ORDER BY avg(price) DESC;

-- the best 5 user ratings (5,4.5,4,3.5) are from the most expensive apps in average

