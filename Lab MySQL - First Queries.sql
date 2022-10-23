SELECT *
FROM store_info;

# 1. Which are the different genres? #
SELECT DISTINCT prime_genre
FROM store_info;

#2. Which is the genre with more apps rated?
SELECT prime_genre, count(id)
FROM store_info
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY count(id) DESC
LIMIT 1;

# 3. Which is the genre with more apps?
SELECT prime_genre, count(id)
FROM store_info
GROUP BY prime_genre
ORDER BY count(id) DESC
LIMIT 1;

# 4. Which is the one with less?
SELECT prime_genre, count(id)
FROM store_info
GROUP BY prime_genre
ORDER BY count(id) ASC
LIMIT 1;

# 5. Take the 10 apps most rated
SELECT track_name
FROM store_info
ORDER BY rating_count_tot DESC
LIMIT 10;

# 6. Take the 10 apps best rated by users
SELECT track_name
FROM store_info
ORDER BY user_rating DESC
LIMIT 10;

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot
FROM store_info
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

# 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT price, AVG(rating_count_tot)
FROM store_info
GROUP BY price
ORDER BY price ASC
LIMIT 10;