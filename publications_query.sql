CREATE DATABASE AppleStore;
# 1
SELECT * FROM table_apps;
# 2
SELECT prime_genre, rating_count_tot FROM table_apps ORDER BY rating_count_tot DESC;

#3. Which is the genre with more apps?**
SELECT prime_genre, COUNT(prime_genre) FROM table_apps GROUP BY prime_genre ORDER BY COUNT(prime_genre) DESC;

#4. Which IS the ONE WITH LESS?**
SELECT prime_genre, COUNT(prime_genre) FROM table_apps GROUP BY prime_genre ORDER BY COUNT(prime_genre) ASC;

#5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot FROM table_apps ORDER BY rating_count_tot DESC LIMIT 10;
 
#6. Take the 10 apps best rated BY users.**
SELECT track_name, user_rating FROM table_apps ORDER BY user_rating DESC LIMIT 10;

#9. Now compare the DATA FROM questions 5 AND 6. What DO you see?**
SELECT prime_genre, track_name, rating_count_tot, user_rating FROM table_apps ORDER BY rating_count_tot DESC LIMIT 10; 

#10. How could you take the top 3 regarding the USER ratings but also the number of votes?**
SELECT rating_count_tot, user_rating FROM table_apps ORDER BY rating_count_tot AND user_rating DESC LIMIT 3; 

#11. Do people care about the price?** DO SOME queries, COMMENT why are you doing them AND the results you retrieve. What IS your conclusion?
SELECT price, track_name, rating_count_tot, prime_genre FROM table_apps ORDER BY price ASC LIMIT 10;

SELECT price, track_name, user_rating, prime_genre FROM table_apps ORDER BY user_rating DESC LIMIT 10;

SELECT price, track_name, rating_count_tot, prime_genre FROM table_apps ORDER BY rating_count_tot DESC LIMIT 10;


