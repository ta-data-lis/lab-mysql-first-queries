USE applestore;

/**1. Which are the different genres?**/

SELECT DISTINCT prime_genre
FROM applestore
ORDER BY prime_genre;

/**2. Which is the genre with more apps rated?**/

SELECT prime_genre , COUNT(rating_count_tot)
FROM applestore
WHERE rating_count_tot > 0
GROUP BY prime_genre;

/**3. Which is the genre with more apps?**/

SELECT prime_genre , COUNT(id) AS nb_of_apps
FROM applestore
GROUP BY prime_genre;

/**4. Which is the one with less?**/

SELECT prime_genre , COUNT(id) AS nb_of_apps
FROM applestore
GROUP BY prime_genre
ORDER BY nb_of_apps ASC
LIMIT 1;

/**5. Take the 10 apps most rated.**/

SELECT id, track_name, rating_count_tot
FROM applestore
GROUP BY id
ORDER BY rating_count_tot DESC
LIMIT 10;

/**6. Take the 10 apps best rated by users.**/

SELECT id , track_name, user_rating, rating_count_tot
FROM applestore
GROUP BY id
ORDER BY user_rating DESC , rating_count_tot DESC
LIMIT 10;

/**7. Take a look on the data you retrieved in the question 5. Give some insights.**/

/* App in the top of the list as around 3,6x more ratings the the last
top 3 apps are >2M ratings
Bottom 4 <1M
3 Apps >1M <2M
With the names a I can  see the two first are socialnetworks,
the following 2 are games but cannot confirm as we dont have the genre in the table */

/**8. Take a look on the data you retrieved in the question 6. Give some insights.**/

/*Top 10 apps all have perfect 5 points rating but also added the column of total ratings count 
to have a more accurate result, using the logic that an app that as more reviews with better ratings
should be in the top of the list.
ratings count will vary from >160k to < 490k*/

/**9. Now compare the data from questions 5 and 6. What do you see?**/

/* The apps with the most ratings are not in the best rated, 
The best rated will have a max count rating of 482k
around half of the app in the bottom of table 5 824k*/

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?**/

SELECT id , track_name, user_rating, rating_count_tot
FROM applestore
GROUP BY id
ORDER BY user_rating DESC , rating_count_tot DESC
LIMIT 3;

/**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. 
What is your conclusion?**/

/* Logic -> most rated = most downloaded
In the top 20 most rated apps only 3 are are payed 
1 - 0.99 USD
1 - 1.99 USD
1 - 6.99 USD
12MNR - # of ratings for paid apps
80M - # of ratings for free apps
Around 13% of total reviews are from paid apps - 87% for free apps
People care about price when getting new apps*/

SELECT *
FROM applestore;

SELECT SUM(rating_count_tot)
FROM applestore
WHERE price > 0;

SELECT SUM(rating_count_tot)
FROM applestore
WHERE price = 0;


