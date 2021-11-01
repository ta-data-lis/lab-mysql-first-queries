SELECT *
FROM apple_store.applestore2;

/* 1. Which are the different genres? */
SELECT prime_genre, COUNT(*)
FROM apple_store.applestore2
GROUP BY prime_genre;

/* 2. Which is the genre with more apps rated?* */
SELECT prime_genre, COUNT(rating_count_tot)
FROM apple_store.applestore2
GROUP BY prime_genre
ORDER BY COUNT(rating_count_tot) DESC;

/* 3. Which is the genre with more apps? 
Answer: Games*/
SELECT prime_genre, COUNT(*)
FROM apple_store.applestore2
GROUP BY prime_genre
ORDER BY COUNT(*) DESC;

/* 4. Which is the one with less? 
Answer: Catalogs*/
SELECT prime_genre, COUNT(*)
FROM apple_store.applestore2
ORDER BY COUNT(*) ASC;

/* 5. Take the 10 apps most rated. */
SELECT track_name, rating_count_tot
FROM apple_store.applestore2
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

/* 6. Take the 10 apps best rated by users. */
SELECT track_name, user_rating
FROM apple_store.applestore2
GROUP BY track_name
ORDER BY user_rating DESC
LIMIT 10;

/* 7. Take a look on the data you retrieved in the question 5. Give some insights.
Even tho the social networking is out of the top 5 genres with more apps rated, 
theres 2 social networking apps in the top 3 most rated apps*/

/* 8. Take a look on the data you retrieved in the question 6. Give some insights.
The top 10 apps best rated by the users shows the same rating for all. We need to look deeper
into the ratings to understand the real value of the result*/

/* 9. Now compare the data from questions 5 and 6. What do you see?
 We can't compare much. The information is not related*/
 
 /* 10. How could you take the top 3 regarding the user ratings but also the number of votes?
 */
SELECT track_name, rating_count_tot, user_rating
FROM apple_store.applestore2
ORDER BY rating_count_tot DESC, User_rating DESC 
LIMIT 3;

/* 11 Does people care about the price? 
Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
A: People tend to care about the price. We can see that the most rated apps are free.
When we take a look at the most expensive apps we can see that they don't have much ratings*/
SELECT track_name, rating_count_tot, price
FROM apple_store.applestore2
ORDER BY rating_count_tot DESC, price DESC
LIMIT 10;

SELECT track_name, rating_count_tot, price
FROM apple_store.applestore2
ORDER BY price DESC, rating_count_tot DESC
LIMIT 10;