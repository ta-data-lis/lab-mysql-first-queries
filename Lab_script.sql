SELECT * FROM Lab_MyFirstQueries.applestore2;

/* 1. Which are the different genres? */
SELECT DISTINCT prime_genre FROM Lab_MyFirstQueries.applestore2;

/* 2. Which is the genre with more apps rated? */
SELECT prime_genre, MAX(rating_count_tot) FROM Lab_MyFirstQueries.applestore2
GROUP BY prime_genre;

/* 3. Which is the genre with more apps? */
SELECT prime_genre, COUNT(track_name) FROM Lab_MyFirstQueries.applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;

/* 4. Which is the one with less? */
SELECT prime_genre, COUNT(track_name) FROM Lab_MyFirstQueries.applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC;

/* 5. Take the 10 apps most rated. */
SELECT track_name, prime_genre, MAX(rating_count_tot) FROM Lab_MyFirstQueries.applestore2
GROUP BY track_name, prime_genre
ORDER BY MAX(rating_count_tot) DESC LIMIT 10;

/* 6. Take the 10 apps best rated by users. */
SELECT track_name, prime_genre, MAX(user_rating) FROM Lab_MyFirstQueries.applestore2
GROUP BY track_name, prime_genre
ORDER BY MAX(user_rating) DESC LIMIT 10;

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */
SELECT track_name, user_rating AS overall_rating, rating_count_tot AS votes FROM Lab_MyFirstQueries.applestore2
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/* 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */
SELECT * FROM Lab_MyFirstQueries.applestore2
Order by USER_RATING DESC, rating_count_tot DESC
LIMIT 30;
SELECT MAX(rating_count_tot) FROM Lab_MyFirstQueries.applestore2; /*2 974 676 */
