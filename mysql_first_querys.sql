# **1. Which are the different genres?**
SELECT distinct prime_genre FROM applestore_windows;

#**2. Which is the genre with more apps rated?**

SELECT prime_genre, SUM(rating_count_tot) as total_ratings
FROM applestore_windows
GROUP BY prime_genre ;

#**3. Which is the genre with more apps?**
SELECT prime_genre, COUNT(*) as num_apps
FROM labs.applestore_windows
GROUP BY prime_genre
ORDER BY num_apps DESC
LIMIT 1;

#**4. Which is the one with less?**

SELECT prime_genre, COUNT(*) as num_apps
FROM labs.applestore_windows
GROUP BY prime_genre
ORDER BY num_apps ASC
LIMIT 1;


# 5. Take the 10 apps most rated.**

SELECT prime_genre, rating_count_tot
FROM applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, rating_count_tot
FROM applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;


#**6. Take the 10 apps best rated by users.**

SELECT track_name, user_rating
FROM applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

#**7. Take a look on the data you retrieved in the question 5. Give some insights.**

/* social Networking, photo & video and games are the most used and rated app */

#**8. Take a look on the data you retrieved in the question 6. Give some insights.**
 
 # all the genre have the same rating 
 
 #9. Now compare the data from questions 5 and 6. What do you see?**
 
 #**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

 SELECT  track_name, rating_count_tot, cont_rating
FROM applestore_windows
ORDER BY rating_count_tot DESC, cont_rating
 DESC
LIMIT 3;
 
 