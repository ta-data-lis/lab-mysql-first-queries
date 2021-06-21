

# Lab | My first queries

MD FILE : LUCIE FLEURY


**1. Which are the different genres?**
SELECT DISTINCT prime_genre FROM applestore;


**2. Which is the genre with more apps rated?**
SELECT prime_genre, rating_count_tot FROM applestore ORDER BY rating_count_tot DESC;


**3. Which is the genre with more apps?**
SELECT prime_genre, rating_count_ver  FROM applestore ORDER BY rating_count_ver DESC;


**4. Which is the one with less?**
SELECT prime_genre, rating_count_ver  FROM applestore ORDER BY rating_count_ver ASC;

**5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot 
FROM applestore ORDER BY rating_count_tot DESC 
LIMIT 10;

**6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating 
FROM applestore ORDER BY user_rating DESC 
LIMIT 10;


**7. Take a look on the data you retrieved in the question 5. Give some insights.**
The most rated apps are not the best rated apps.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
The best rated apps where not in the top 10 most rated apps.

**9. Now compare the data from questions 5 and 6. What do you see?**
The best rated apps are amonst the least rated apps :
SELECT track_name, user_rating, rating_count_tot
FROM applestore ORDER BY user_rating DESC 
LIMIT 10;

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name, user_rating, rating_count_tot
FROM applestore ORDER BY user_rating AND rating_count_tot  DESC 
LIMIT 3;

**11. Do people care about the price?**
Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT currency FROM applestore WHERE currency != "USD"; # to check if all the currency are USD
SELECT AVG (price)FROM applestore; #average price for apps in the database 1,72 dollars
SELECT track_name, id,rating_count_tot, price FROM applestore WHERE price > "9.99" AND rating_count_tot >1000 ORDER BY price DESC ;# add Sum () somewhere to return the total of total rating for apps that are above 9.99 USD and have more than 1000 ratings.

People 








## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
