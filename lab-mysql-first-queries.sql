SELECT * FROM applestore;

#Q1
SELECT prime_genre 
FROM applestore
GROUP BY prime_genre;
#Q2
SELECT prime_genre, cont_rating
FROM applestore
group by prime_genre
Order BY cont_rating DESC;
# Q3 and Q4
SELECT prime_genre , COUNT(prime_genre) AS total_genre
FROM applestore
GROUP BY prime_genre
Order BY total_genre DESC;
#Q5
SELECT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;
#Q6
SELECT track_name, user_rating
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;
#Q10
SELECT track_name, user_rating, rating_count_tot 
FROM applestore 
GROUP BY track_name
ORDER BY user_rating and rating_count_tot DESC
LIMIT 3;
#Q11
SELECT price, rating_count_tot, user_rating 
FROM applestore 
GROUP BY price
ORDER BY rating_count_tot DESC;
