/*1. Which are the different genres?*/
SELECT DISTINCT (prime_genre)
FROM lab1.applestore;

/*2. Which is the genre with more apps rated?*/
SELECT prime_genre, count(*), sum(rating_count_tot)
FROM lab1.applestore 
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC
LIMIT 1;

/*3. Which is the genre with more apps?*/
SELECT prime_genre, count(*)
FROM lab1.applestore
GROUP BY prime_genre
ORDER BY count(*) DESC
LIMIT 1;

/*4. Which is the one with less?*/
SELECT prime_genre, count(*)
FROM lab1.applestore
GROUP BY prime_genre
ORDER BY count(*) ASC
LIMIT 1;

/*5. Take the 10 apps most rated.*/
SELECT track_name, rating_count_tot,count(*)
FROM lab1.applestore
GROUP BY track_name, rating_count_tot
order by rating_count_tot DESC
LIMIT 10;

/*6. Take the 10 apps best rated by users.*/
SELECT track_name, user_rating
FROM lab1.applestore
order by user_rating DESC
LIMIT 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
#See md.file

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
#See md.file

/*9. Now compare the data from questions 5 and 6. What do you see?*/
#See md.file

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name, rating_count_tot, user_rating
FROM lab1.applestore
ORDER BY user_rating DESC, rating_count_tot DESC;

/*11. Does people care about the price?*/
#BEST RATED PRICES
SELECT track_name, rating_count_tot, user_rating, price
FROM lab1.applestore
ORDER BY user_rating DESC, rating_count_tot DESC;

#MOST VOTED APPS AND THEIR PRICES
SELECT track_name, rating_count_tot, user_rating, price
FROM lab1.applestore
ORDER BY rating_count_tot DESC, user_rating DESC;

#HOW THE USER RATING RELATES WITH THE AVERAGE APP PRICE
SELECT user_rating, COUNT(*), AVG(price)
FROM lab1.applestore
GROUP BY user_rating
ORDER BY user_rating DESC;

