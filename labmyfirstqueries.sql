USE ironhack;

SELECT * 
FROM applestore
/*question 1*/
SELECT prime_genre FROM applestore
GROUP BY prime_genre

/*question 2*/
SELECT prime_genre, MAX(rating_count_tot) 
FROM applestore

/*question 3*/
SELECT prime_genre, COUNT(track_name) as count_t
FROM applestore
GROUP BY prime_genre
ORDER BY count_t DESC

/*question4*/
SELECT prime_genre, COUNT(track_name) as count_t
FROM applestore
GROUP BY prime_genre
ORDER BY count_t ASC

/*question5*/
SELECT  track_name, rating_count_tot
FROM applestore
GROUP BY track_name
ORDER BY rating_count_tot DESC 
LIMIT 10

/*question6*/
SELECT  track_name, user_rating
FROM applestore
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10

/*question7-8*/
/*if i add the total of rating to question 6, most of them have very few ratings*/

/*question9*//*i add rating_count_tot and also sort by that*/
SELECT  track_name, user_rating, rating_count_tot
FROM applestore
GROUP BY track_name
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10

/*question10*//*i add rating_count_tot and also sort by that*/
SELECT  track_name, user_rating, rating_count_tot
FROM applestore
GROUP BY track_name
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3

/*question11*//
/*i take this question as: is the price 
going to influence the rating*, so are poeple more demanding 
of expensive apps?
answer is unconclusive */
SELECT track_name, price, user_rating, rating_count_tot
FROM applestore
GROUP BY price
ORDER BY price DESC, user_rating DESC,rating_count_tot DESC
LIMIT 50