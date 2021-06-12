/* 1. Which are the different genres? */
SELECT DISTINCT prime_genre FROM AppleStore;


/* 2. Which is the genre with more apps rated?*/
SELECT prime_genre, rating_count_tot 
FROM AppleStore
ORDER BY rating_count_tot DESC;


/* 3. Which is the genre with more apps?*/
SELECT prime_genre, COUNT(ver)
FROM AppleStore
GROUP BY prime_genre
ORDER BY COUNT(ver) DESC


/* 4. Which is the one with less?*/
SELECT prime_genre, COUNT(ver)
FROM AppleStore
GROUP BY prime_genre
ORDER BY COUNT(ver) ASC


/*5. Take the 10 apps most rated.*/
SELECT track_name, rating_count_tot 
FROM AppleStore
ORDER BY rating_count_tot DESC LIMIT 10;


/*6. Take the 10 apps best rated by users.*/
SELECT track_name, user_rating 
FROM AppleStore
ORDER BY user_rating DESC LIMIT 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
Facebook is the most rated app followed by Instagram social media apps are the most rated and they are followed by game apps like Clash of Clans and Temple Run. The list is completed by music apps.


/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
The complete Fairytale play theater leads the selection. The users top rate more personnal apps like apps for astronomy to create content like video or music.


/*9. Now compare the data from questions 5 and 6. What do you see?*/
The two querys do not share much, one is more about social medias that seem to interest a much large audience but the second query shows that people prefer apps more centred in their personal preferences.


/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT user_rating, rating_count_tot
FROM AppleStore
LIMIT 3;


/*11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/

