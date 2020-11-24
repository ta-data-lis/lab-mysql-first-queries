 

#### 1. Which are the different genres?


SELECT DISTINCT prime_genre FROM AppleStore
;


#### 2. Which is the genre with more apps rated?


SELECT DISTINCT prime_genre, SUM(rating_count_tot) Total_Ratings FROM AppleStore
GROUP BY prime_genre
ORDER BY Total_Ratings DESC
LIMIT 1;



### 3. Which is the genre with more apps?

SELECT prime_genre, count(track_name) No.of.Apps FROM AppleStore
GROUP BY prime_genre
ORDER BY No.of.Apps DESC
;



#### 4. Which is the one with less?

SELECT prime_genre, count(track_name) No.of.Apps FROM AppleStore
GROUP BY prime_genre
ORDER BY No.of.Apps ASC
;



#### 5. Take the 10 apps most rated.

SELECT track_name, SUM(rating_count_tot) Total_Ratings FROM AppleStore

GROUP BY track_name
ORDER BY Total_Ratings DESC
LIMIT 10;



#### 6. Take the 10 apps best rated by users.

SELECT track_name, user_rating, rating_count_tot
FROM AppleStore 
ORDER BY user_rating DESC 
LIMIT 10;



#### 10. How could you take the top 3 regarding the user ratings but also the number of votes?


SELECT track_name, user_rating, rating_count_tot
FROM AppleStore 
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


#### 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT track_name, price, AVG (user_rating),  SUM(rating_count_tot)
FROM AppleStore 
GROUP BY track_name, price 
ORDER BY 2 DESC
;


SELECT track_name, price, AVG (user_rating),  SUM(rating_count_tot)
FROM AppleStore 
GROUP BY track_name, price 
ORDER BY 2 ASC
;




