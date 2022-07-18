SELECT * FROM applestore.applestore;

/*Q1*/
SELECT DISTINCT `prime_genre`
FROM applestore.applestore;

/*Q2,3,4*/
SELECT DISTINCT `prime_genre`, `rating_count_tot`
FROM applestore.applestore
GROUP BY prime_genre
ORDER BY rating_count_tot DESC;

/*Q3 ---> this is wrong */
SELECT DISTINCT COUNT(track_name), `prime_genre`
FROM applestore.applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;

/*Q4 ---> this is wrong */
SELECT DISTINCT COUNT(track_name), `prime_genre`
FROM applestore.applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC;


/*Q5*/
SELECT DISTINCT `track_name`, `rating_count_ver`
FROM applestore.applestore
ORDER BY rating_count_ver DESC
LIMIT 10;

/*Q6*/
SELECT DISTINCT `track_name`, `user_rating`
FROM applestore.applestore
ORDER BY user_rating DESC
LIMIT 10;

/*Q7 ---> the games genre has so many apps on this list*/

/*Q8 ---> ??*/

/*Q9*/

