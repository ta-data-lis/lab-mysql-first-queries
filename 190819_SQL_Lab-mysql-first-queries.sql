SELECT * FROM applestore;

# **1. Which are the different genres?**
SELECT DISTINCT prime_genre FROM applestore;

# **2. Which is the genre with more apps rated?**
SELECT DISTINCT prime_genre, SUM(rating_count_tot) FROM applestore
GROUP BY prime_genre
ORDER BY rating_count_tot DESC;

#**3. Which is the genre with more apps?**
SELECT prime_genre, COUNT(track_name) FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;

#**4. Which is the one with less?**
SELECT prime_genre, COUNT(track_name) FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC;

#**5. Take the 10 apps most rated.**
SELECT track_name, SUM(rating_count_tot) FROM applestore
GROUP BY track_name
ORDER BY SUM(rating_count_tot) DESC
LIMIT 10;

# **6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating, rating_count_tot FROM applestore
GROUP BY track_name
Order BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

# **7. Take a look on the data you retrieved in the question 5. Give some insights.**
# answer: Facebook has the most votings but has not such a good rating compared 
# answer: to Instragram or the other Apps, FB is older than Instagram, 
# answer: FB golden times are over
SELECT track_name, SUM(rating_count_tot), user_rating FROM applestore
GROUP BY track_name
ORDER BY SUM(rating_count_tot) DESC
LIMIT 10;


#**8. Take a look on the data you retrieved in the question 6. Give some insights.**
SELECT prime_genre, track_name, user_rating, rating_count_tot, price FROM applestore
GROUP BY track_name
Order BY user_rating DESC, rating_count_tot DESC
LIMIT 10;
# the best rated and most rated apps exists of 90% Games, for free or less price

#**9. Now compare the data from questions 5 and 6. What do you see?**
# the apps with the most ratings have a much worse user-rating than
# the apps whhich are best rated

#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
# answer: The best rated and most rated apps are games.
SELECT prime_genre, track_name, user_rating, rating_count_tot FROM applestore
GROUP BY track_name
Order BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


# **11. Does people care about the price?**
# addaption: most expensive apps and user-rating
# answer: the rating count of apps not for free are very low, but still high in value, 
# this could mean that not many people download the app, so a lot of people care about the price
SELECT prime_genre ,track_name ,user_rating, rating_count_tot ,price FROM applestore
WHERE price > 0
Order by price DESC, user_rating DESC;

# adaption: apps for free: rating counts and user rating
# answer: way more apps for free have a rate -> more people download the app
# answer: that means for me the people care about the price.
SELECT prime_genre, track_name, user_rating, rating_count_tot, price FROM applestore
Where price = 0
Order by rating_count_tot DESC, user_rating DESC;

