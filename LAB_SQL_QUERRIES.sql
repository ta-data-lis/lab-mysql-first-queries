SELECT * FROM applestore_windows;

#**1. Which are the different genres?**
SELECT DISTINCT prime_genre
FROM applestore_windows;

#**2. Which is the genre with more apps rated?**  A: GAMES
SELECT prime_genre, SUM(rating_count_tot) AS Total_Rating
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY Total_Rating DESC
LIMIT 5;

#**3. Which is the genre with more apps?**
SELECT prime_genre, COUNT(*) AS app_count
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY app_count DESC
LIMIT 3;

#**4. Which is the one with less?**
SELECT prime_genre, COUNT(*) AS app_count
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY app_count 
LIMIT 3;

#**5. Take the 10 apps most rated.**
SELECT prime_genre, SUM(rating_count_tot) AS Total_Rating
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY Total_Rating DESC
LIMIT 10;

#**6. Take the 10 apps best rated by users.**
SELECT prime_genre, ROUND(AVG(user_rating),1) AS Users_Rating
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY Users_Rating DESC
LIMIT 10;

#**7. Take a look on the data you retrieved in the question 5. Give some insights.**
# R: Games are the apps with more feedback from users by far,
#    so probably the most downloaded app too.

#**8. Take a look on the data you retrieved in the question 6. Give some insights.**
#: Produtivity are the best rated apps but they actualy don't  appear in the 10 most

#**9. Now compare the data from questions 5 and 6. What do you see?**
# the top most rated apps are actually poOrly rated compared with the produtivity app that are way less rated by count   

#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

SELECT prime_genre, ROUND(AVG(user_rating),1) as Rating,SUM(rating_count_tot) AS n_votes
FROM apple.applestore_windows
WHERE prime_genre IN (SELECT prime_genre 
						FROM applestore_windows
                        ORDER BY user_rating DESC
                        )
GROUP BY prime_genre 
ORDER BY Rating DESC
LIMIT 3;

#**11. Does people care about the price?** 
#Do some queries, comment why are you doing them and the results you retrieve. 
#What is your conclusion?

#THIS TABLE GIVES A VIEW OF HOW MUCH, PEOPLE ARE WHILING TO PAY FOR AN APP AND ITS GENRE
#AND SHOW US THAT THEY DONT MIND PAYING HIGH PRICES SPECIALLY FOR EDUCATION, PRODUCTIVITY AND BUSINESS
#EVEN IF THE RATING ITS ONLY NEAR 4

SELECT track_name, user_rating, price, prime_genre
FROM apple.applestore_windows
WHERE user_rating > 3  
ORDER BY price DESC;

# AS WE SEEN BEFORE EDUCATION IS THE GENRE WHERE PEOPLE DONT MIND PAYING THE MOST BUT
# DOSENT HAVE THAT MANY BUYERS
SELECT track_name, rating_count_tot, price
FROM apple.applestore_windows
WHERE prime_genre LIKE 'Education' and price > 0 and rating_count_tot > 0
ORDER BY rating_count_tot DESC;

# GAMES ARE THE GENRE THAT PEOPLE DOWNLOAD THE MOST BUT
# THE PRICES ARE LOWER
SELECT track_name, rating_count_tot, price
FROM apple.applestore_windows
WHERE prime_genre LIKE 'Games' and price > 0 and rating_count_tot > 0
ORDER BY rating_count_tot DESC;

