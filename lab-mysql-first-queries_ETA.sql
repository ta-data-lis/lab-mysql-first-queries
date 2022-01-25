
SELECT *
FROM labSQL1.applestore2;


/* **1. Which are the different genres?** */

/* Book, Businness, Catalogs, Education, Entertainment, Finance, 
Food&Drink, Games, Health & Fitness, Lifestyle, Medical, Music,
Navigation, News, Photo & Video, Productivity, Reference,
Shopping, Social Networking, Sports, Travel, Utilities and Weather. */

SELECT DISTINCT(prime_genre)
FROM labSQL1.applestore2;


/* **2. Which is the genre with more apps rated?** */
/*The genre with more apps rated is Games */

SELECT prime_genre, COUNT(id) AS CountID
FROM labsql1.applestore2
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY CountID DESC
LIMIT 1;


/* **3. Which is the genre with more apps?** */
/*The genre with more apps is Games */

SELECT prime_genre, COUNT(id) AS CountID
FROM labsql1.applestore2
GROUP BY prime_genre
ORDER BY CountID DESC
LIMIT 1;


/* **4. Which is the one with less?** */
/*The genre with less apps is Catalogs */

SELECT prime_genre, COUNT(id) AS CountID
FROM labsql1.applestore2
GROUP BY prime_genre
ORDER BY CountID ASC
LIMIT 1;


/* **5. Take the 10 apps most rated.** */
/* Facebook, Instagram, Temple Run, Pandora, Pinterest
Bible, Spotify, Angry Birds, Fruit Ninja, Solitaire */

SELECT track_name
FROM labSQL1.applestore2
ORDER BY rating_count_tot DESC
LIMIT 10; 



/* **6. Take the 10 apps best rated by users.** */

SELECT track_name
FROM labSQL1.applestore2
ORDER BY user_rating DESC
LIMIT 10; 


/* **7. Take a look on the data you retrieved in the question 5. Give some insights.** */

/* In the top 10 apps most rated we have several genres represented: games, social networking, music and reference.
The genre that is most represented is games (four), then social networking (three), music (two) and reference (one).
Even though games is the category which is best represented, the app that has more total votes is a social network (facebook).*/


/* **8. Take a look on the data you retrieved in the question 6. Give some insights.** */

/*The data retrieved by this query gives us a random top10 of the apps with the higher user rating, but there are more than 10.*/


/* **9. Now compare the data from questions 5 and 6. What do you see?** */

/*The most rated apps are not the same as the first 10 apps with higher user rating.*/

/* **10. How could you take the top 3 regarding the user ratings but also the number of votes?** */

SELECT track_name, user_rating, rating_count_tot
FROM labSQL1.applestore2
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3; 

/* **11. Do people care about the price?** */

SELECT track_name, price, user_rating, rating_count_tot
FROM labSQL1.applestore2
ORDER BY rating_count_tot DESC; 

/*People probably do care about the app's price, 
since the most rated apps (some of them highly rated by the users) are free.
If we look at the most rated apps there's only one app that isn't free in the TOP 15 and in the TOP 10 they're all free.*/


/*Do some queries, comment why are you doing them and the results you retrieve. 
What is your conclusion? */




