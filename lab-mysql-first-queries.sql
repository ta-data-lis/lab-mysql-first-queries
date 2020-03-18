SELECT * FROM mysqlFisrtQueries.applestore;

SELECT DISTINCT prime_genre FROM mysqlFisrtQueries.applestore;

SELECT  prime_genre ,SUM(rating_count_tot)
FROM mysqlFisrtQueries.applestore
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1;

SELECT  prime_genre ,COUNT(id)
FROM mysqlFisrtQueries.applestore
GROUP BY prime_genre
ORDER BY COUNT(id) ASC
LIMIT 1;

SELECT  id, track_name, rating_count_tot
FROM mysqlFisrtQueries.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT  *
FROM mysqlFisrtQueries.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT  id, track_name, user_rating
FROM mysqlFisrtQueries.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

SELECT  *
FROM mysqlFisrtQueries.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

SELECT  *
FROM mysqlFisrtQueries.applestore
ORDER BY user_rating DESC, rating_count_tot DESC;

SELECT  *
FROM mysqlFisrtQueries.applestore
ORDER BY price DESC;

SELECT  *
FROM mysqlFisrtQueries.applestore
ORDER BY price ASC;

SELECT COUNT(*), SUM(rating_count_tot), AVG(user_rating) FROM mysqlFisrtQueries.applestore WHERE price=0;
SELECT COUNT(*), SUM(rating_count_tot), AVG(user_rating) FROM mysqlFisrtQueries.applestore WHERE price>0;




