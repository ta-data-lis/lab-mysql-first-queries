SELECT * FROM app.applestore;

SELECT DISTINCT prime_genre FROM app.applestore;
/* There are 23 different genres in applestore database*/

SELECT rating_count_tot, prime_genre FROM app.applestore
GROUP BY prime_genre
ORDER BY rating_count_tot DESC
LIMIT 1;

/* The genre with the most apps rated is Social Networking*/

SELECT prime_genre, COUNT(prime_genre)
FROM app.applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
LIMIT 1;

/* The genre with the most apps is Games*/

SELECT prime_genre, COUNT(prime_genre)
FROM app.applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
LIMIT 1;

/*The genre with the least apps is Catalogs*/


/* Take the 10 apps most rated.*/

SELECT track_name, rating_count_tot 
FROM app.applestore
GROUP BY track_name
ORDER BY rating_count_tot DESC
LIMIT 10;

/*The ten most rated apps are Facebook, Instagram, Clash of Clans, Temple Run, Pandora, Pinterest, Bible, Candy Crush, Spotify, Angry Birds*/

/*Take the 10 apps best rated by users.*/

SELECT track_name, user_rating, rating_count_tot
FROM app.applestore
GROUP BY rating_count_tot
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;
/* I added rating_count_tot so we would get data that actually makes sense since so many apps have the rating of 5*/


/* 7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/* They are mostly from 2 genres - Social Networks and Games*/
/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/* 9 out of 10 are from Games genre*/
/*9. Now compare the data from questions 5 and 6. What do you see?*/
/* There is no relation between most rated and best rated apps.*/
/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name, user_rating, rating_count_tot
FROM app.applestore
GROUP BY rating_count_tot
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/*11. Do people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/

SELECT price, user_rating, rating_count_tot
FROM app.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 20;

/* If we see that the apps with the highest number of ratings and the user rating of 5 are free or almost free we can say with certainty that people do care about the price. Since we do not have access to the number of downloads we can only use the number of rating to see approx how many people are using the app.*/

