/* Lab | My first queries */

/* 1.Which are the different genres?*/
SELECT DISTINCT prime_genre
FROM apple_store_db.apple_store;

/* 2.Which is the genre with more apps rated?*/
SELECT prime_genre, COUNT(id) AS Total_apps
FROM apple_store_db.apple_store
WHERE rating_count_tot <> 0
GROUP BY prime_genre
ORDER BY Total_apps DESC
LIMIT 1;

/* 3.Which is the genre with more apps?*/
SELECT prime_genre, COUNT(id) AS Total_apps
FROM apple_store_db.apple_store
GROUP BY prime_genre
ORDER BY Total_apps DESC
LIMIT 1;

/* 4.Which is the one with less?*/
SELECT prime_genre, COUNT(id) AS Total_apps
FROM apple_store_db.apple_store
GROUP BY prime_genre
ORDER BY Total_apps ASC
LIMIT 1;

/* 5.Take the 10 apps most rated.*/
SELECT track_name,rating_count_tot
FROM apple_store_db.apple_store
ORDER BY rating_count_tot DESC
LIMIT 10;

/* 6.Take the 10 apps best rated by users.*/
SELECT track_name,user_rating,rating_count_tot
FROM apple_store_db.apple_store
ORDER BY user_rating DESC
LIMIT 10;

/* 7.Take a look on the data you retrieved in the question 5. Give some insights.*/
/* 8.Take a look on the data you retrieved in the question 6. Give some insights.*/
/* 9.Now compare the data from questions 5 and 6. What do you see?*/

/* The apps most rated are apps with more users and more consequenyly more rates. These apps are associated with social networking or games. 
Nevertheless, more rates doesnt mean that these rates are good rates. None of the more rated apps are in the best rated apps top. 
From the best rated apps only two have more than 1000 rates. When comparing with the most rated apps where all have more than 800000 rates.*/


/* 10.How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name,user_rating,rating_count_tot
FROM apple_store_db.apple_store
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

/* 11.Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
/*People care about the price. Higher prices mean less users. Even hith higher prices the quality of the app (evaluated by the reviews) is not higher than the apps with lower prices */
/*Apps with higher prices dont have better reviews when comparing with apps with lower prices*/
SELECT price,AVG(user_rating)
FROM apple_store_db.apple_store
GROUP BY price
ORDER BY AVG(user_rating) DESC;

/*Apps with lower prices have more reviews meaning that have a higher number of users*/
SELECT price,sum(rating_count_tot)
FROM apple_store_db.apple_store
GROUP BY price
ORDER BY SUM(rating_count_tot) DESC;
