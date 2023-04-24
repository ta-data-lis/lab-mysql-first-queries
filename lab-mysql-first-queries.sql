# Lab | My first queries

###***1. Which are the different genres?**
select  applestore.prime_genre
FROM labs.applestore;

###***2. Which is the genre with more apps rated?**
SELECT prime_genre, SUM(rating_count_tot) AS total_ratings
FROM labs.applestore
GROUP BY prime_genre
ORDER BY total_ratings DESC
LIMIT 1;

###**3. Which is the genre with more apps?**
SELECT prime_genre, COUNT(*) AS num_apps
FROM labs.applestore
GROUP BY prime_genre
ORDER BY num_apps DESC
LIMIT 1;


###**4. Which is the one with less?**
SELECT prime_genre, COUNT(*) as count
FROM labs.applestore
GROUP BY prime_genre
ORDER BY count ASC
LIMIT 1;


###**5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot 
FROM labs.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

###**6. Take the 10 apps best rated by users.**
SELECT track_name, rating_tot, user_rating
FROM labs.applestore
ORDER BY user_rating DESC
LIMIT 10;

##**7. Take a look on the data you retrieved in the question 5. Give some insights.**
## IDK

###**8. Take a look on the data you retrieved in the question 6. Give some insights.**
## IDK

##**9. Now compare the data from questions 5 and 6. What do you see?**
## IDK

##**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name, rating_count_tot, user_rating * user_rating AS score
FROM labs.applestore
ORDER BY score DESC
LIMIT 3;

##**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT price, AVG(user_rating) AS avg_rating
FROM labs.applestore
GROUP BY price;