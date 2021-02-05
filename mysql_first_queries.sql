-- 1. Which are the different genres?
SELECT DISTINCT prime_genre FROM apple_store.apple_store;
-- 2. Which is the genre with more apps rated?
SELECT prime_genre, SUM(rating_count_tot) AS rating_count_tot_sum FROM apple_store.apple_store GROUP BY prime_genre ORDER BY rating_count_tot_sum DESC LIMIT 1;
-- 3. Which is the genre with more apps?
SELECT prime_genre, COUNT(track_name) as track_name_count FROM apple_store.apple_store GROUP BY prime_genre ORDER BY track_name_count DESC LIMIT 1;
-- 4. Which is the one with less?
SELECT prime_genre, COUNT(track_name) as track_name_count FROM apple_store.apple_store GROUP BY prime_genre ORDER BY track_name_count ASC LIMIT 1;
-- 5. Take the 10 apps most rated
SELECT prime_genre, track_name, rating_count_tot FROM apple_store.apple_store ORDER BY rating_count_tot DESC LIMIT 10;
--  6. Take the 10 apps best rated by users
SELECT prime_genre, track_name, user_rating FROM apple_store.apple_store ORDER BY user_rating DESC LIMIT 10;
-- 7. Take a look on the data you retrieved in the question 5. Give some insights

-- 8. Take a look on the data you retrieved in the question 6. Give some insights

-- 9. Now compare the data from questions 5 and 6. What do you see?
