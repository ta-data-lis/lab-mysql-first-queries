/*1. Which are the different genres?*/
SELECT DISTINCT prime_genre FROM applestore.applestore2;

/*2. Which is the genre with more apps rated?*/
SELECT prime_genre, COUNT(rating_count_tot)
FROM applestore.applestore2
WHERE rating_count_tot > 0
GROUP BY prime_genre;

/*3. Which is the genre with more apps?*/
SELECT prime_genre, COUNT(prime_genre)
FROM applestore.applestore2
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
LIMIT 1;

/*4. Which is the one with less?*/
SELECT prime_genre, COUNT(prime_genre)
FROM applestore.applestore2
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
LIMIT 1;

/*5. Take the 10 apps most rated.*/
SELECT *
FROM applestore.applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/
SELECT *
FROM applestore.applestore2
ORDER BY user_rating DESC
LIMIT 10;
/* 7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/*
This user ratings are the most accurate because the amount of ratings is the greatest
*/

/* 8. Take a look on the data you retrieved in the question 5. Give some insights.*/
/*
some of the apps retrieved have a small count of ratings and therefore the data has less value
*/

/*9. Now compare the data from questions 5 and 6. What do you see?*/

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
/*
We can set a minimum number of ratings and then get the top ratings
Like below
*/
SELECT *
FROM applestore.applestore2
WHERE rating_count_tot > 10000
ORDER BY user_rating DESC
LIMIT 10;

/* 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
SELECT *
FROM applestore.applestore2
WHERE price > 0
ORDER BY rating_count_tot DESC;