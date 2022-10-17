SELECT * FROM apple.applestore_windows;

-- 1. Which are the different genres?
SELECT DISTINCT prime_genre
FROM apple.applestore_windows;

-- 2. Which is the genre with more apps rated?
SELECT prime_genre, SUM(rating_count_tot) as sum_rating, count(id) as count
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY sum_rating DESC;

-- 3. Which is the genre with more apps?
SELECT prime_genre, count(id) as count
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY count DESC;

-- 4. Which is the one with less?
SELECT prime_genre, count(id) as count
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY count ASC;

-- 5. Take the 10 apps most rated.
SELECT track_name, SUM(rating_count_tot) as sum_rating, prime_genre
FROM apple.applestore_windows
GROUP BY track_name
ORDER BY sum_rating DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.
SELECT track_name, user_rating, SUM(rating_count_tot) as sum_rating, prime_genre
FROM apple.applestore_windows
GROUP BY track_name, user_rating
ORDER BY user_rating DESC, sum_rating DESC
LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
-- see README.md

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
-- see README.md

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- see README.md

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, SUM(rating_count_tot) as sum_rating
FROM apple.applestore_windows
GROUP BY track_name, user_rating
ORDER BY user_rating DESC, sum_rating DESC
LIMIT 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
-- check if best rated apps need to be paid
SELECT track_name, user_rating, SUM(rating_count_tot) as sum_rating, price
FROM apple.applestore_windows
GROUP BY track_name, user_rating
ORDER BY user_rating DESC, sum_rating DESC
LIMIT 10;
-- result: 4 out of 10 are paid apps but only 0.99 - 1.99


-- check if most rated apps need to be paid
SELECT track_name, SUM(rating_count_tot) as sum_rating, price
FROM apple.applestore_windows
GROUP BY track_name
ORDER BY sum_rating DESC
LIMIT 10;
-- result: 0 out of 10 are paid apps

-- check most expensive apps
SELECT track_name, user_rating, SUM(rating_count_tot) as sum_rating, price
FROM apple.applestore_windows
GROUP BY track_name, price
ORDER BY price DESC
LIMIT 10;
-- result: most expensive apps have only few ratings, from 3.5 - 4
