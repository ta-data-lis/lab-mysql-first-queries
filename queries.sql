/* OVERVIEW : */
SELECT * FROM `lab6-query`.applestore2;


SELECT track_name , price, user_rating  
FROM `lab6-query`.applestore2  
GROUP BY track_name  
ORDER BY price;

SELECT `lab6-query`.applestore2.track_name , `lab6-query`.applestore2.rating_count_tot  
FROM `lab6-query`.applestore2  
ORDER BY `lab6-query`.applestore2.rating_count_tot DESC  
LIMIT 10;

SELECT *  FROM (SELECT `lab6-query`.applestore2.track_name , `lab6-query`.applestore2.user_rating, `lab6-query`.applestore2.rating_count_tot  
FROM `lab6-query`.applestore2  
ORDER BY `lab6-query`.applestore2.rating_count_tot DESC) user_rates  
ORDER BY `lab6-query`.applestore2.user_rating DESC  
LIMIT 10;

SELECT `lab6-query`.applestore2.track_name , `lab6-query`.applestore2.user_rating, `lab6-query`.applestore2.rating_count_tot  
FROM `lab6-query`.applestore2  
WHERE `lab6-query`.applestore2.user_rating = 5.0  
ORDER BY `lab6-query`.applestore2.rating_count_tot DESC;

SELECT  price,  AVG(user_rating)  
FROM `lab6-query`.applestore2  
GROUP BY  price 
 ORDER BY price ASC, AVG(user_rating) DESC;



