**1. Which are the different genres?**
SELECT 
	DISTINCT prime_genre
FROM
	sakila.applestore;
**2. Which is the genre with more apps rated?**
SELECT 
	prime_genre,
    SUM(rating_count_tot)
FROM
	sakila.applestore
GROUP BY 
	prime_genre
LIMIT 
	1;
**3. Which is the genre with more apps?**
SELECT
	prime_genre,
    track_name,
    COUNT(id)
FROM 
	sakila.applestore
GROUP BY
	prime_genre
ORDER BY
	COUNT(id) DESC
LIMIT
	1;
**4. Which is the one with less?**
SELECT
	prime_genre,
    track_name,
    COUNT(id)
FROM 
	sakila.applestore
GROUP BY
	prime_genre
ORDER BY
	COUNT(id) ASC
LIMIT
	1;
**5. Take the 10 apps most rated.**
SELECT
	prime_genre,
    track_name,
	id,
    user_rating,
    rating_count_tot
FROM 
	sakila.applestore
GROUP BY
	id
ORDER BY
	rating_count_tot DESC
LIMIT
	10;
**6. Take the 10 apps best rated by users.**
SELECT
	prime_genre,
    track_name,
	id,
    user_rating,
    rating_count_tot
FROM 
	sakila.applestore
GROUP BY
	id
ORDER BY
	user_rating DESC
LIMIT
	10;
**7. Take a look on the data you retrieved in the question 5. Give some insights.**
Using the data retrieved from question 5, I can conclude that the users usually rate games and apps that
are related with social media above all others, which should mean that those apps tend to have the most users
and downloads in the appstore. Also, this top 10 consists of some of the most famous apps in the world.
**8. Take a look on the data you retrieved in the question 6. Give some insights.**
Using the data retrieved from question 6, I can conclude that usually the apps that have a 5-star rating are 
apps that are not mainstream and that are not used by a lot of people.
**9. Now compare the data from questions 5 and 6. What do you see?**
Comparing the data that I got from questions 5 and 6, I see that the most mainstream apps get the most number
of ratings, but they don't necessarily have the highest ratings because they have millions of people with
different opinions and experiences rating them. The highest ratings usually come from the most unknown apps,
because they have the biggest probability of having those ratings due to the lack of users.
**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT
	prime_genre,
    track_name,
	id,
    user_rating,
    rating_count_tot
FROM 
	sakila.applestore
GROUP BY
	id
ORDER BY
	user_rating DESC,
    rating_count_tot DESC
LIMIT
	3;
**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT
	price,
    currency,
    track_name,
    rating_count_tot,
	AVG(user_rating)
FROM 
	sakila.applestore
GROUP BY
	price
ORDER BY
	price DESC;

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
