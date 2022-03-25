/*Francisco Barreto - lab-mysql-first-queries*/
use applestore;
/*1. Which are the different genres?*/
SELECT DISTINCT prime_genre
FROM applestore;
/*2. Which is the genre with more apps rated?*/
SELECT prime_genre, count(rating_count_tot) AS Total_count
FROM applestore
group by prime_genre
order by Total_count desc
limit 1;
/*3. Which is the genre with more apps?*/
Select prime_genre, count(id) as Count_id 
FROM applestore
group by prime_genre
limit 1;
/*4. Which is the one with less?*/
Select prime_genre, count(id) as Count_id 
FROM applestore
group by prime_genre
order by Count_id
limit 1;
/*5. Take the 10 apps most rated.*/
SELECT applestore.id, track_name, count(rating_count_tot) AS Total_count_rating
FROM applestore
group by applestore.id
order by Total_count_rating desc
limit 10;
/*6. Take the 10 apps best rated by users.*/
SELECT applestore.id,track_name, user_rating
FROM applestore
group by user_rating
order by user_rating desc
limit 10;
/*7. Take a look on the data you retrieved in the question 5. Give some insights.
ANSWR: On the question 5. The query retrieved the data where the apps had the most number of ratings reviews(more number of reviews) */

/*8. Take a look on the data you retrieved in the question 6. Give some insights.
ANSWR: On the question 6. the query retreived the apps where the apps had an higher user_rating score sorted from the highest to the lowest score*/

/*9. Now compare the data from questions 5 and 6. What do you see?
ANSWR The apps are diferent because the intended purpose is different ,
one app might have lots a biger number of reviews but a low rating , 
hence the difference in the results */

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name, user_rating, count(rating_count_tot) AS Total_count_rating 
FROM applestore
group by user_rating
order by user_rating desc, Total_count_rating DESC;
/*11. Does people care about the price?/* Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
/* Going to query the top 10  the most download apps on and its price ordered desc. */
Select track_name, price ,count(id) as Count_id 
FROM applestore
group by track_name
order by Count_id desc, price desc
limit 10;
/* created a query with the top 10 lowest download and its price */
Select track_name, price ,count(id) as Count_id 
FROM applestore
group by track_name
order by Count_id asc, price desc
limit 10;
/* we can conclude that the price is a factor as the top downloaded has price = 0 and on that top 10 
the max price is 21,99 and its ranked 8 , so the users are very price sensitive*/

