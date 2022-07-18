SELECT * FROM applestore.applestore;

/*Q1*/
SELECT DISTINCT `prime_genre`
FROM applestore.applestore;

/*Q2,3,4*/
SELECT DISTINCT `prime_genre`, `rating_count_tot`
FROM applestore.applestore
GROUP BY prime_genre
ORDER BY rating_count_tot DESC;

/*Q5*/
SELECT DISTINCT `prime_genre`, `rating_count_ver`
FROM applestore.applestore
ORDER BY rating_count_ver DESC
LIMIT 10;

/*Q6*/
SELECT DISTINCT `prime_genre`, `user_rating`
FROM applestore.applestore
ORDER BY user_rating DESC
LIMIT 10;

