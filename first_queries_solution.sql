SELECT * FROM applestore

#**1. Which are the different genres?**

SELECT DISTINCT(prime_genre) FROM applestore;

#**2. Which is the genre with more apps rated?**

SELECT DISTINCT(prime_genre), SUM(rating_count_tot)
FROM applestore
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC;

#**3. Which is the genre with more apps?**

SELECT DISTINCT(prime_genre), COUNT(track_name)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC
LIMIT 1; 

#**4. Which is the one with less?**

SELECT DISTINCT(prime_genre), COUNT(track_name)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC
LIMIT 1; 

#**5. Take the 10 apps most rated.**

SELECT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

#**6. Take the 10 apps best rated by users.**

SELECT track_name, user_rating
FROM applestore
ORDER BY price DESC
LIMIT 10; 



#**7. Take a look on the data you retrieved in the question 5. Give some insights.**
# These apps are mostly social media apps, media, and mainstream games, which make sense, as these are very wide-spread apps, with a huge user base. 

#**8. Take a look on the data you retrieved in the question 6. Give some insights.**
# Most of the apps are games, which likely offer users benefits in exchange for reviews. 

#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
# By multipling the number of reviews by the respective average evaluation. 

SELECT track_name, user_rating, price, rating_count_tot
FROM applestore
ORDER BY price DESC, rating_count_tot DESC;

SELECT track_name, user_rating, price, rating_count_tot
FROM applestore
WHERE price != 0
ORDER BY user_rating DESC, rating_count_tot DESC;

#the higghest priced apps might have good reviews, but have a very low number of ratings, which suggested a small customer base. 
#if we look at user rating and rating_count_tot we can conclude that the most appreciated and widespread apps the mostly under 5 dollar
#this suggests that people do care about the price, a lot. 


