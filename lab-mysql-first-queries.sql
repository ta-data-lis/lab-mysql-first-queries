SELECT *
FROM labs.applestore2;

/* 1. Which are the different genres? */

SELECT prime_genre,COUNT(prime_genre)
FROM labs.applestore2
GROUP BY prime_genre;

/* 2. Which is the genre with more apps rated? */

SELECT prime_genre, rating_count_tot
FROM labs.applestore2
GROUP BY prime_genre
ORDER BY rating_count_tot DESC;

/* 3. Which is the genre with more apps? */

SELECT track_name, prime_genre, COUNT(track_name)
FROM labs.applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;


/* 4. Which is the one with less? */

SELECT track_name, prime_genre, COUNT(track_name)
FROM labs.applestore2
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC;

/* 5. Take the 10 apps most rated. */

SELECT track_name, rating_count_tot
FROM labs.applestore2
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users. */

SELECT track_name, user_rating
FROM labs.applestore2
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */

/* The TOP 3 APP's are the Facebook, Instagram and Clash of Clans very pouplar nowadays everybody
uses this app's that's why they are so popular. */

/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */

/* There are too many 5.0 ratings to get any information about those app's */

/* 9. Now compare the data from questions 5 and 6. What do you see? */

/* There is no way to compare both the information is inconsistence */

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */

/* 11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */

