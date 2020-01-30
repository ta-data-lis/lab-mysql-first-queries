USE apple_store_apps;

SELECT DISTINCT prime_genre
     FROM apps; #1
    
SELECT prime_genre, rating_count_tot FROM apps ORDER BY rating_count_tot DESC; #2

SELECT prime_genre, COUNT(*) FROM apps GROUP BY prime_genre LIMIT 10; #3 and 4

SELECT track_name, rating_count_tot FROM apps ORDER BY rating_count_tot DESC LIMIT 10; #5

SELECT track_name, user_rating FROM apps ORDER BY user_rating DESC; #6

SELECT track_name, rating_count_tot, user_rating FROM apps ORDER BY rating_count_tot DESC, user_rating DESC;

SELECT track_name, rating_count_tot, user_rating FROM apps ORDER BY user_rating DESC, rating_count_tot DESC;

#11
SELECT track_name, price, user_rating, rating_count_tot FROM apps ORDER BY user_rating DESC, price DESC LIMIT 20;
SELECT track_name, price, rating_count_tot, prime_genre FROM apps ORDER BY rating_count_tot DESC, price DESC LIMIT 20