SELECT * FROM firstqueries.df1; #AppleStore_windows

## 1. Which are the different genres? ##
SELECT DISTINCT prime_genre
FROM firstqueries.df1; 

## 2. Which is the genre with more apps rated? ##
SELECT distinct prime_genre, sum(rating_count_tot) as more_rating
FROM firstqueries.df1
group by prime_genre;

###################### OR MAYBE THIS OPTION? ##########################
## select distinct prime_genre, count(prime_genre)
## from applestore.applestore
## where rating_count_tot != 0
#### group by prime_genre; 
##################################################

## 3. Which is the genre with more apps? GAMES ## 
SELECT distinct prime_genre, count(prime_genre) as more_apps
FROM firstqueries.df1
group by prime_genre
ORDER BY MORE_APPS DESC; 

##4. Which is the one with less? CATALOGS ##
SELECT distinct prime_genre, count(prime_genre) as more_apps
FROM firstqueries.df1
group by prime_genre
ORDER BY MORE_APPS ASC; 

## 5. Take the 10 apps most rated.##
SELECT distinct TRACK_NAME, prime_genre, rating_count_tot
FROM firstqueries.df1
ORDER BY rating_count_tot DESC
LIMIT 10;

## 6. Take the 10 apps best rated by users. ##
SELECT TRACK_NAME, PRIME_GENRE, USER_RATING, USER_RATING_VER, rating_count_tot
FROM firstqueries.DF1
ORDER BY USER_RATING DESC, USER_RATING_VER DESC, rating_count_tot desc
LIMIT 10;

## 7. Take a look on the data you retrieved in the question 5. Give some insights. ##
# The majority of the most rated apps are Games, occupying 4 out of 10 positions.
# We also have 2 Social Networking apps and 2 Music apps, although the Social Networking ones have, in general, higher rating counts.  
# We have 2 outliers, a Reference app and Photo & Video.
#Last but not least, the 3 top rated apps have a big numerical difference when compared to the 7 results bellow. We can assume
#those apps are probably the most used by the users of the AppleStore.

## 8. Take a look on the data you retrieved in the question 6. Give some insights. ##
# The rating count is smaller on this sample.
# Much like the question before, we can see that the 3 best rated apps have a big numerical difference when compared to the rest.
# Games are, once more, the most common genre.
# This time, we have 3 outliers, Photo & Video, Shopping and Finance.

## 9. Now compare the data from questions 5 and 6. What do you see? ##
# We have some differences regarding the number of ratings btetween one table and the other.
# However, we can afirm that Games are the predominant genre in both scenarios.
# We also have Photo & Video as a common outlier in both tables.

##10. How could you take the top 3 regarding the user ratings but also the number of votes?##
SELECT TRACK_NAME, PRIME_GENRE, USER_RATING, USER_RATING_VER, rating_count_tot
FROM firstqueries.DF1
ORDER BY USER_RATING DESC, USER_RATING_VER DESC, rating_count_tot desc
LIMIT 3;

##11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SElECT * FROM firstqueries.df1; #AppleStore_windows

SELECT TRACK_NAME, PRIME_GENRE, rating_count_tot, user_rating
FROM firstqueries.DF1
ORDER BY user_rating desc;

SELECT TRACK_NAME, PRIME_GENRE, price, rating_count_tot, user_rating
FROM firstqueries.DF1
ORDER BY price desc;

#After analyzing the informaton, we can validate the following statements:
# - Users purchase different genres, usually leaving a rate of > or = 4.
# - The apps with a higher price are not as rated as apps with prices in range of 18 to 40USD. 
# - The higher prices are often in Education and Business. 
# - The best rating are often attributed to Music. 