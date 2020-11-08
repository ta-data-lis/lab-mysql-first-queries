
SELECT * FROM AppleStore

-- WHICH ARE THE DIFFERENT GENRES?

SELECT prime_genre FROM  AppleStore 
GROUP BY 1;

--Which is the genre with more apps rated? Choosing column rating_count_tot among all rating count
-- Games

SELECT prime_genre, SUM(rating_count_tot) FROM  AppleStore 
GROUP BY 1
LIMIT 1;

--Which is the genre with more apps?
--Games

SELECT prime_genre AS GENRE , count(track_name) AS APPS FROM  AppleStore 
GROUP BY 1
ORDER BY APPS DESC
LIMIT 3;

--Which is the one with less?
--Catalogs

SELECT prime_genre AS GENRE , count(track_name) AS APPS FROM  AppleStore 
GROUP BY 1
ORDER BY APPS ASC
LIMIT 1;

-- Take the 10 apps most rated.

SELECT track_name AS APPS, SUM(rating_count_tot) AS COUNT_RATES FROM  AppleStore 
GROUP BY 1
ORDER BY COUNT_RATES DESC
LIMIT 10;

--Take the 10 apps best rated by users.

SELECT track_name AS APPS, user_rating AS RATE FROM  AppleStore 
ORDER BY RATE DESC 
LIMIT 10;

--Take a look on the data you retrieved in the question 5. Give some insights.
-- Showing most popular apps know worldwide. Social media and games are at the top.

--Take a look on the data you retrieved in the question 6. Give some insights.
--Best rated apps are very unknown so probably have less number of rates and therefore higher rates.

--Now compare the data from questions 5 and 6. What do you see?

SELECT track_name AS APPS,user_rating AS RATE, SUM(rating_count_tot) AS COUNT_RATES FROM  AppleStore 
GROUP BY 1,2
ORDER BY COUNT_RATES DESC
LIMIT 10;

SELECT track_name AS APPS,user_rating AS RATE, SUM(rating_count_tot) AS COUNT_RATES FROM  AppleStore 
GROUP BY 1,2
ORDER BY RATE DESC
LIMIT 10;

--Effectively, those with better rates have less number of rates. Which gives less credibility of the rate acquired. On the other hand,
-- the ones with more rates have a slightly lower rating which gives more credibility to the app quality.

--How could you take the top 3 regarding the user ratings but also the number of votes?
--I would get best rated ordered by the one that has more rates.

SELECT track_name AS App, rating_count_tot, user_rating
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

--Does people care about the price?


--> In the following query we can check the higher prices. We can see that they have a very low number of rates.On the other hand,
-- rate is quite high, but as we had analyzed before, the fact that an app has less number of rates gives less credibility to the
-- app quality.

SELECT track_name AS APPS,user_rating AS RATE, SUM(rating_count_tot) AS COUNT_RATES, AVG(price) as PRICE FROM  AppleStore 
GROUP BY 1,2
ORDER BY PRICE DESC 
LIMIT 10;

-- Now, I am going to order the query by the number of rates. We can see that the ones that have more number of rates are for free. 

SELECT track_name AS APPS, user_rating AS RATE, SUM(rating_count_tot) AS COUNT_RATES, AVG(price) as PRICE FROM  AppleStore 
GROUP BY 1,2
ORDER BY COUNT_RATES DESC
LIMIT 10;

-- Now, we will order by higher rates. Surprisingly, the ones with higher rates aren't for free. As we said, no credibiity
--for the lower number of rates given.

SELECT track_name AS APPS,user_rating AS RATE, SUM(rating_count_tot) AS COUNT_RATES, AVG(price) as PRICE FROM  AppleStore 
GROUP BY 1,2
ORDER BY RATE DESC 
LIMIT 10;

-->Last, we will order by higher rates with the higher number of rates. In this case most of the app are fore free or cost
--very little. 

SELECT track_name AS App, sum(rating_count_tot) AS number_rates, AVG(user_rating) AS  RATES, AVG(price) as PRICE
FROM applestore
GROUP BY App
ORDER BY RATES DESC, number_rates DESC
LIMIT 10;

-- We can conclude that free or cheaper apps are more popular.
