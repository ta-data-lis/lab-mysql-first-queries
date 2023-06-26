/*
To import the .csv database

in Navigator, select Schemas
right click > Create Schema (if the location you want to import/store the database doesn't exist)
specify name, then apply > apply > finish
right click on (any) object, select Table Data Import Wizard
select file (filepath) to import > next > create new table > next > next > next > next
*/

/*Check that the import has been correctly executed*/

SELECT *
FROM ironhack.applestore_windows;


/*1. Which are the different genres?*/

SELECT DISTINCT prime_genre
FROM ironhack.applestore_windows
ORDER BY prime_genre ASC;


/*2. Which is the genre with more apps rated?*/

SELECT prime_genre, COUNT(*)
FROM ironhack.applestore_windows
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;


/*3. Which is the genre with more apps?*/

SELECT prime_genre, COUNT(*)  
FROM ironhack.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;


/* 4. Which is the one with less? */

SELECT prime_genre, COUNT(*)
FROM ironhack.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) ASC
LIMIT 1;


/*5. Take the 10 apps most rated.*/

SELECT track_name, rating_count_tot, prime_genre
FROM ironhack.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;


/*6.Take the 10 apps best rated by users.*/

SELECT track_name, user_rating
FROM ironhack.applestore_windows
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;

/*There are >10 (490) best rated apps (user_rating = 5)*/
/*I filtered them further by "most rated" (rating_count_tot) as a second criterion*/

SELECT track_name, user_rating, rating_count_tot, prime_genre
FROM ironhack.applestore_windows
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;


/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/

/*With a query to help*/

SELECT prime_genre, COUNT(*) AS apps_top10most, SUM(rating_count_tot) AS ratings_top10most, 
(SUM(rating_count_tot) / (SELECT SUM(rating_count_tot) FROM (SELECT rating_count_tot, prime_genre 
																FROM ironhack.applestore_windows 
																ORDER BY rating_count_tot DESC
																LIMIT 10
																) AS top10most)) * 100 AS percentage_top10most
FROM (SELECT track_name, rating_count_tot, prime_genre
		FROM ironhack.applestore_windows
		ORDER BY rating_count_tot DESC
		LIMIT 10
        ) AS top10most
GROUP BY prime_genre
ORDER BY apps_top10most DESC;


/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/

/*With a query to help*/

SELECT track_name, user_rating, rating_count_tot, prime_genre,
       (rating_count_tot / (SELECT SUM(rating_count_tot) FROM (
															SELECT rating_count_tot
															FROM ironhack.applestore_windows
															WHERE user_rating = 5
															ORDER BY rating_count_tot DESC
															LIMIT 10) AS top10best)) * 100 AS percentage_top10best
FROM ironhack.applestore_windows
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;


/*9. Now compare the data from questions 5 and 6. What do you see?*/

SELECT track_name, rating_count_tot, user_rating
FROM ironhack.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;


/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/

SELECT track_name, user_rating, rating_count_tot
FROM ironhack.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


/*11. Does people care about the price?*/

/*Defining "care" as the rating and the total reviews people make*/

/*First check: do people review apps when they like/dislike them equally?*/
SELECT user_rating, SUM(rating_count_tot)
FROM ironhack.applestore_windows
WHERE user_rating BETWEEN 1 AND 5
GROUP BY user_rating
ORDER BY user_rating DESC;
/*The majority of reviews (88%) is for apps that are rated between 3.5 and 4.5/
/*Actually 63% of reviews is for apps rated at 4.5/

/*Focussing on highly-rated reviews (4.5, 63% of total) and try to find if price plays a role*/
SELECT track_name, user_rating, rating_count_tot, price
FROM ironhack.applestore_windows
WHERE user_rating = 4.5
ORDER BY rating_count_tot DESC;

SELECT track_name, user_rating, rating_count_tot, price
FROM ironhack.applestore_windows
WHERE user_rating = 4.5 AND price > 0
ORDER BY rating_count_tot DESC;
/*45% (1183 out of 2644) of them are paid*/

/*Focussing on badly-rated reviews (3.5, 12% of total) and try to find if price plays a role*/
SELECT track_name, user_rating, rating_count_tot, price
FROM ironhack.applestore_windows
WHERE user_rating =3.5
ORDER BY rating_count_tot DESC;

SELECT track_name, user_rating, rating_count_tot, price
FROM ironhack.applestore_windows
WHERE user_rating = 3.5 AND price > 0
ORDER BY rating_count_tot DESC;
/*46% (323 out of 697) of them are paid*/

/*What is the average rating of (reviewed) paid and free apps?*/
SELECT track_name, user_rating, rating_count_tot, price
FROM ironhack.applestore_windows
WHERE rating_count_tot > 0 AND price > 0
ORDER BY rating_count_tot DESC;

SELECT AVG(user_rating)
FROM ironhack.applestore_windows
WHERE rating_count_tot > 0 AND price > 0;

SELECT track_name, user_rating, rating_count_tot, price
FROM ironhack.applestore_windows
WHERE rating_count_tot > 0 AND price = 0
ORDER BY rating_count_tot DESC;

SELECT AVG(user_rating)
FROM ironhack.applestore_windows
WHERE rating_count_tot > 0 AND price = 0;
/*The average rating of reviewed paid apps is 4.05, identical to the one of reviewed free apps*/

/*Price could matter (a bit) if we define only rating as "care"*/
/*On a more broad definition of "care", that considers rating and number of reviews, no clear conclusion on the influence of price can be made*/