/* First check-out of the table*/
SELECT * 
FROM labs.applestore_windows;

/* Question 1: SELECTING all unique Genres */
SELECT DISTINCT prime_genre
FROM labs.applestore_windows;

/* Question 2: Which is the genre with more apps */
SELECT prime_genre, MAX(rating_count_tot)
FROM labs.applestore_windows;

/* Question 3. Which is the genre with more apps? */
SELECT prime_genre, COUNT(*)
FROM labs.applestore_windows
GROUP BY prime_genre;

/*4. Which is the one with less?*/
SELECT prime_genre, COUNT(*)
FROM labs.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) ASC;

/*5. Take the 10 apps most rated.*/
SELECT track_name, rating_count_tot
FROM labs.applestore_windows
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/
SELECT track_name, user_rating
FROM labs.applestore_windows
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
SELECT track_name, rating_count_tot
FROM labs.applestore_windows
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, rating_count_tot, user_rating, rating_count_ver, prime_genre
FROM labs.applestore_windows
WHERE user_rating >= avg(user_rating)
GROUP BY track_name
ORDER BY rating_count_tot DESC 
LIMIT 10;

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
SELECT track_name, user_rating, rating_count_tot, 
FROM labs.applestore_windows
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

SELECT AVG(rating_count_tot) AS average_rating_count
FROM labs.applestore_windows;

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes?** */
SELECT track_name, prime_genre, user_rating, rating_count_tot 
FROM labs.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


/* 11. Do people care about the price?** */

SELECT Count(*) 
FROM labs.applestore_windows
where price != 0; 

SELECT Count(*) 
FROM labs.applestore_windows
where price = 0; 

SELECT AVG(user_rating)
FROM labs.applestore_windows
WHERE price!=0;

SELECT AVG(user_rating)
FROM labs.applestore_windows
WHERE price=0;

SELECT AVG(rating_count_tot)
FROM labs.applestore_windows
WHERE price=0;

SELECT AVG(rating_count_tot)
FROM labs.applestore_windows
WHERE price!=0;




