/*1. Which are the different genres?*/
SELECT prime_genre
FROM applestore
GROUP BY prime_genre;

/*2. Which is the genre with more apps rated?*/
SELECT rating_count_tot, prime_genre
FROM applestore
GROUP BY prime_genre
ORDER BY rating_count_tot desc;

/*3. Which is the genre with more apps?*/
SELECT prime_genre, count(prime_genre) as number_of_apps
FROM applestore
GROUP BY prime_genre
ORDER BY number_of_apps desc
LIMIT 1;

/*4. Which is the one with less?*/
SELECT prime_genre, count(prime_genre) as number_of_apps
FROM applestore
GROUP BY prime_genre
ORDER BY number_of_apps
LIMIT 1;

/*5. Take the 10 apps most rated.*/
SELECT track_name, rating_count_tot, prime_genre
FROM applestore
GROUP BY id /* not really needed but still... */
ORDER BY rating_count_tot desc
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/
SELECT track_name, rating_count_tot, user_rating, prime_genre
FROM applestore
GROUP BY id /* not really needed but still... */
ORDER BY user_rating desc, rating_count_tot desc /* rating_count_tot in order because it gives more credibility */
LIMIT 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/*Social Networking and Game apps were the most rated apps by users*/

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/*Games apps are the better rated apps */

/*9. Now compare the data from questions 5 and 6. What do you see?*/
/* We can see that the most rated apps are not the best reviewed by the useres */

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name, rating_count_tot, user_rating
FROM applestore
GROUP BY id
ORDER BY user_rating desc, rating_count_tot desc
LIMIT 3;
/*11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
SELECT AVG(rating_count_tot), price
FROM applestore
WHERE price > 0
GROUP BY price
ORDER BY price;

SELECT AVG(rating_count_tot)
FROM applestore
WHERE price = 0
GROUP BY price
ORDER BY price;

/* We can see that the Apps that have price 0 normally have more ratings than the Apps that have a price.
Also we can see that the more expensive is the App the least ratings it has. So price matters . */