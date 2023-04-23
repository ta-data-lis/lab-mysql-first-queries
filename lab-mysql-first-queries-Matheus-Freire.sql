SELECT * FROM labs2.applestore_windows;
# question 1
SELECT DISTINCT prime_genre
FROM labs2.applestore_windows
ORDER BY prime_genre ASC;
#question 2
SELECT prime_genre, COUNT(*)
FROM labs2.applestore_windows
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;
#question 3
SELECT prime_genre, COUNT(*)  
FROM labs2.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;
#question 4
SELECT prime_genre, COUNT(*)  
FROM labs2.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) ASC
LIMIT 1;
#question 5
SELECT track_name, rating_count_tot
FROM labs2.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;
#question 6
SELECT track_name, user_rating, rating_count_tot
FROM labs2.applestore_windows
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;
#question 10
SELECT track_name, user_rating, rating_count_tot
FROM labs2.applestore_windows
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3;