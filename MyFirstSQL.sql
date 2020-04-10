SELECT * FROM rapha.applestore;
SELECT DISTINCT prime_genre
FROM rapha.applestore;
SELECT prime_genre, rating_count_tot
FROM rapha.applestore 
ORDER BY rating_count_tot DESC;
SELECT prime_genre,
COUNT(track_name)  
FROM rapha.applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;
SELECT prime_genre,
COUNT(track_name)  
FROM rapha.applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC;
SELECT track_name, 
COUNT(track_name)  
FROM rapha.applestore
GROUP BY prime_genre
ORDER BY COUNT(rating_count_tot) DESC
LIMIT 10;
SELECT track_name, 
MAX(rating_count_tot)  
FROM rapha.applestore
GROUP BY track_name
ORDER BY MAX(rating_count_tot) DESC
LIMIT 10;
SELECT track_name, 
MAX(user_rating)  
FROM rapha.applestore
GROUP BY user_rating
ORDER BY MAX(user_rating) DESC
LIMIT 10;


#SELECT count (sup_devices.num) ORDER BY max
#SELECT count (sup_devices.num) ORDER BY min
#SELECT count (rating_count_tot) ORDER BY max LIMIT 10;
#SELECT count (user_rating) ORDER BY max LIMIT 10;

