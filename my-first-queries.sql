SELECT *
FROM apple.applestore_windows;

-- **1. Which are the different genres?**

SELECT DISTINCT prime_genre
FROM apple.applestore_windows;

-- **2. Which is the genre with more apps rated?**

SELECT prime_genre, SUM(rating_count_tot) AS total_rating
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY total_rating DESC;



-- **3. Which is the genre (prime_genre) with more apps (track_name)?**

SELECT prime_genre, count(*)
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY count(*) DESC;

-- **4. Which is the one with less?**

SELECT prime_genre, count(*)
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY count(*) ASC;

-- **5. Take the 10 apps (track_name) most rated (rating_count_tot) .**
SELECT track_name, rating_count_tot
FROM apple.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

-- **6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating
FROM apple.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

-- **7. Take a look on the data you retrieved in the question 5. Give some insights.**
SELECT track_name, rating_count_tot, price, prime_genre, user_rating
FROM apple.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

-- **8. Take a look on the data you retrieved in the question 6. Give some insights.**
SELECT track_name, user_rating, rating_count_tot, prime_genre, price
FROM apple.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;


-- **9. Now compare the data from questions 5 and 6. What do you see?**

-- **10. How could you take the top 3 regarding the user ratings but also the number of votes?**

SELECT track_name, user_rating, rating_count_tot
FROM apple.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3
;

-- **11. Does people care about the price?** 
SELECT track_name, user_rating, rating_count_tot, price
FROM apple.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC 
LIMIT 50
;