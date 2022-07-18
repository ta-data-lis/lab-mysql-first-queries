SELECT * FROM APPLE.applestore_windows;

-- question 1
 
SELECT DISTINCT APPLE.applestore_windows.prime_genre
FROM APPLE.applestore_windows;

-- question 2

SELECT prime_genre, COUNT(*)
FROM APPLE.applestore_windows
GROUP BY prime_genre;



-- question 3

SELECT APPLE.applestore_windows.prime_genre, count(APPLE.applestore_windows.track_name)
FROM APPLE.applestore_windows
GROUP BY APPLE.applestore_windows.prime_genre
ORDER BY count(APPLE.applestore_windows.track_name) DESC
limit 1;

-- question 4
SELECT APPLE.applestore_windows.prime_genre, count(APPLE.applestore_windows.track_name)
FROM APPLE.applestore_windows
GROUP BY APPLE.applestore_windows.prime_genre
ORDER BY count(APPLE.applestore_windows.track_name) ASC
limit 1;

-- question 5
 SELECT APPLE.applestore_windows.track_name, APPLE.applestore_windows.rating_count_tot
FROM APPLE.applestore_windows
ORDER BY APPLE.applestore_windows.rating_count_tot DESC
limit 10;

-- question 6 
SELECT APPLE.applestore_windows.track_name, APPLE.applestore_windows.user_rating
FROM APPLE.applestore_windows
ORDER BY APPLE.applestore_windows.user_rating DESC
limit 10;

-- question 7
SELECT APPLE.applestore_windows.prime_genre, APPLE.applestore_windows.track_name, APPLE.applestore_windows.rating_count_tot
FROM APPLE.applestore_windows
ORDER BY APPLE.applestore_windows.rating_count_tot DESC
limit 10;
/* Games, Social media and music apps have the highest nr of ratings */

-- question 8
SELECT APPLE.applestore_windows.prime_genre, APPLE.applestore_windows.track_name, APPLE.applestore_windows.user_rating
FROM APPLE.applestore_windows
ORDER BY APPLE.applestore_windows.user_rating DESC
limit 10;
/* analysis is not very conclusive*/

-- question 9 

/* There doesn t seem to be a coincidence between the most used and the hihest rated apps*/

-- question 10
SELECT APPLE.applestore_windows.track_name,  APPLE.applestore_windows.rating_count_tot, APPLE.applestore_windows.user_rating
FROM APPLE.applestore_windows
ORDER BY  APPLE.applestore_windows.rating_count_tot DESC , APPLE.applestore_windows.user_rating DESC
limit 3;

-- question 11
SELECT APPLE.applestore_windows.track_name,  rating_count_tot, user_rating, price
FROM APPLE.applestore_windows
ORDER BY  APPLE.applestore_windows.rating_count_tot DESC, APPLE.applestore_windows.price Asc;
/* data seems to indicate that people are price sensitive because highest number of ratings are on free apps*/

SELECT APPLE.applestore_windows.price, sum(APPLE.applestore_windows.rating_count_tot)
FROM APPLE.applestore_windows
GROUP BY APPLE.applestore_windows.price
ORDER BY APPLE.applestore_windows.price DESC;
/* even on apps that you have to pay for, we see that the cheaper ones have many more ratings than the most expensive ones*/
