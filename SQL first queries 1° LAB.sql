-- 1. Which are the different genres?
select distinct prime_genre
from APPLE;

-- 2. Which is the genre with more apps rated?
SELECT prime_genre, sum(rating_count_tot)
FROM APPLE
GROUP BY prime_genre 
ORDER BY sum(rating_count_tot) DESC
LIMIT 1;

-- 3. Which is the genre with more apps?

SELECT prime_genre, COUNT(prime_genre) FROM APPLE GROUP BY prime_genre ORDER BY COUNT(prime_genre) DESC LIMIT 1;

-- 4. Which is the one with less?

SELECT prime_genre, COUNT(prime_genre) FROM APPLE GROUP BY prime_genre ORDER BY COUNT(prime_genre) LIMIT 1;

-- 5. Take the 10 apps most rated.

SELECT track_name, SUM(rating_count_tot) FROM APPLE GROUP BY track_name ORDER BY SUM(rating_count_tot) DESC LIMIT 10;

-- 6. Take the 10 apps best rated by users.

SELECT track_name, user_rating FROM APPLE  ORDER BY user_rating DESC LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.

SELECT track_name, SUM(rating_count_tot), prime_genre FROM APPLE GROUP BY track_name, prime_genre ORDER BY SUM(rating_count_tot) DESC LIMIT 20;

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
SELECT track_name, rating_count_tot, user_rating
FROM APPLE
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 9. Now compare the data from questions 5 and 6. What do you see?

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT * FROM APPLE ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 3;
-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT * FROM APPLE ORDER BY price DESC, rating_count_tot DESC LIMIT 10;
SELECT * FROM APPLE ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 10;
-- If you see the ratting and the price dont have so much relation
