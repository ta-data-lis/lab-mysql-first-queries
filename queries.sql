SELECT *
FROM lab1.applestore_windows;

/*1. Which are the different genres?*/

SELECT DISTINCT prime_genre
FROM lab1.applestore_windows
ORDER BY prime_genre ASC;

/*23 genres*/
/*Book, Business, Catalogs, Education, Entertainment, Finance, Food & Drink, Games, Health & Fitness, Lifestyle, Mediucal, Music, Navigation, News, Photo & Video, Productivity, Reference, Shopping, Social Networking, Sports, Travel, Utilities, Weather*/


/*2. Which is the genre with more apps rated?*/

SELECT prime_genre, COUNT(*)
FROM lab1.applestore_windows
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;

/*Games*/
/*with 3357 apps rated*/


/*3. Which is the genre with more apps?*/

SELECT prime_genre, COUNT(*)  
FROM lab1.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;

/*Games*/
/*with 3808 apps in total*/


/*4. Which is the one with less?*/

SELECT prime_genre, COUNT(*)  
FROM lab1.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(*) ASC
LIMIT 1;

/*Catalogs*/
/*with 10 apps in total*/


/*5. Take the 10 apps most rated.*/

SELECT track_name, rating_count_tot
FROM lab1.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

/*Facebook, Instagram, Clash of Clans, Temple Run, Pandora - Music & Radio, Pinterest, Bible, Candy Crush Saga, Spotify Music, Angry Birds*/


/*6.Take the 10 apps best rated by users.*/

SELECT track_name, user_rating, rating_count_tot
FROM lab1.applestore_windows
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 10;

/*There are >10 (490) best rated apps (user_rating value = 5)*/
/*I filtered them by "most rated" (rating_count_tot) as a second criterion*/
/*Head Soccer, Plants vs. Zombies, Sniper 3D Assassin: Shoot to Kill Gun Game, Geometry Dash Lite, Infinity Blade, Geometry Dash, Domino's Pizza USA, CSR Racing 2, Pictoword: Fun 2 Pics Guess What's the Word Trivia, Plants vs. Zombies HD*/

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/

/*The two most rated apps (Facebook, Instagram) belong to the same company (Meta Platforms)*/
/*The three most rated apps (Facebook, Instagram, Clash of Titans) have ~50% of the total reviews*/


/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/

/*There are 490 best rated apps, however the 10 most rated of them are included here*/
/*Head Soccer is the best (and most) rated app, followed by Plants vs. Zombies*/
/*The top 5 of the best & most rated apps are not so close from each other (10-15% of their total ratings)*/


/*9. Now compare the data from questions 5 and 6. What do you see?*/

SELECT track_name, rating_count_tot, user_rating
FROM lab1.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

/*None of the top-10 most rated apps have a "best rated" status (5)*/
/*The most rated app (Facebook) has the lowest user rating (3.5) out of the top-10 most rated apps*/
/*The best rated and most rated app (Head Soccer) only has ~60% of the reviews of the last from the most rated apps (Angry Birds)*/


/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/

SELECT track_name, user_rating, rating_count_tot
FROM lab1.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/*SImilar logic to the one applied in 6.*/
/*Head Soccer, Plants vs. Zombies, Sniper 3D Assassin: Shoot to Kill Gun Game*/


/*11. Does people care about the price?*/
/*Do some queries, comment why are you doing them and the results you retrieve*/
/*What is your conclusion?*/

/*Defining "care" as the rating and the total reviews people make*/

/*First check: do people review apps when they like/dislike them equally?*/
SELECT user_rating, SUM(rating_count_tot)
FROM lab1.applestore_windows
WHERE user_rating BETWEEN 1 AND 5
GROUP BY user_rating
ORDER BY user_rating DESC;
/*The majority of reviews (88%) is for apps that are rated between 3.5 and 4.5*/
/*Actually 63% of reviews is for apps rated at 4.5*/

/*Focussing on highly-rated reviews (4.5, 63% of total) and try to find if price plays a role*/
SELECT track_name, user_rating, rating_count_tot, price
FROM lab1.applestore_windows
WHERE user_rating = 4.5
ORDER BY rating_count_tot DESC;

SELECT track_name, user_rating, rating_count_tot, price
FROM lab1.applestore_windows
WHERE user_rating = 4.5 AND price > 0
ORDER BY rating_count_tot DESC;
/*45% (1183 out of 2644) of them are paid*/

/*Focussing on badly-rated reviews (3.5, 12% of total) and try to find if price plays a role*/
SELECT track_name, user_rating, rating_count_tot, price
FROM lab1.applestore_windows
WHERE user_rating =3.5
ORDER BY rating_count_tot DESC;

SELECT track_name, user_rating, rating_count_tot, price
FROM lab1.applestore_windows
WHERE user_rating = 3.5 AND price > 0
ORDER BY rating_count_tot DESC;
/*46% (323 out of 697) of them are paid*/

/*What is the average rating of (reviewed) paid and free apps?*/
SELECT track_name, user_rating, rating_count_tot, price
FROM lab1.applestore_windows
WHERE rating_count_tot > 0 AND price > 0
ORDER BY rating_count_tot DESC;

SELECT AVG(user_rating)
FROM lab1.applestore_windows
WHERE rating_count_tot > 0 AND price > 0;

SELECT track_name, user_rating, rating_count_tot, price
FROM lab1.applestore_windows
WHERE rating_count_tot > 0 AND price = 0
ORDER BY rating_count_tot DESC;

SELECT AVG(user_rating)
FROM lab1.applestore_windows
WHERE rating_count_tot > 0 AND price = 0;
/*The average rating of reviewed paid apps is 4.05, identical to the one of reviewed free apps*/

/*Price could matter (a bit) if we define only rating as "care"*/
/*On a more broad definition of "care", that considers rating and number of reviews, no clear conclusion on the influence of price can be made*/
