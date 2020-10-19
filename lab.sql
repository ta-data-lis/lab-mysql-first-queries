/*Q1*/
SELECT DISTINCT prime_genre
FROM ironhack.AppleStore;
/*Q2*/
SELECT prime_genre, SUM(rating_count_tot)
FROM ironhack.AppleStore
GROUP BY prime_genre
LIMIT 1;
/*Q3*/
SELECT prime_genre, count(track_name)
FROM ironhack.AppleStore
GROUP BY prime_genre
LIMIT 1;
/*Q4*/
SELECT prime_genre, count(track_name)
FROM ironhack.AppleStore
GROUP BY prime_genre
ORDER BY count(track_name) ASC
limit 1;
/*Q5*/
SELECT track_name, rating_count_tot,user_rating 
FROM ironhack.AppleStore
ORDER BY rating_count_tot DESC
LIMIT 10;
/*Q6*/
SELECT track_name, user_rating, rating_count_tot 
FROM ironhack.AppleStore
ORDER BY user_rating DESC,rating_count_tot DESC
LIMIT 10;
/*Q7*/
/* The apps most rated have a significant amount of reviews. This suggests that the average rating provided is a meaningful way to evaluate the app, given that a large amount of people gave their own feedback, instead of limited group of evaluations. */
/*Q8*/
/* The information retrieved in 6 is not meaningful because there are plenty apps whose rating is 5. However, most of them have a extremely low level of votes, which means such rating is not useful indicator of the app. This information should also be ordered by the total number of votes */
/*Q9*/
/* After ordering the information in 6 by rating and nr of votes, it seems clear that of the apps best rated those with most votes have a substantital lower level of votes when compared to the apps with most votes overall (Q5). This apparently indicates that apps with more votes have lower ratings, as more opinions are taken into account rather than a more restrict group. None of top 10 apps in terms of votes has the maximum rating.*/
/*Q10*/
SELECT track_name, user_rating, rating_count_tot 
FROM ironhack.AppleStore
ORDER BY user_rating DESC,rating_count_tot DESC
LIMIT 3;
/*Q11*/
/* To understand wether price is an important factor, it is useful to ask if there is a negative correlation between price and the user rating. To do that, we could group apps by rating and compute the average price of each bin*/
SELECT user_rating, avg(price)
FROM ironhack.AppleStore
GROUP BY user_rating
ORDER BY avg(price) DESC;
/*Given the data retrieved, it is not possible to draw any kind of correlation between variable price and rating, as the average price in each class is rather similar and does not follow a clear pattern. Therefore, it is not possible to understand the influence of price. */
