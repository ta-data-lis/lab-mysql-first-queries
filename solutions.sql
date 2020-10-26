SELECT * FROM applestore;
/*1*/
SELECT DISTINCT prime_genre FROM applestore;

/*2*/
SELECT prime_genre,SUM(rating_count_tot) FROM new_schema.applestore
GROUP BY prime_genre
Order BY SUM(rating_count_tot) DESC
LIMIT 1;

/*3*/
SELECT prime_genre,SUM(rating_count_tot) FROM new_schema.applestore
GROUP BY prime_genre
Order BY SUM(rating_count_tot) DESC
LIMIT 1;

/*4*/
SELECT prime_genre,SUM(rating_count_tot) FROM new_schema.applestore
GROUP BY prime_genre
Order BY SUM(rating_count_tot) 
LIMIT 1;

/*5*/
SELECT DISTINCT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/*6*/
SELECT track_name,user_rating FROM new_schema.applestore
ORDER BY user_rating DESC
LIMIT 10;

/*7+8+9*/
/*The most rated app are the most generalistics, the ones they are in almost all the phones.
However, the best rated are the one more specific, created for a topic. Maybe because of it, their audience is more concrete and rate them better*/

/*10*/
SELECT price, rating_count_tot, user_rating FROM new_schema.applestore
GROUP BY user_rating
ORDER BY user_rating DESC, rating_count_tot, price DESC
LIMIT 3;

/*11*/ 
/* I tried to see the relation of each prime genre and the price by rating. According to that 
query there is no  significant evidence that higer priced apps of each genre are the ones with better rating. Not at least 
for all the app genres. In business genre app it could be a positive relation between price and user rating.
That however is not clear for the rest of the genres.*/ 

SELECT Distinct prime_genre, user_rating, rating_count_tot,price,(SELECT avg(rating_count_tot) FROM new_schema.applestore) AS Average_Count, (SELECT avg(price) FROM new_schema.applestore) AS Average_price
FROM new_schema.applestore
WHERE rating_count_tot> (SELECT avg(rating_count_tot) FROM new_schema.applestore)
GROUP BY prime_genre,user_rating
ORDER BY prime_genre, user_rating DESC, price DESC;