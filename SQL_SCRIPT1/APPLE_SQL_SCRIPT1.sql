SELECT *
 FROM  apple.applestore_windows;
 /*--1.Which are the different geners?*/
 SELECT prime_genre
 FROM apple.applestore_windows
GROUP BY prime_genre
HAVING COUNT(prime_genre)>1;
 /*Which is the genre with more apps rated?*/
 SELECT track_name, SUM(rating_count_tot) AS max_rating
 FROM apple.applestore_windows
 group by track_name
 ORDER BY max_rating DESC;
/* Which is the genre with more apps?*/
SELECT track_name,prime_genre AS more_apps
FROM apple.applestore_windows
GROUP BY track_name
ORDER BY more_apps DESC;
/*which is the one with less?*/
SELECT track_name,prime_genre AS more_apps
FROM apple.applestore_windows
GROUP BY track_name
ORDER BY more_apps ASC;
/*Take the 10 apps most rated.*/
SELECT track_name, SUM(rating_count_tot) AS max_rating
 FROM apple.applestore_windows
 group by track_name
 ORDER BY max_rating DESC
 LIMIT 10;
 /*Take the 10 apps best rated by users*/
 SELECT track_name,user_rating AS max_user_rated
 FROM apple.applestore_windows
 GROUP BY track_name
 ORDER BY max_user_rated DESC
 LIMIT 10;
 /* Take a look on the data you retrieved in the question 5. Give some insights.*/
  /*Take a look on the data you retrieved in the question 6. Give some insights.*/
  /*data from questions 5 and 6. What do you see?*/
 /* How could you take the top 3 regarding the user ratings but also the number of votes?**/
 SELECT track_name,user_rating, SUM(rating_count_tot) AS num_of_votes
 FROM apple.applestore_windows
 GROUP BY track_name
 ORDER BY user_rating DESC, num_of_votes DESC
 LIMIT 3;
 
 /*11. Does people care about the price?**/
 
 SELECT track_name,user_rating, SUM(rating_count_tot) AS num_of_votes, price
 FROM apple.applestore_windows
 GROUP BY track_name
 ORDER BY price DESC
 LIMIT 3;


