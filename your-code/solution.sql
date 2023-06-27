/*To import the .csv object

in Navigator, select Schemas
right click on (any) existing object, select Create Schema (if the location you want to import/store the object doesn't exist)
specify a Name, select Apply > Apply > Finish
right click on (any) existing object, select Table Data Import Wizard
select Browse to locate the file to import (AppleStore_windows.csv) > Next 
in Create new table, specify the Schema and the table name  > Next > Next > Next (wait) > Next > Finish

Check that the import has been correctly executed*/

SELECT *
FROM applestore.applestore_windows;


/*1. Which are the different genres?*/

SELECT DISTINCT prime_genre
FROM applestore.applestore_windows
ORDER BY prime_genre ASC;


/*2. Which is the genre with more apps rated?*/

SELECT prime_genre, COUNT(*)
FROM applestore.applestore_windows
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;


/*3. Which is the genre with more apps?*/

SELECT prime_genre, COUNT(*)  
FROM applestore.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;


/* 4. Which is the one with less? */

SELECT prime_genre, COUNT(*)
FROM applestore.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) ASC
LIMIT 1;


/*5. Take the 10 apps most rated.*/

SELECT track_name, rating_count_tot, prime_genre
FROM applestore.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;


/*6.Take the 10 apps best rated by users.*/

SELECT track_name, user_rating, prime_genre
FROM applestore.applestore_windows
WHERE user_rating = 5;

/*There are >10 (490) apps best rated by users (user_rating = 5)*/
/*Filtered them further by apps most rated (rating_count_tot) as a second criterion*/

SELECT track_name, user_rating, rating_count_tot, prime_genre
FROM applestore.applestore_windows
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;


/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/

/*With a query that uses the query of question 5. as sub-query*/

SELECT prime_genre, COUNT(*) AS apps_top10most, SUM(rating_count_tot) AS ratings_top10most, 
ROUND(((SUM(rating_count_tot) / (SELECT SUM(rating_count_tot) 
									FROM (
									SELECT rating_count_tot 
									FROM applestore.applestore_windows 
									ORDER BY rating_count_tot DESC
									LIMIT 10
									) AS top10most)) * 100), 1) AS percentage_top10most
FROM (
	SELECT rating_count_tot, prime_genre
	FROM applestore.applestore_windows
	ORDER BY rating_count_tot DESC
	LIMIT 10
	) AS top10most
GROUP BY prime_genre
ORDER BY apps_top10most DESC;


/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/

/*With a query that uses the query of question 6. as sub-query*/

SELECT track_name, user_rating, rating_count_tot, prime_genre,
ROUND(((rating_count_tot / (SELECT SUM(rating_count_tot) 
						FROM (
							SELECT rating_count_tot
							FROM applestore.applestore_windows
							WHERE user_rating = 5
							ORDER BY rating_count_tot DESC
							LIMIT 10
                            ) AS top10best)) * 100), 1) AS percentage_top10best
FROM applestore.applestore_windows
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;


/*9. Now compare the data from questions 5 and 6. What do you see?*/

SELECT track_name, rating_count_tot, user_rating
FROM applestore.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;


/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/

SELECT track_name, user_rating, rating_count_tot
FROM applestore.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


/*11. Does people care about the price?*/

/*Defining "care" as the rating and the total reviews people make*/

/*Do people review apps when they like/dislike them equally?*/
SELECT user_rating, SUM(rating_count_tot)
FROM applestore.applestore_windows
WHERE user_rating BETWEEN 1 AND 5
GROUP BY user_rating
ORDER BY user_rating DESC;
/*The majority of reviews (88%) is for apps that are rated between 3.5 and 4.5/

/*Focussing on high-rated reviews (4.5, 63% of total) and try to find if price plays a role*/
SELECT track_name, user_rating, rating_count_tot, price
FROM applestore.applestore_windows
WHERE user_rating = 4.5
ORDER BY rating_count_tot DESC;

SELECT track_name, user_rating, rating_count_tot, price
FROM applestore.applestore_windows
WHERE user_rating = 4.5 AND price > 0
ORDER BY rating_count_tot DESC;
/*45% (1183 out of 2644) of them are paid*/

/*Focussing on low-rated reviews (3.5, 12% of total) and try to find if price plays a role*/
SELECT track_name, user_rating, rating_count_tot, price
FROM applestore.applestore_windows
WHERE user_rating =3.5
ORDER BY rating_count_tot DESC;

SELECT track_name, user_rating, rating_count_tot, price
FROM applestore.applestore_windows
WHERE user_rating = 3.5 AND price > 0
ORDER BY rating_count_tot DESC;
/*46% (323 out of 697) of them are paid*/

/*What is the average rating of (reviewed) paid and free apps?*/
SELECT track_name, user_rating, rating_count_tot, price
FROM applestore.applestore_windows
WHERE rating_count_tot > 0 AND price > 0
ORDER BY rating_count_tot DESC;

SELECT AVG(user_rating)
FROM applestore.applestore_windows
WHERE rating_count_tot > 0 AND price > 0;

SELECT track_name, user_rating, rating_count_tot, price
FROM applestore.applestore_windows
WHERE rating_count_tot > 0 AND price = 0
ORDER BY rating_count_tot DESC;

SELECT AVG(user_rating)
FROM applestore.applestore_windows
WHERE rating_count_tot > 0 AND price = 0;
/*The average rating of reviewed paid apps is 4.05, identical to the one of reviewed free apps*/