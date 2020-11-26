USE SAKILA;

CREATE TABLE `applestore` (

  `MyUnknownColumn` int DEFAULT NULL,

  `id` int DEFAULT NULL,

  `track_name` text,

  `size_bytes` int DEFAULT NULL,

  `currency` text,

  `price` double DEFAULT NULL,

  `rating_count_tot` int DEFAULT NULL,

  `rating_count_ver` int DEFAULT NULL,

  `user_rating` double DEFAULT NULL,

  `user_rating_ver` double DEFAULT NULL,

  `ver` text,

  `cont_rating` text,

  `prime_genre` text,

  `sup_devices.num` int DEFAULT NULL,

  `ipadSc_urls.num` int DEFAULT NULL,

  `lang.num` int DEFAULT NULL,

  `vpp_lic` int DEFAULT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


#1. Which are the different genres? 
SELECT DISTINCT prime_genre
FROM sakila.applestore;

#2. Which is the genre with more apps rated?
SELECT DISTINCT prime_genre,
 rating_count_tot
FROM sakila.applestore
GROUP BY prime_genre
ORDER BY rating_count_tot DESC;

#3. Which is the genre with more apps?
SELECT DISTINCT prime_genre, COUNT(id)
FROM sakila.applestore
GROUP BY prime_genre
ORDER BY id DESC;

#4. Which is the one with less?
SELECT DISTINCT prime_genre, COUNT(id)
FROM sakila.applestore
GROUP BY prime_genre
ORDER BY id ASC;

#5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot 
FROM sakila.applestore
ORDER BY rating_count_tot DESC
LIMIT 10; 

#6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating 
FROM sakila.applestore
ORDER BY user_rating DESC
LIMIT 10; 

#10. How could you take the top 3 regarding the user ratings but also the number of votes?**
select track_name, rating_count_tot, user_rating
FROM sakila.applestore
GROUP BY track_name
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


#11. Do people care about the price?** 
SELECT price, AVG(rating_count_tot), AVG(user_rating)
FROM sakila.applestore
GROUP BY price
ORDER BY rating_count_tot DESC, user_rating DESC;


SELECT track_name, price
FROM sakila.applestore
ORDER BY price DESC