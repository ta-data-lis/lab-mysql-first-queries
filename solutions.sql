USE csvapple;

/*1. Which are the different genres?*/

SELECT DISTINCT prime_genre FROM applestore2; 
/*2. Which is the genre with more apps rated?*/
SELECT prime_genre, count(id)
From applestore2 
where rating_count_tot > 0 
ORDER BY count(id) DESC
limit 1; 
/*3. Which is the genre with more apps?*/
 SELECT prime_genre, count(id)
 FROM applestore2 GROUP BY prime_genre
 ORDER BY count(id)
 DESC LIMIT 1;
/*4. Which is the one with less?*/
 SELECT prime_genre, count(id)
 FROM applestore2
 GROUP BY prime_genre 
 ORDER BY count(id)
 ASC LIMIT 1;
/*5. Take the 10 apps most rated.*/
SELECT track_name 
FROM applestore2
ORDER BY rating_count_tot DESC 
LIMIT 10;
/*6. Take the 10 apps best rated by users.*/
SELECT track_name 
FROM applestore2
ORDER BY user_rating DESC
LIMIT 10;
/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/* the app most rated id facebook, the less rated in this group is angry birds.*/ 

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/*the app best rated is LINE Moments - Capture Your Fun Moments, the less isable black.*/
/*9. Now compare the data from questions 5 and 6. What do you see?*/

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name, user_rating, rating_count_tot 
FROM applestore2
ORDER BY user_rating DESC, rating_count_tot DESC 
LIMIT 3;
/*11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
SELECT price, AVG(rating_count_tot)
FROM applestore2
GROUP BY price 
ORDER BY price ASC 
LIMIT 10;
