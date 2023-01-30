SELECT DISTINCT prime_genre 
FROM Apple.applestore_windows;

SELECT prime_genre, sum(rating_count_tot)
FROM Apple.applestore_windows 
GROUP BY prime_genre 
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1;

SELECT prime_genre, COUNT(id)
FROM Apple.applestore_windows 
GROUP BY prime_genre 
ORDER BY COUNT(id) DESC
LIMIT 1;

SELECT prime_genre, COUNT(id)
FROM Apple.applestore_windows 
GROUP BY prime_genre 
ORDER BY COUNT(id) ASC
LIMIT 1;

SELECT track_name, sum(rating_count_tot)
FROM Apple.applestore_windows 
GROUP BY track_name 
ORDER BY SUM(rating_count_tot) DESC
LIMIT 10;

SELECT track_name, user_rating
FROM Apple.applestore_windows 
ORDER BY user_rating DESC
LIMIT 10;

# 7 - The most evaluated ones have a lot more ratings than the others.

# 8 - They all have 5 star ratings, but probably because they have very few ratings.

# 9 - It would be unlikely for apps to be in both lists, cause the more ratings you get the les likely it is for you to have the maximum rating.

SELECT AVG(user_rating) 
FROM Apple.applestore_windows
WHERE price != 0;

SELECT AVG(user_rating) 
FROM Apple.applestore_windows
WHERE price = 0;

#Paid apps tend to have a better rating than the free ones. 


                                        