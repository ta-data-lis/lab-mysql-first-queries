/*question 1*/
SELECT *
FROM exsql.applestore;
SELECT prime_genre
FROM exsql.applestore;
/*question 2  Which is the genre with more apps rated?*/
SELECT *
FROM exsql.applestore;

SELECT prime_genre, rating_count_tot, user_rating
FROM exsql.applestore ORDER BY rating_count_tot DESC;

SELECT prime_genre, SUM(rating_count_tot) AS sum_rating_count_tot
FROM exsql.applestore
GROUP BY prime_genre ORDER BY sum_rating_count_tot DESC
LIMIT 1;

/*question 3 Which is the genre with more apps?*/
SELECT prime_genre, COUNT(prime_genre) AS more_app
FROM exsql.applestore
GROUP BY prime_genre ORDER BY more_app DESC
LIMIT 1;

/* question 4  Which is the one with less */
SELECT prime_genre, COUNT(prime_genre) AS less_app
FROM exsql.applestore
GROUP BY prime_genre ORDER BY less_app ASC
LIMIT 1;

/* question 5 Take the 10 apps most rated */
SELECT track_name, rating_count_tot
FROM exsql.applestore
GROUP BY track_name ORDER BY  rating_count_tot DESC
LIMIT 10;

/* question 6 Take the 10 apps best rated by users */

SELECT track_name, user_rating, rating_count_tot
FROM exsql.applestore
GROUP BY track_name ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/

SELECT track_name, rating_count_tot, user_rating, price, prime_genre
FROM exsql.applestore
GROUP BY track_name ORDER BY  rating_count_tot DESC, user_rating DESC, price DESC, prime_genre DESC
LIMIT 10;

/* 8. Take a look on the data you retrieved in the question 6. Give some insights.*/
SELECT track_name, user_rating, rating_count_tot, price
FROM exsql.applestore
GROUP BY track_name ORDER BY user_rating DESC, rating_count_tot DESC, price DESC
LIMIT 10;

/*9. Now compare the data from questions 5 and 6. What do you see? */
SELECT track_name, rating_count_tot, user_rating
FROM exsql.applestore
GROUP BY track_name ORDER BY  rating_count_tot DESC, user_rating DESC
LIMIT 10;

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name, rating_count_tot, cont_rating
FROM exsql.applestore
GROUP BY track_name ORDER BY cont_rating DESC, rating_count_tot DESC;

/*11. Does people care about the price?*/
   

SELECT track_name, prime_genre, rating_count_tot, user_rating, price
FROM  exsql.applestore
GROUP BY track_name ORDER BY rating_count_tot ASC, price ASC, user_rating ASC;





