SELECT * FROM Labs.applestore;

/* 1. Which are the different genres? */
SELECT aps.prime_genre
FROM Labs.applestore AS aps
GROUP BY aps.prime_genre;

/* 1. Which are the different genres? */
SELECT DISTINCT(aps.prime_genre)
FROM Labs.applestore AS aps;

/* 2. Which is the genre with more apps rated? */
SELECT aps.prime_genre, SUM(aps.rating_count_tot)
FROM Labs.applestore AS aps
GROUP BY aps.prime_genre
ORDER BY SUM(aps.rating_count_tot) DESC
LIMIT 1;

/* 3. Which is the genre with more apps? */
SELECT aps.prime_genre, COUNT(aps.id)
FROM Labs.applestore AS aps
GROUP BY aps.prime_genre
ORDER BY COUNT(aps.id) DESC
LIMIT 1;

/* 4. Which is the one with less? */
SELECT aps.prime_genre, COUNT(aps.id)
FROM Labs.applestore AS aps
GROUP BY aps.prime_genre
ORDER BY COUNT(aps.id) ASC
LIMIT 1;

/* 5. Take the 10 apps most rated. */
SELECT aps.id, aps.track_name, aps.rating_count_tot /*id is unique*/
FROM Labs.applestore AS aps
ORDER BY aps.rating_count_tot DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users. */
SELECT aps.id, aps.track_name, aps.user_rating
FROM Labs.applestore AS aps
ORDER BY aps.user_rating DESC
LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */
/* The most rated apps are for the most part very well-known and widely-used apps.
*/

/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */
/* All 10 best rated apps in 6 are at 5 stars. There may be equally well rated 
apps that do not show up in 6.*/

/* 9. Now compare the data from questions 5 and 6. What do you see? */
/* None of the 10 most rated apps in 5 are among the 10 best rated apps in 6
However, the query in 6 also doesn't take into account the number of ratings. 
Some of them may have very few ratings, which could skew users' valuation of the
app one way or another. */

/* 10. How could you take the top 3 regarding the user ratings 
but also the number of votes? */
SELECT aps.id, aps.track_name, aps.user_rating, aps.rating_count_tot
FROM Labs.applestore AS aps
ORDER BY aps.user_rating DESC, aps.rating_count_tot DESC
LIMIT 3;

/* 11. Do people care about the price? Do some queries, 
comment why are you doing them and the results you retrieve. 
What is your conclusion? */

SELECT DISTINCT(aps.currency)
FROM Labs.applestore AS aps;
/* All prices are in USD*/

SELECT aps.id, aps.track_name, aps.price, aps.user_rating, aps.rating_count_tot
FROM Labs.applestore AS aps
WHERE aps.price = 0 /*only free apps*/
ORDER BY aps.user_rating DESC, aps.rating_count_tot DESC
LIMIT 20;

SELECT aps.id, aps.track_name, aps.price, aps.user_rating, aps.rating_count_tot
FROM Labs.applestore AS aps
WHERE aps.price != 0 /*only paid apps*/
ORDER BY aps.user_rating DESC, aps.rating_count_tot DESC
LIMIT 20;

/* There are more ratings for the 20 top rated free apps 
than for the 20 top rated paid apps, suggesting that 
free apps are more widely used than paid apps. */

SELECT aps.id, aps.track_name, aps.price, aps.user_rating, aps.rating_count_tot
FROM Labs.applestore AS aps
WHERE aps.price != 0 /*only paid apps*/
ORDER BY aps.user_rating DESC, aps.price DESC
LIMIT 20;

SELECT aps.id, aps.track_name, aps.price, aps.user_rating, aps.rating_count_tot
FROM Labs.applestore AS aps
WHERE aps.price != 0 /*only paid apps*/
ORDER BY aps.user_rating DESC, aps.price ASC
LIMIT 20;

/* The most expensive and top rated apps have few total ratings. Among cheaper
paid apps, you find apps with much higher total ratings (although also some with 
very few total ratings)  */

SELECT aps.id, aps.track_name, aps.price, aps.user_rating, aps.rating_count_tot
FROM Labs.applestore AS aps
WHERE aps.price != 0 /*only paid apps*/
ORDER BY aps.rating_count_tot DESC, aps.user_rating DESC
LIMIT 20;

/* Within the 20 most rated paid apps, the lowest valuation is of 3.5 stars. Only 3 out of 
the 20 top rated paid apps, only 3 cost more than USD 5. If people do care about price
when rating apps, their bias seems to go in the direction of giving high rates to cheaper
apps. */


