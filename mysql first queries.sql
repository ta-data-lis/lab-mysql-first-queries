
USE applestore; 

SELECT track_name, user_rating, user_rating_ver
FROM applestore2;

/* 1. Which are the different genres? */

SELECT DISTINCT prime_genre
FROM applestore2;

-- DISTINCT in order to prevent repetitions in genres

/* 2. Which is the genre with more apps rated? */

SELECT DISTINCT prime_genre, SUM(rating_count_tot)
FROM applestore2
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1;

-- SELECT the columns we want to check and the sum of total number of ratings grouped by
--  genre with a descendent order to be able to display with LIMIT just the top/best/more

/* 3. Which is the genre with more apps? */

SELECT DISTINCT prime_genre, COUNT(track_name)
FROM applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC
LIMIT 1;

-- as we did previously but in this case we used the column with the name of the apps
-- to count on each genre  


/* 4. Which is the one with less? */

SELECT DISTINCT prime_genre, COUNT(track_name)
FROM applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC
LIMIT 1;

-- changed the order by to check the weaker in terms of quantity

/* 5. Take the 10 apps most rated. */
SELECT track_name, rating_count_tot AS rattings
FROM applestore2
GROUP BY track_name
ORDER BY rattings DESC
LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */
-- choosen the column of the apps and again the one who counts the total
-- number of ratting, making that count per app ordered in descencent ratings,
-- of course, cause we want to check if they are the top 10 we limit after order 

/* 6. Take the 10 apps best rated by users. */

SELECT track_name, user_rating AS ratting
FROM applestore2
GROUP BY track_name
ORDER BY ratting DESC
LIMIT 10;

/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */
-- as we did in the previous one we choose the user_rating to know wich are best rated by them(users)
-- and grouping by app name to analyze each one and even, again, descendent order in ratting  

/* 9. Now compare the data from questions 5 and 6. What do you see? */

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */

/* 11. Does people care about the price? */
