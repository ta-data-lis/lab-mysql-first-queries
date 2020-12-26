/*1. Which are the different genres?*/
SELECT DISTINCT prime_genre
FROM applestore.csvfile;

/*2. Which is the genre with more apps rated?*/
SELECT MAX(rating_count_tot), prime_genre
FROM applestore.csvfile
GROUP BY prime_genre
ORDER BY rating_count_tot DESC;

/*3. Which is the genre with more apps?*/
SELECT COUNT(id), prime_genre
FROM applestore.csvfile
GROUP BY prime_genre
ORDER BY id ASC
;
/*4. Which is the one with less?*/
SELECT COUNT(id), prime_genre
FROM applestore.csvfile
GROUP BY prime_genre
ORDER BY id DESC
;
/*5. Take the 10 apps most rated*/
SELECT *
FROM applestore.csvfile
ORDER BY rating_count_tot DESC
LIMIT 10
;
/*6. Take the 10 apps best rated by users.*/
SELECT  *
FROM applestore.csvfile
WHERE user_rating = 5 /*using directly 5 since there are a lot of apps equal than 4.5*/
LIMIT 10
;

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT  track_name, rating_count_tot, user_rating
FROM applestore.csvfile
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3
;
/*11. Does people care about the price?*/ /**/
/*The comments are marked in letters, to read them, go to Answers.md file*/  /*.)*/
SELECT id,track_name, price, rating_count_tot, user_rating, prime_genre/*a.)*/
FROM applestore.csvfile
WHERE price = 0					/*b.1)*/
ORDER BY rating_count_tot DESC  
LIMIT 5
;
SELECT id,track_name, price, rating_count_tot, user_rating, prime_genre
FROM applestore.csvfile
WHERE price != 0			/*b.2)*/				 
ORDER BY rating_count_tot DESC
LIMIT 5
;
SELECT id,track_name, price, MAX(rating_count_tot), user_rating, prime_genre
FROM applestore.csvfile
WHERE price = 0					/*c.1)*/
GROUP BY prime_genre	
HAVING MAX(rating_count_tot)
;
SELECT id,track_name, price, MAX(rating_count_tot), user_rating, prime_genre
FROM applestore.csvfile
WHERE price != 0 				/*c.2)*/
GROUP BY prime_genre
HAVING MAX(rating_count_tot) 	
;
SELECT *
FROM applestore.csvfile
WHERE prime_genre = 'Catalogs' AND price = 0
