/**1. Which are the different genres?**/
SELECT DISTINCT prime_genre FROM lab1_applestore.applestore_windows ORDER BY prime_genre;

/**2. Which is the genre with more apps rated?**/
SELECT prime_genre, SUM(rating_count_tot) AS rating_count_sum
FROM lab1_applestore.applestore_windows 
GROUP BY prime_genre
ORDER BY rating_count_sum DESC LIMIT 1;

/**3. Which is the genre with more apps?**/
SELECT prime_genre, COUNT(id) AS id_sum
FROM lab1_applestore.applestore_windows 
GROUP BY prime_genre
ORDER BY id_sum DESC LIMIT 1;

/**4. Which is the one with less?**/
SELECT prime_genre, COUNT(id) AS id_sum
FROM lab1_applestore.applestore_windows 
GROUP BY prime_genre
ORDER BY id_sum LIMIT 1;

/**5. Take the 10 apps most rated.**/
SELECT id, track_name, rating_count_tot
FROM lab1_applestore.applestore_windows
ORDER BY rating_count_tot DESC LIMIT 10;

/**6. Take the 10 apps best rated by users.**/
SELECT id, track_name, user_rating
FROM lab1_applestore.applestore_windows
ORDER BY user_rating DESC LIMIT 10;

#--checking how many apps have the top rating:
SELECT count(*) FROM lab1_applestore.applestore_windows WHERE user_rating = 5; #--490

/**7. Take a look on the data you retrieved in the question 5. Give some insights.**/
#no sql

/**8. Take a look on the data you retrieved in the question 6. Give some insights.**/
#no sql

/**9. Now compare the data from questions 5 and 6. What do you see?**/
#no sql needed
#extending query 5 to show that none of them would show in query 6:
SELECT id, track_name, rating_count_tot, user_rating
FROM lab1_applestore.applestore_windows
ORDER BY rating_count_tot DESC LIMIT 10;

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?**/
SELECT id, track_name, user_rating, rating_count_tot
FROM lab1_applestore.applestore_windows
ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 3;

/**11. Do people care about the price?**/
#Test 1 price vs user_rating, check the extremes by sorting
SELECT id, track_name, user_rating, price
FROM lab1_applestore.applestore_windows
#ORDER BY user_rating DESC, price DESC LIMIT 10;
#ORDER BY user_rating DESC, price ASC LIMIT 10;
#ORDER BY user_rating ASC, price DESC LIMIT 10;
ORDER BY user_rating ASC, price ASC LIMIT 10;

#Test 2 calculating a pearsons_r to see if there is a linear correlation:
SELECT ((SUM(user_rating * price) - (SUM(user_rating) * SUM(price)) / COUNT(*)))
		/ (SQRT(SUM(user_rating * user_rating) - (SUM(user_rating) * SUM(user_rating)) / COUNT(*))
		* SQRT(SUM(price * price) - (SUM(price) * SUM(price)) / COUNT(*))
		) AS pearsons_r
 FROM lab1_applestore.applestore_windows;
 #--result = 0.049200854570057316