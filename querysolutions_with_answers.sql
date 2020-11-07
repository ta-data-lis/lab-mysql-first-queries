USE myfirstqueries;
SELECT * FROM AppleStore;

/* 1. Which are the different genres? */
SELECT DISTINCT `prime_genre` FROM AppleStore;

/* 2. Which is the genre with more apps rated? */
SELECT `prime_genre`, sum(rating_count_tot) FROM AppleStore GROUP BY `prime_genre`;

/* 3. Which is the genre with more apps? */
SELECT `prime_genre`, count(`id`) FROM AppleStore GROUP BY `prime_genre` ORDER BY count(`id`) DESC LIMIT 1;

/* 4. Which is the one with less? */
SELECT `prime_genre`, count(`id`) FROM AppleStore GROUP BY `prime_genre` ORDER BY count(`id`) ASC LIMIT 1;

/* 5. Take the 10 apps most rated. */
SELECT `id`, rating_count_tot FROM AppleStore GROUP BY `id` ORDER BY rating_count_tot DESC LIMIT 10;

/* 6. Take the 10 apps best rated by users. */
SELECT `id`, user_rating FROM AppleStore GROUP BY `id` ORDER BY user_rating DESC LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights. */
/* 8. Take a look on the data you retrieved in the question 6. Give some insights. */
/* 9. Now compare the data from questions 5 and 6. What do you see? */
/* 10. How could you take the top 3 regarding the user ratings but also the number of votes? */

SELECT `id`, `prime_genre`, rating_count_tot, user_rating FROM AppleStore GROUP BY `id` ORDER BY rating_count_tot DESC LIMIT 10;
SELECT `id`, `prime_genre`, user_rating, rating_count_tot FROM AppleStore WHERE user_rating = 5 GROUP BY `id` ORDER BY rating_count_tot DESC;

/* Insights about 7 to 10: 
 * In the top 10 of most rated apps, no app has a rating of 5. 
 * It seems to suggest that the more ratings the harder it is to keep the "perfect score". */
/* A top 10 by rating only is not very useful since there are many apps with rating 5.
 * In the top 10 rated apps (meaning having rating 5 and then highest rating count), only one app is not "games" */
 
/* [Answering to question 10 directly] Since there are several of rating 5, you could just take those with a where clause and then order by any second criteria desired - see above. */

/* 11. Do people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */

/* Vizualising the answer: */
SELECT `id`, `prime_genre`,user_rating, avg(price) FROM AppleStore GROUP BY user_rating ORDER BY user_rating DESC;
/* It does not look like it. */
/* What about if we distinguish between free and non free apps ?*/
SELECT `id`, `prime_genre`,user_rating, avg(price) FROM AppleStore WHERE price > 0 GROUP BY user_rating ORDER BY user_rating DESC;
/* It still does not look like it. */
SELECT @ax := avg(`price`), @ay := avg(`user_rating`), @div := (stddev_samp(`price`) * stddev_samp(`user_rating`)) FROM AppleStore;
SELECT sum( ( `price` - @ax ) * (`user_rating` - @ay) ) / ((count(`price`) -1) * @div) FROM AppleStore;
/* What is we get a more mathematical solution to it? */
/* It still does not look like it. */
/* What if we look at very expensive apps as well */
SELECT `id`, `prime_genre`, rating_count_tot, user_rating, price FROM AppleStore ORDER BY price DESC LIMIT 1000;
/* Not even that... People don't seem to care about price too much for the ratings. Of course that most expensive have least downloads, but it doesn't affect ratings too much */

