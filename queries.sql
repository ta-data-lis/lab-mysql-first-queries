USE labmysql;

-- 1. Which are the different genres?
SELECT DISTINCT prime_genre FROM data;

-- 2. Which is the genre with more apps rated?
SELECT prime_genre, SUM(rating_count_tot) AS total_ratings, COUNT(track_name) AS total_apps FROM data WHERE rating_count_tot>0 GROUP BY prime_genre ORDER BY total_ratings DESC LIMIT 1;

-- 3. Which is the genre with more apps?
SELECT prime_genre, COUNT(track_name) AS total_apps FROM data GROUP BY prime_genre ORDER BY total_apps DESC LIMIT 1;

-- 4. Which is the one with less?
SELECT prime_genre, COUNT(track_name) AS total_apps FROM data GROUP BY prime_genre ORDER BY total_apps ASC LIMIT 1;

-- 5. Take the 10 apps most rated.
SELECT * FROM data ORDER BY rating_count_tot DESC LIMIT 10;

-- 6. Take the 10 apps best rated by users.
SELECT * FROM data ORDER BY user_rating DESC LIMIT 10;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT * FROM data ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 3;

-- 11. Do people care about the price?
SELECT COUNT(*), AVG(rating_count_tot) FROM data WHERE price=0;
SELECT COUNT(*), AVG(rating_count_tot) FROM data WHERE price>0;
