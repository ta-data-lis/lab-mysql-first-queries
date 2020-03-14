-- check out the data
SELECT * FROM newschema.applestore;


-- 1. Which are the different genres?

SELECT DISTINCT prime_genre 
FROM newschema.applestore;



-- 2. Which is the genre with more apps rated?

SELECT DISTINCT prime_genre, rating_count_tot
FROM newschema.applestore
ORDER BY rating_count_tot DESC;
-- the genre with more apps rated is Social Networking



-- 3. Which is the genre with more apps?

SELECT prime_genre, COUNT(id) 
FROM newschema.applestore 
GROUP BY prime_genre 
ORDER BY COUNT(id) desc;
-- the genre with more apps is Games 



-- 4. Which is the one with less?

SELECT prime_genre, COUNT(id) 
FROM newschema.applestore 
GROUP BY prime_genre 
ORDER BY COUNT(id) asc;
-- the genre with less apps is Catalogs 

 
 -- 5. Take the 10 apps most rated.
 
SELECT  track_name, rating_count_tot
FROM newschema.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;


 -- 6. Take the 10 apps best rated by users.
 
SELECT  track_name, user_rating
FROM newschema.applestore
ORDER BY user_rating DESC
LIMIT 10;

-- 7 & 8 . Take a look on the data you retrieved in the question 5 & 6. Give some insights.
-- while in question 5 we simply get the most rated apps, without analysing the actual rating given my the user, on question 6 the exact opposit operation is done




-- 9. Now compare the data from questions 5 and 6. What do you see?

-- there are no apps that are both in the top 10 most rated and best rated
-- while the ones with best rating (question 6) show the maximum of 5. 
-- neither one of the queries in question 5 and 6 helps analysing, with accuracy, the app 'review' among costumers 


SELECT  track_name, user_rating, rating_count_tot
FROM newschema.applestore
ORDER BY user_rating DESC
LIMIT 10;

SELECT  track_name, user_rating, rating_count_tot
FROM newschema.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

-- significantly lower rating numbers on the best rated uses
-- Some of these apps with best rating are do not measure at all the app success:  example -->  'Learn to Speak Spanish Fast With MosaLingua' app only 9 reviews......



-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
-- we know the top 3 apps in terms of rating will have rating 5 so:

SELECT track_name, user_rating, rating_count_tot
FROM newschema.applestore
WHERE user_rating=5
ORDER BY  rating_count_tot DESC
LIMIT 3;




-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

-- checking the price of top rated apps
SELECT  track_name, price, rating_count_tot, prime_genre
FROM newschema.applestore
ORDER BY rating_count_tot DESC
LIMIT 20;
-- seems like people do care about price since the among the 20th most rated apps,only 3 are paid 


SELECT  track_name, price, rating_count_tot, prime_genre
FROM newschema.applestore
ORDER BY price DESC
LIMIT 20;
-- looking at the most expensive apps: the most common genre are Education, Navigation and Music
-- I think this makes sense, since there are categories that have an inelastic demand (perdon my economics) vs 'games' category (they can be looked at almost as essencial goods)

-- looking at the ratings sum for the 20th most expensive apps:
SELECT sum(rating_count_tot)
FROM (SELECT track_name, user_rating, rating_count_tot, price, prime_genre
FROM newschema.applestore
ORDER BY price DESC
LIMIT 20) AS Total;

-- 7,166 sum of reviews

SELECT SUM(rating_count_tot)
FROM (SELECT track_name, user_rating, rating_count_tot, price
FROM newschema.applestore
ORDER BY user_rating DESC
LIMIT 20) AS Total;

-- 12,35,380 sum of reviews

-- as per above the the top 20 best rated apps have far more reviews vs top 20 priced apps. Taking number of reviews are a proxy for app usage,
-- This confirms the previously stated argument that people do care about price! 

