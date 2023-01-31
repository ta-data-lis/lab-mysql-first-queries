
/*1 Which are the different genres? */
select * from apple_store.applestore;
SELECT DISTINCT prime_genre FROM apple_store.applestore;

/*2 Which is the genre with more apps rated?*/
select * from apple_store.applestore;
SELECT prime_genre, COUNT(*) as 'Number of apps' FROM apple_store.applestore WHERE user_rating >= 4 GROUP BY prime_genre ORDER BY COUNT(*) DESC LIMIT 1;
;

/*3 Which is the genre with more apps?*/
SELECT prime_genre, COUNT(*) as 'Number of apps' FROM apple_store.applestore GROUP BY prime_genre ORDER BY COUNT(*) DESC LIMIT 1;

/*4 Which is the one with less?*/
SELECT prime_genre, COUNT(*) as 'Number of apps' FROM apple_store.applestore GROUP BY prime_genre ORDER BY COUNT(*) ASC LIMIT 1;

/*5 Take the 10 apps most rated*/
SELECT user_rating FROM apple_store.applestore WHERE user_rating IS NOT NULL ORDER BY user_rating DESC LIMIT 10;


 /*6 Take the 10 apps best rated by users.*/
 select * from apple_store.applestore;
SELECT user_rating FROM apple_store.applestore WHERE user_rating IS NOT NULL ORDER BY  user_rating DESC LIMIT 10;

/*7Take a look on the data you retrieved in the question 5. Give some insights*/


/* 8th question*/

/* 9th question*/

/* 10th question*/
select track_name, user_rating, rating_count_tot
FROM apple_store.applestore
ORDER BY user_rating DESC, rating_count_tot desc
LIMIT 3;

/* 11th question*/

/* this query is to check if the number of rates is realated with the mean price of the apps*/
select rating_count_tot, avg(price)
from apple_store.applestore
group by rating_count_tot
order by rating_count_tot desc;

/* this query is to check if the value of rate is realated with the mean price of the apps*/
select user_rating, avg(price) 
from apple_store.applestore
group by user_rating
order by user_rating desc; /*, price desc;












