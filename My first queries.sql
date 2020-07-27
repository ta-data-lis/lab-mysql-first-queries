
/* 1. Which are the different genres? */
SELECT aps.prime_genre
FROM Labs.applestore AS aps
GROUP BY aps.prime_genre;

/* 2: Which is the genre with more apps rated */
SELECT
ap.prime_genre,
ap.rating_count_tot
FROM Labs.applestore AS ap
GROUP BY ap.prime_genre
ORDER BY ap.rating_count_tot DESC;

/* 3. Which is the genre with more apps? */
SELECT aps.prime_genre, COUNT(aps.id)
FROM Labs.applestore AS aps
GROUP BY aps.prime_genre
ORDER BY COUNT(aps.id) DESC
LIMIT 1;

/* 4: which is the one with less*/
SELECT aps.prime_genre, COUNT(aps.id)
FROM Labs.applestore AS aps
GROUP BY aps.prime_genre
ORDER BY COUNT(aps.id) ASC
LIMIT 1;


/* 5. Take the 10 apps most rated. */
SELECT aps.id, aps.track_name, aps.rating_count_tot 
FROM Labs.applestore AS aps
ORDER BY aps.rating_count_tot DESC
LIMIT 10;


/* 6: Take the 10 apps most best rated by user */
SELECT ap.track_name , ap.user_rating
FROM labs.applestore AS ap
ORDER BY ap.user_rating DESC
LIMIT 10 ;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/*Only the Bible app doesn't social networks or games. A niche market as popular as Facebook*/ 

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/* The user_rating are App's without popular prominence, some are regional App's.*/

/*9. Now compare the data from questions 5 and 6. What do you see?*/
/* Both lists have their particularity, having high ratings doesn't mean popularity.*/

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT aps.id, aps.track_name, aps.user_rating, aps.rating_count_tot
FROM Labs.applestore AS aps
ORDER BY aps.user_rating DESC, aps.rating_count_tot DESC
LIMIT 3;

/*11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */
/* A. 
App's that have more ratins are free, but that doesn't mean they don't earn more than paid App's. 
All of them sell products inside the App's (lives, clothes, improvements, etc.).*/

SELECT aps.track_name, aps.price, aps.user_rating, aps.rating_count_tot
FROM Labs.applestore AS aps
WHERE aps.price = 0 
ORDER BY aps.user_rating DESC, aps.rating_count_tot DESC
LIMIT 10;
 

