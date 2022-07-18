ALTER TABLE `labw2applestore`.`applestore_windows` 
RENAME TO  `labw2applestore`.`applestore` ;
SELECT * FROM labw2applestore.applestore;

-- 1. Which are the different genres?
SELECT DISTINCT applestore.prime_genre
FROM labw2applestore.applestore;

-- 2. Which is the genre with more apps rated?
SELECT applestore.prime_genre, sum(applestore.rating_count_tot)
FROM labw2applestore.applestore
GROUP BY applestore.prime_genre
ORDER BY sum(applestore.rating_count_tot) DESC
limit 1;

-- 3. Which is the genre with more apps?
SELECT applestore.prime_genre, count(applestore.track_name)
FROM labw2applestore.applestore
GROUP BY applestore.prime_genre
ORDER BY count(applestore.track_name) DESC
limit 1;

-- 4. Which is the one with less?
SELECT applestore.prime_genre, count(applestore.track_name)
FROM labw2applestore.applestore
GROUP BY applestore.prime_genre
ORDER BY count(applestore.track_name) ASC
limit 1;

-- 5. Take the 10 apps most rated.
SELECT applestore.track_name, applestore.rating_count_tot
FROM labw2applestore.applestore
ORDER BY applestore.rating_count_tot DESC
limit 10;

-- 6. Take the 10 apps best rated by users.
SELECT applestore.track_name, applestore.user_rating
FROM labw2applestore.applestore
ORDER BY applestore.user_rating DESC
limit 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
SELECT applestore.prime_genre, applestore.track_name, applestore.rating_count_tot
FROM labw2applestore.applestore
ORDER BY applestore.rating_count_tot DESC
limit 10;
/* Games, Social media and music apps have the highest total count rating  between the apps
 in addition to the one app reference"Bible" in the applestore database*/
 
-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
SELECT applestore.prime_genre, applestore.track_name, applestore.user_rating
FROM labw2applestore.applestore
ORDER BY applestore.user_rating DESC
limit 10;
/* if i select only the top 10 highest rated app by users without taking into consideration the number of rates 
for each app, i think it is not a good way to build our analysis on it. 
on my opinion we should make rules and condition to filter wisely the data and apply the best 10 with conditions*/

-- 9. Now compare the data from questions 5 and 6. What do you see?
/* As i mentioned in question 8, the way to analyse the highest rated app from users. 
but for the question 6 that is based on the total count of rating is significant.
from my point of view, if an application has a lot of count ratings means that this app is used a lot by clients.
Noting that with more number of voting the raing will be more accurate and seggregated*/

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT applestore.track_name,  applestore.rating_count_tot, applestore.user_rating
FROM labw2applestore.applestore
ORDER BY  applestore.rating_count_tot DESC , applestore.user_rating DESC
limit 3;

-- 11. Does people care about the price?
--     Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
/*the query below present the highly number of rating, user rate and price. 
As we see that the highly number of rating are the free apps or the cheap price apps.
my point of view, the expensive apps are the professional apps used by companies and they are limited and usually not rated a lot */
 
SELECT applestore.track_name,  rating_count_tot, user_rating, price
FROM labw2applestore.applestore
ORDER BY  applestore.rating_count_tot DESC, applestore.price Asc;

/* the query below shows how much different prices in this table*/
SELECT DISTINCT applestore.price 
FROM labw2applestore.applestore;
/* the query below shows the relation between price and total number of ratings.
this is another argument that corroborates my point of view in the first query*/
SELECT applestore.price, sum(applestore.rating_count_tot)
FROM labw2applestore.applestore
GROUP BY applestore.price
ORDER BY sum(applestore.rating_count_tot) DESC;