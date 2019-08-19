SELECT COUNT(DISTINCT(`text_reviews_count`)) FROM books WHERE `# num_pages` BETWEEN 200 AND 500;
SELECT COUNT(DISTINCT(`text_reviews_count`)) FROM books WHERE `# num_pages` BETWEEN 1500  AND 2500;

SELECT AVG(DISTINCT(average_rating)) FROM books WHERE `# num_pages` BETWEEN 200 AND 500;

SELECT AVG(DISTINCT(average_rating)) FROM books WHERE `# num_pages` BETWEEN 1500  AND 2500;


#**1. Which are the different genres?**
SELECT DISTINCT(prime_genre) FROM AppleStore;

#**2. Which is the genre with more apps rated?**
#Games is the genre with more apps rated
SELECT DISTINCT(prime_genre), SUM(rating_count_tot) FROM AppleStore GROUP BY prime_genre ORDER BY SUM(rating_count_tot) DESC; 

#**3. Which is the genre with more apps?**
#Games is the genre with more apps
SELECT DISTINCT(prime_genre), COUNT(track_name) FROM AppleStore GROUP BY prime_genre ORDER BY COUNT(track_name) DESC;

#**4. Which is the one with less?**
#Catalogs is the genre with less apps
SELECT DISTINCT(prime_genre), COUNT(track_name) FROM AppleStore GROUP BY prime_genre ORDER BY COUNT(track_name) ASC;

#**5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot FROM AppleStore ORDER BY rating_count_tot DESC LIMIT 10;

#**6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating FROM AppleStore ORDER BY user_rating DESC LIMIT 10;
#Obs: the first 492 rows are actually all 5* rated apps. In my opinion, limiting here by 10 will not actually give the 10 apps best rated.
#I came up with the solution of searching already only on the universe of 5* apps and order them by rating_count_tot:
SELECT track_name, user_rating, rating_count_tot FROM AppleStore WHERE user_rating = 5 ORDER BY rating_count_tot DESC LIMIT 10; #<< final answer

#**7. Take a look on the data you retrieved in the question 5. Give some insights.**
#In question 5 I simply selected apps and respective rating count, and order it by the rating count. Returned the first 10 entries

#**8. Take a look on the data you retrieved in the question 6. Give some insights.**
#In question 6 I started by selecting app, respective user rating and rating count. Because, as I mentioned before, there are 492 apps rated with 5*,
#I pre-selected already the 'universe' of 5* apps, and from there, I choose the 10 apps with more ratings, returning this way, in my opinion,
#the 10 apps best rated by users

#**9. Now compare the data from questions 5 and 6. What do you see?**
SELECT track_name, user_rating, rating_count_tot FROM AppleStore ORDER BY rating_count_tot DESC LIMIT 10;
SELECT track_name, user_rating, rating_count_tot FROM AppleStore WHERE user_rating = 5 ORDER BY rating_count_tot DESC LIMIT 10;
#so in question 5 I am selecting the 10 most rated apps, disregarding their user rating. On question 6, I am selecting the 10 most rated apps but
#from the universe of 5* rated apps, which basically returns the 10 apps best rated by users.

#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name, user_rating, rating_count_tot FROM AppleStore WHERE user_rating = 5 ORDER BY rating_count_tot DESC LIMIT 3;

#**11. Do people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT price FROM AppleStore ORDER BY price DESC; #prices range (essencially) between 0 and 10.
#price:
SELECT AVG(price) FROM AppleStore WHERE user_rating = 5; #1,65
SELECT AVG(price) FROM AppleStore WHERE user_rating = 4; #2,21
SELECT AVG(price) FROM AppleStore WHERE user_rating = 3; #1,28
SELECT AVG(price) FROM AppleStore WHERE user_rating = 2; #1,15
SELECT AVG(price) FROM AppleStore WHERE user_rating = 1; #1,93
#rating:
SELECT AVG(user_rating) FROM AppleStore WHERE price = 0; #3,38
SELECT AVG(user_rating) FROM AppleStore WHERE price BETWEEN 1 AND 5; #3,82
SELECT AVG(user_rating) FROM AppleStore WHERE price BETWEEN 5 AND 10; #3,78
#My conclusion is that people don't really care about the price, as I investigated the average price per rating ([1-5]stars) and doesn't vary much,
#as well as the average rating per ranges of prices, which also doesn't vary much. 
