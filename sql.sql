USE ironhack;
SELECT * FROM ironhack.applestore LIMIT 10;
/* 1. Which are the different genres? */
SELECT DISTINCT ironhack.applestore.prime_genre FROM ironhack.applestore;
/* 2. Which is the genre with more apps rated? */
SELECT ironhack.applestore.prime_genre, COUNT(ironhack.applestore.rating_count_tot) FROM ironhack.applestore WHERE ironhack.applestore.rating_count_tot > 0 GROUP BY ironhack.applestore.prime_genre ORDER BY COUNT(ironhack.applestore.rating_count_tot) DESC LIMIT 1;
/* 3. Which is the genre with more apps? */
SELECT ironhack.applestore.prime_genre, COUNT(*) FROM ironhack.applestore GROUP BY ironhack.applestore.prime_genre ORDER BY COUNT(*) DESC LIMIT 1;
/* 4. Which is the one with less? */
SELECT ironhack.applestore.prime_genre, COUNT(*) FROM ironhack.applestore GROUP BY ironhack.applestore.prime_genre ORDER BY COUNT(*) ASC LIMIT 1;
/* 5. Take the 10 apps most rated. */
SELECT ironhack.applestore.track_name, ironhack.applestore.rating_count_tot FROM ironhack.applestore ORDER BY ironhack.applestore.rating_count_tot DESC LIMIT 10;
/* 6. Take the 10 apps best rated by users. */
SELECT ironhack.applestore.track_name, ironhack.applestore.user_rating FROM ironhack.applestore ORDER BY ironhack.applestore.user_rating DESC LIMIT 10;
/* 7. Take a look on the data you retrieved in the question 5. Give some insights.
It just returns the top 10 based on number of ratings, no matter the rating.
*/
/* 8. Take a look on the data you retrieved in the question 6. Give some insights.
There are more than 10 apps rated with the top rating 5.0
*/
/* 9. Now compare the data from questions 5 and 6. What do you see?
They have nothing in common.
*/
/* 10. How could you take the top 3 regarding the user ratings but also the number of votes?
Sort first by total ratings and then by the rating itself.
*/
SELECT ironhack.applestore.track_name, ironhack.applestore.rating_count_tot, ironhack.applestore.user_rating FROM ironhack.applestore ORDER BY ironhack.applestore.user_rating DESC, ironhack.applestore.rating_count_tot DESC LIMIT 10;
/* 11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? 
Apps with the most ratings tend to be gratis and the most expensive apps have less ratings (given total rating activity is an indicator for downlaods/usage).
In general the total average rating descrease with increasing price -> so yes, prices do matter I would say.
*/
SELECT ironhack.applestore.track_name, ironhack.applestore.rating_count_tot, ironhack.applestore.price FROM ironhack.applestore ORDER BY ironhack.applestore.rating_count_tot DESC;
SELECT ironhack.applestore.track_name, ironhack.applestore.rating_count_tot, ironhack.applestore.price FROM ironhack.applestore ORDER BY ironhack.applestore.price DESC;
SELECT ironhack.applestore.price, AVG(ironhack.applestore.rating_count_tot) FROM ironhack.applestore GROUP BY ironhack.applestore.price ORDER BY ironhack.applestore.price DESC;