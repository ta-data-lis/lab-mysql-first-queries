CREATE DATABASE LABS;

SELECT DISTINCT prime_genre FROM applications; #1. Which are the different genres?

SELECT prime_genre, sum(rating_count_tot) FROM applications GROUP BY prime_genre ORDER BY sum(rating_count_tot) DESC;
#2 . Which is the genre with more apps rated?

SELECT prime_genre, count(prime_genre) FROM applications GROUP BY prime_genre ORDER BY count(prime_genre) DESC; 
#3. Which is the genre with more apps?

SELECT prime_genre, count(prime_genre) FROM applications GROUP BY prime_genre ORDER  BY count(prime_genre);
#4. Which is the one with less? WHY MIN DID NOT WORK? SELECT prime_genre, MIN(count(prime_genre)) FROM applications GROUP BY prime_genre ORDER  BY count(prime_genre)

SELECT * FROM applications ORDER BY rating_count_tot DESC LIMIT 10;
#5. Take the 10 apps most rated.

SELECT * FROM applications ORDER BY user_rating DESC LIMIT 10;
#6. Take the 10 apps best rated by users.

#On the one side, all the apps are free; Regarding prime_genre, it covers all genres; with ephanzis on games
#7. Take a look on the data you retrieved in the question 5. Give some insights.

#It does not provide much inside, because we are comparing ratings that result from a total of 130000 ratings against 9 ratings, 9 ratings do not provide much credibility
SELECT * FROM applications WHERE rating_count_tot > 10000 ORDER BY user_rating DESC LIMIT 10;
#8. Take a look on the data you retrieved in the question 6. Give some insights.

# The most rated apps are free, which might because more people use it. The best rated apps do not match with the most rated. 
#9. Now compare the data from questions 5 and 6. What do you see?

SELECT track_name, rating_count_tot, `user_rating`, price,  prime_genre FROM applications ORDER BY user_rating DESC, rating_count_tot DESC;
#10. How could you take the top 3 regarding the user ratings but also the number of votes?

#11. Does people care about the price?

#compare the number of ratings when apps are free, and when they are paid - it is possible to see that as the price increases, the number of rates decreases, which is an indicator that less people are using the app
SELECT price, SUM(rating_count_tot) FROM applications GROUP BY price ORDER BY SUM(rating_count_tot) DESC;
#total number or ratings for apps that are paid - even if we sum all the rating os the paid apps, they are still less than the free ones: 12685045 (ratings for paid apps) vs 80105208 (ratings for free apps)
SELECT SUM(rating_count_tot) FROM applications WHERE price>0;

#compare the rating when apps are free, and when they are paid, to see if there is a correlation - it does not seem to exist a direct correlation
SELECT price, AVG(user_rating) FROM applications GROUP BY price ORDER BY AVG(user_rating) DESC;
SELECT AVG(user_rating) FROM applications WHERE price>0;
SELECT AVG(user_rating) FROM applications WHERE price=0;

SELECT price, AVG(user_rating), SUM(rating_count_tot) FROM applications GROUP BY price ORDER BY AVG(user_rating) DESC, SUM(rating_count_tot) DESC;
