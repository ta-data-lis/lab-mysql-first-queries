/* At the beginning of each time the file is open, the folder ... needs to be deleted */

DROP DATABASE IF EXISTS test;

CREATE DATABASE IF NOT EXISTS test;

USE test;

DROP TABLE IF EXISTS data;

CREATE TABLE IF NOT EXISTS data (
	table_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id INT UNSIGNED,
	track_name TEXT,
	size_bytes INT UNSIGNED,
	currency VARCHAR(5),
	price FLOAT,
	rating_count_tot INT UNSIGNED,
	rating_count_ver INT UNSIGNED,
	user_rating INT UNSIGNED,
	user_rating_ver INT UNSIGNED,
	ver VARCHAR(30),
	cont_rating VARCHAR(5),
	prime_genre VARCHAR(50),
	`sup_devices.num` INT UNSIGNED,
	`ipadSc_urls.num` INT UNSIGNED,
	`lang.num` INT UNSIGNED,
	vpp_lic INT UNSIGNED
);

LOAD DATA INFILE 'AppleStore.csv'
INTO TABLE data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 1. Which are the different genres? 
SELECT DISTINCT(prime_genre) AS genre
FROM data;

-- 2. Which is the genre with more apps rated?
SELECT prime_genre AS genre, COUNT(prime_genre) AS number_apps_rated
FROM 
(SELECT *
FROM data
WHERE rating_count_tot != 0) AS S
GROUP BY genre
ORDER BY number_apps_rated DESC
LIMIT 1;

-- 3. Which is the genre with more apps?
SELECT prime_genre AS genre, COUNT(prime_genre) AS ratings
FROM data
GROUP BY prime_genre
ORDER BY ratings DESC
LIMIT 1;

-- 4. Which is the one with less?
SELECT prime_genre AS genre, COUNT(prime_genre) AS ratings
FROM data
GROUP BY prime_genre
ORDER BY ratings ASC
LIMIT 1;

-- 5. Take the 10 apps most rated.
SELECT track_name AS 'Name of App'
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.
SELECT track_name AS 'Name of App', user_rating
FROM data
ORDER BY user_rating DESC
LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
SELECT track_name AS 'Name of App', rating_count_tot AS 'Number of ratings'
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT MIN(rating_count_tot) AS minimum, MAX(rating_count_tot) AS maximum, AVG(rating_count_tot) AS mean, STDDEV_SAMP(rating_count_tot) AS 'standard deviation', VAR_SAMP(rating_count_tot) AS variance
FROM (SELECT rating_count_tot
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10) AS S;

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
SELECT track_name AS 'Name of App'
FROM data
ORDER BY user_rating DESC
LIMIT 10;

SELECT DISTINCT(user_rating) AS rate, COUNT(*) AS count, COUNT(*)/(SELECT COUNT(user_rating) FROM data)*100 AS percentage
FROM data
GROUP BY rate
ORDER BY rate;

-- 9. Now compare the data from questions 5 and 6. What do you see?
SELECT track_name AS 'Name of App', user_rating AS rate, rating_count_tot
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT @ax := AVG(user_rating), 
	   @ay := AVG(rating_count_tot),
       @div := (STDDEV_SAMP(user_rating) * STDDEV_SAMP(rating_count_tot))
FROM data;

SELECT SUM((user_rating - @ax) * (rating_count_tot - @ay))/((COUNT(user_rating)-1)*@div)
FROM data;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name AS 'Name of App', user_rating AS rating, rating_count_tot AS 'Number of ratings'
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

-- 11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT @ax := AVG(price), 
	   @ay := AVG(rating_count_tot),
       @div := (STDDEV_SAMP(price) * STDDEV_SAMP(rating_count_tot))
FROM data;

SELECT SUM((price - @ax) * (rating_count_tot - @ay))/((COUNT(price)-1)*@div)
FROM data;
-- ####
SELECT @ax := AVG(price), 
	   @ay := AVG(user_rating),
       @div := (STDDEV_SAMP(price) * STDDEV_SAMP(user_rating))
FROM data;

SELECT SUM((price - @ax) * (user_rating - @ay))/((COUNT(price)-1)*@div)
FROM data;
-- #### -- 
SELECT @ax := AVG(price), 
	   @ay := AVG(size_bytes),
       @div := (STDDEV_SAMP(price) * STDDEV_SAMP(size_bytes))
FROM data;

SELECT SUM((price - @ax) * (size_bytes - @ay))/((COUNT(price)-1)*@div)
FROM data;

