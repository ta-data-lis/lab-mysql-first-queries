Use applestore;
SELECT DISTINCT prime_genre FROM applestore;
SELECT prime_genre, rating_count_tot FROM applestore ORDER BY rating_count_tot DESC;
SELECT prime_genre, rating_count_ver  FROM applestore ORDER BY rating_count_ver DESC;
SELECT prime_genre, rating_count_ver  FROM applestore ORDER BY rating_count_ver ASC;
SELECT track_name, rating_count_tot 
FROM applestore ORDER BY rating_count_tot DESC 
LIMIT 10;
SELECT track_name, user_rating 
FROM applestore ORDER BY user_rating DESC 
LIMIT 10;
SELECT track_name, user_rating, rating_count_tot
FROM applestore ORDER BY user_rating DESC 
LIMIT 10;
SELECT track_name, user_rating, rating_count_tot
FROM applestore ORDER BY user_rating AND rating_count_tot  DESC 
LIMIT 3;
SELECT currency FROM applestore WHERE currency != "USD"; # to check if all the currency are USD
SELECT AVG (price)FROM applestore; #average price for apps in the database 1,72 dollars
SELECT track_name, id,rating_count_tot, price FROM applestore WHERE price > "9.99" AND rating_count_tot >1000 ORDER BY price DESC ;