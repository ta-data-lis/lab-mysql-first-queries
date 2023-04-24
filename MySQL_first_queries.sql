SELECT * FROM AppleStore.applestore_mac;

/*1. Which are the different genres?*/
SELECT DISTINCT prime_genre
FROM AppleStore.applestore_mac;

/* 2.Which is the genre with more apps rated?*/
SELECT prime_genre, SUM(rating_count_tot)
FROM AppleStore.applestore_mac
GROUP BY prime_genre;


/*3. Which is the genre with more apps?*/
SELECT prime_genre, COUNT(*) AS total_apps
FROM AppleStore.applestore_mac
GROUP BY prime_genre
ORDER BY COUNT(*) DESC;

/*4. Which is the one with less?*/
SELECT prime_genre, COUNT(*) AS total_apps
FROM AppleStore.applestore_mac
GROUP BY prime_genre
ORDER BY COUNT(*) ASC;

/*5. Take the 10 apps most rated.*/
SELECT track_name, prime_genre, rating_count_tot
FROM AppleStore.applestore_mac
ORDER BY rating_count_tot DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/
SELECT track_name, prime_genre, user_rating
FROM AppleStore.applestore_mac
ORDER BY user_rating DESC
LIMIT 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/* Most of the genres fall under similar catgories in that most are for entertainment (Social Networking, 
Photo & Video, Music and Games) with Games being the most popular genre in the top 10. The outlier in 
this data is the Reference genre.*/

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/*The most popular genre amongst users is Games, followed by Education and only one app in Music. 
The top 10 apps best rated by users all attain the highest rating of 5.*/

/*9. Now compare the data from questions 5 and 6. What do you see?*/
/* Games is the most popular genre receiving one of the highest ratings in total as well as being 
ranked the highest by thier users. However, there is no app that falls into both categories - amongst 
the top 10 most rated and top 10 best rated by users. */

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name, prime_genre, user_rating
FROM AppleStore.applestore_mac
LIMIT 3;

/*11. Does people care about the price?*/
SELECT track_name, prime_genre, price, user_rating
FROM AppleStore.applestore_mac
ORDER BY price DESC; 
/*From this data there does not seem to be a clear correlation between price and people's preferences. */
