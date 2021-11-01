SELECT *
FROM lab2.applestore2;

/* 1. Which are the different genres? */

SELECT prime_genre,COUNT(prime_genre)
FROM lab2.applestore2
GROUP BY prime_genre;

/* 2. Which is the genre with more apps rated? */

SELECT prime_genre, rating_count_tot
FROM lab2.applestore2
GROUP BY prime_genre
ORDER BY rating_count_tot DESC;

/* 3. Which is the genre with more apps? */

SELECT track_name, prime_genre, COUNT(track_name)
FROM lab2.applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;


/* 4. Which is the one with less? */

SELECT track_name, prime_genre, COUNT(track_name)
FROM lab2.applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC;

/* 5. Take the 10 apps most rated. */

SELECT track_name, rating_count_tot
FROM lab2.applestore2
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users. */

SELECT track_name, user_rating
FROM lab2.applestore2
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */

/* Facenook and Instagram are the most rated which is normal because they are the most used social networks */

/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */

/* These are apps with very little amount of user ratings so it's information is inconclusive  */

/* 9. Now compare the data from questions 5 and 6. What do you see? */

/* they are all different apps which is normal because of the amount of user ratings */

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */
SELECT track_name, user_rating, rating_count_tot
FROM lab2.applestore2
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/* 11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */
/* first i'm gonna query by highest price and number of RATINGS */

SELECT track_name,price, rating_count_tot
FROM lab2.applestore2
ORDER BY price DESC, rating_count_tot DESC;

/* now im gonna query the free apps to check the difference */

SELECT track_name,price, rating_count_tot
FROM lab2.applestore2
ORDER BY price ASC, rating_count_tot DESC;

/* people clearly care about the price, the difference between the number of ratings is huge */

