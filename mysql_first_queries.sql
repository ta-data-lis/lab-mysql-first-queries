# Lab | My first queries

SELECT * FROM lab1.applestore_windows;

-- 1. Which are the different genres?
SELECT DISTINCT prime_genre FROM lab1.applestore_windows;

-- 2. Which is the genre with more apps rated?
SELECT max(rating_count_tot), prime_genre
FROM lab1.applestore_windows
GROUP BY prime_genre
ORDER BY rating_count_tot DESC
LIMIT 1;

-- 3. Which is the genre with more apps?**

SELECT prime_genre, count(id)
FROM lab1.applestore_windows
GROUP BY prime_genre
ORDER BY count(id) DESC;

-- 4. Which is the one with less?**

SELECT prime_genre, count(id)
FROM lab1.applestore_windows
GROUP BY prime_genre
ORDER BY count(id) ASC
LIMIT 5;

-- 5. Take the 10 apps most rated.**

SELECT track_name, rating_count_tot
FROM lab1.applestore_windows
GROUP BY track_name
ORDER BY rating_count_tot desc
LIMIT 10;

-- 6. Take the 10 apps best rated by users.**

SELECT track_name, user_rating
FROM lab1.applestore_windows
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.**

SELECT count(*)
FROM lab1.applestore_windows
WHERE user_rating = 5;

-- 9. Now compare the data from questions 5 and 6. What do you see?**

SELECT track_name, rating_count_tot, user_rating
FROM lab1.applestore_windows
GROUP BY track_name
ORDER BY rating_count_tot desc
LIMIT 10;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?**

SELECT track_name, user_rating, rating_count_tot
FROM lab1.applestore_windows
GROUP BY track_name
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


-- 11. Do people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT price, user_rating
FROM lab1.applestore_windows
GROUP BY price
ORDER BY price DESC, user_rating DESC;

SELECT price, rating_count_tot, user_rating
FROM lab1.applestore_windows
GROUP BY price
ORDER BY price DESC, rating_count_tot DESC;

SELECT rating_count_tot, price, user_rating
FROM lab1.applestore_windows
GROUP BY price
ORDER BY rating_count_tot DESC, price DESC;

SELECT price, user_rating, rating_count_tot
FROM lab1.applestore_windows
GROUP BY price
ORDER BY price DESC, user_rating DESC;
