
/*Question 1*/
SELECT prime_genre
FROM Labs.AppleStore
GROUP BY prime_genre;


/*Question 2*/
SELECT prime_genre,
sum(rating_count_tot) AS 'Rating count'
FROM Labs.AppleStore
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC
LIMIT 1;

/*Question 3*/
SELECT prime_genre,
count(*) AS 'Apps Number'
FROM Labs.AppleStore
GROUP BY prime_genre
ORDER BY count(*) DESC
LIMIT 1;

/*Question 4*/
SELECT prime_genre,
count(*) AS 'Apps Number'
FROM Labs.AppleStore
GROUP BY prime_genre
ORDER BY count(*) ASC
LIMIT 1;

/*Question 5*/
SELECT id,
track_name,
sum(rating_count_tot) AS 'Rating count'
FROM Labs.AppleStore
GROUP BY id, track_name 
ORDER BY sum(rating_count_tot) DESC
LIMIT 10;

/*Question 6*/
SELECT id,
track_name,
sum(user_rating ) AS 'Rating'
FROM Labs.AppleStore
GROUP BY id, track_name 
ORDER BY sum(user_rating) DESC
LIMIT 10;


/*Question 7
 * There is an app called Bible? Wow
 * Facebook is the app with more ratings
 * */

/*Question 8
 * There are many more app with maximum rate so I guess this list limited to 10 is not very usefull
 * */

/*Question 9
 * I see different apps. Different information.
 * */

/*Question 10*/
SELECT id,
track_name,
sum(user_rating ) AS 'Rating',
sum(rating_count_tot) AS 'Rating count'
FROM Labs.AppleStore
GROUP BY id, track_name 
ORDER BY sum(user_rating) DESC,sum(rating_count_tot) DESC
LIMIT 3;

/*Question 11*/
/*First 10 top rated apps are free so on the first glance this market is really sensible to price. To notice that their ratings are actually good.*/
SELECT id,
track_name,
sum(price) AS 'Price',
sum(rating_count_tot) AS 'Rating count',
sum(user_rating) AS 'Rating'
FROM Labs.AppleStore
GROUP BY id, track_name 
ORDER BY sum(rating_count_tot) DESC
LIMIT 10;

/*If we group by price we confirm that more than half of the apps are free and have most of the rating count. Additionally they have an 3.38 rating average.
 *To conclude, not only people care about price, they are on average actually happy with their free apps.*/
SELECT price, count(*) AS 'Number of apps', sum(rating_count_tot), ROUND(AVG(user_rating),2)
FROM Labs.AppleStore
GROUP BY price
ORDER BY price;






