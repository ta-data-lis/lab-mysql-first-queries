SELECT * FROM ironhack_personnel.applestore;
SELECT DISTINCT prime_genre #distinct Get Rid of Duplicates
FROM applestore;
SELECT prime_genre, rating_count_tot FROM applestore ORDER BY rating_count_tot DESC; #is used to sort the data returned in descending order.

SELECT MIN(prime_genre) AS SmallestPrime_Genre
FROM applestore;
SELECT max(prime_genre) AS SmallestPrime_Genre
FROM applestore;
SELECT track_name, rating_count_tot FROM applestore ORDER BY rating_count_tot DESC limit 10;
SELECT track_name, user_rating FROM applestore ORDER BY user_rating DESC limit 10;
SELECT track_name, rating_count_tot, user_rating FROM applestore ORDER BY rating_count_tot DESC, user_rating DESC limit 10; #the order that i put order by, defined with one come first.
SELECT track_name, rating_count_tot, user_rating FROM applestore ORDER BY user_rating DESC, rating_count_tot DESC limit 3;
SELECT track_name, price, user_rating, rating_count_tot FROM applestore ORDER BY price DESC, user_rating DESC LIMIT 10;
SELECT  track_name, price, user_rating, rating_count_tot, prime_genre FROM applestore ORDER BY user_rating DESC, price DESC LIMIT 10;
SELECT  track_name, price, user_rating, rating_count_tot, prime_genre FROM applestore ORDER BY price DESC, user_rating DESC LIMIT 10;
