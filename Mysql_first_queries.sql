CREATE DATABASE Applestore;

# 1. Selecting what different types of genres there are:
SELECT DISTINCT prime_genre FROM Data;

# 2. The genre with more apps rated:
SELECT prime_genre, COUNT(track_name), SUM(rating_count_tot) 
FROM Data
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC;
 
# 3. The genre with more apps:
SELECT prime_genre, COUNT(track_name)
FROM Data
GROUP BY prime_genre;
ORDER BY COUNT(track_name) DESC;

# 4. The genre with less apps:
SELECT prime_genre, COUNT(track_name)
FROM Data 
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC;

# 5. The 10 apps most rated
SELECT track_name, rating_count_tot
FROM Data
ORDER BY rating_count_tot DESC
LIMIT 10;

# 6. The 10 apps best rated
SELECT track_name, user_rating
FROM Data 
ORDER BY user_rating DESC
LIMIT 10;

# 9 Compare the data from questions 5 and 6. What do you see?
SELECT track_name, user_rating, rating_count_tot
FROM Data 
ORDER BY user_rating DESC, rating_count_tot DESC;

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot
FROM Data
ORDER BY user_rating DESC, rating_count_tot DESC 
LIMIT 3;

# 11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
# Checking if a higher price has a higher userrating:
SELECT track_name, user_rating, price
FROM Data
ORDER BY price DESC, user_rating DESC;

# Checking if apps with a higher price have more ratings:
SELECT track_name, rating_count_tot, price
FROM Data
ORDER BY price DESC;

# Checking which apps have more ratings:
SELECT track_name, rating_count_tot, price
FROM Data
ORDER BY rating_count_tot DESC;
