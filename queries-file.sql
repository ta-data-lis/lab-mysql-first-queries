SELECT * 
FROM apps.applestore;

/*Q1*/
SELECT prime_genre
FROM apps.applestore
GROUP BY prime_genre;
/*There are 23 unique genres, you can list them with the above query*/

/*Q2*/
SELECT prime_genre,rating_count_tot
FROM apps.applestore
GROUP BY prime_genre
ORDER BY rating_count_tot DESC
LIMIT 1;
/*The genre with the most ratings is the Social Networking genre that accounts for 2974676 evaluations*/

/*Q3*/
SELECT prime_genre, COUNT(*) AS Records
FROM apps.applestore
GROUP BY prime_genre
ORDER BY Records DESC
LIMIT 1;
/*The genre with more apps is the Games genre, accounting for 3808 apps*/

/*Q4*/
SELECT prime_genre, COUNT(*) AS Records
FROM apps.applestore
GROUP BY prime_genre
ORDER BY Records ASC
LIMIT 1;
/*The genre with less apps is the Catalogs genre, accounting for 10 apps*/

/*Q5*/
SELECT track_name, rating_count_tot
FROM apps.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;
/*Above you will find a query that lists the 10 apps most rated in quantity*/

/*Q6*/
SELECT track_name, user_rating, rating_count_tot
FROM apps.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;
/*Above there is a query that show's us the top rated apps taking into consideration the total rating count 
(since there are lots of 5 stars apps it would get more logical if we just print the top 10 with the most evaluations*/

/*Q7*/
/*The insights we can get with Q5 query is that we get a list of the 10 most rated apps in quantity not quality*/

/*Q8*/
/*The insights we get by using the Q6 query is that we get a list with the top 10 best rated apps in terms of quality, 
we also take into consideration the amount of reviews for the first 10 items since its more logical */

/*Q9*/
/*The question 5 answers the 10 apps most rated in terms of quantity, while Q6 answers for the same questions but in terms of quality*/

/*Q10*/
SELECT track_name, user_rating, rating_count_tot
FROM apps.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/*Q11*/
/*Does people care about price??*/
SELECT price, AVG(user_rating), SUM(rating_count_tot)
FROM apps.applestore
GROUP BY price
ORDER BY price DESC;
/*Yes, people care very much about price, we can see that the free apps are much more used by users worldwide and the avg rating of free apps is 3,37.*/


