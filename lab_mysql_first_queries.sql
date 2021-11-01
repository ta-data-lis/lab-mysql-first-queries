/*Please, import the .csv database called *AppleStore.csv*. 
Use the *data* table to query the data about Apple Store Apps and answer the following questions:*/

/**1. Which are the different genres?**/

SELECT *
FROM lab.applestore;

SELECT DISTINCT prime_genre
FROM lab.applestore;

/**2. Which is the genre with more apps rated?**/

SELECT DISTINCT prime_genre, rating_count_tot
FROM lab.applestore
ORDER BY rating_count_tot DESC;

/**3. Which is the genre with more apps?**/

SELECT prime_genre, COUNT(id)
FROM lab.applestore
GROUP BY prime_genre
ORDER BY COUNT(id) DESC;

/**4. Which is the one with less?**/

SELECT prime_genre, COUNT(id)
FROM lab.applestore
GROUP BY prime_genre
ORDER BY COUNT(id) ASC;

/**5. Take the 10 apps most rated.**/
SELECT DISTINCT prime_genre, rating_count_tot
FROM lab.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;


/**6. Take the 10 apps best rated by users.**/
/** I included the rating_count as a parameter in the user_rating, otherwise it is impossible to 
select the top 10 best **/

SELECT rating_count_tot, user_rating, track_name
FROM lab.applestore
GROUP BY rating_count_tot, user_rating, track_name
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

/**7. Take a look on the data you retrieved in the question 5. Give some insights.**/


