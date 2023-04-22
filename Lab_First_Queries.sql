/* 1. Which are the different genres? */

SELECT DISTINCT prime_genre
FROM lab_first_queries.applestore_windows;

/* 2. Which is the genre with more apps rated? */

SELECT prime_genre, COUNT(*)
FROM lab_first_queries.applestore_windows
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;

/* 3. Which is the genre with more apps? */

SELECT prime_genre, COUNT(*)
FROM lab_first_queries.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;

/* 4. Which is the one with less? */

SELECT prime_genre, COUNT(*)
FROM lab_first_queries.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) ASC
LIMIT 1;

/* 5. Take the 10 apps most rated. */

SELECT *
FROM lab_first_queries.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users. */

SELECT *
FROM lab_first_queries.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */

SELECT *
FROM lab_first_queries.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC;

/* 11. Does people care about the price? */

### analysing the relation between number of ratings and price

# average number of ratings, by price tag
SELECT price, ROUND(AVG(rating_count_tot),0)
FROM lab_first_queries.applestore_windows
GROUP BY price
ORDER BY price DESC;

# average number of ratings for free apps
SELECT ROUND(AVG(price),2) AS average_price, ROUND(AVG(rating_count_tot),0) AS average_rating_count
FROM lab_first_queries.applestore_windows
WHERE price = 0.00;

# average number of ratings for paid apps
SELECT ROUND(AVG(price),2) AS average_price, ROUND(AVG(rating_count_tot),0) AS average_rating_count
FROM lab_first_queries.applestore_windows
WHERE price > 0.00;

#### analysing the relation between user ratings and price

# average rating for free apps
SELECT ROUND(AVG(price),2) AS average_price, ROUND(AVG(user_rating),2) AS average_user_rating
FROM lab_first_queries.applestore_windows
WHERE price = 0.00;

# average rating for paid apps
SELECT ROUND(AVG(price),2) AS average_price, ROUND(AVG(user_rating),2) AS average_user_rating
FROM lab_first_queries.applestore_windows
WHERE price > 0.00;

# average rating for paid apps with a price above the average
SELECT ROUND(AVG(price),2) AS average_price, ROUND(AVG(user_rating),2) AS average_user_rating
FROM lab_first_queries.applestore_windows
WHERE price > 0.00 and price > (SELECT AVG(price) 
								FROM lab_first_queries.applestore_windows
                                WHERE price > 0.00);

# average rating for paid apps with a price below the average
SELECT ROUND(AVG(price),2) AS average_price, ROUND(AVG(user_rating),2) AS average_user_rating
FROM lab_first_queries.applestore_windows
WHERE price > 0.00 and price < (SELECT AVG(price) 
								FROM lab_first_queries.applestore_windows
                                WHERE price > 0.00);