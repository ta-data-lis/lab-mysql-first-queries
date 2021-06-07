use class;

/* 1. Which are the different genres?
2. Which is the genre with more apps rated?
3. Which is the genre with more apps?
4. Which is the one with less?
5. Take the 10 apps most rated.
6. Take the 10 apps best rated by users.
7. Take a look on the data you retrieved in the question 5. Give some insights.
8. Take a look on the data you retrieved in the question 6. Give some insights.
9. Now compare the data from questions 5 and 6. What do you see?
10. How could you take the top 3 regarding the user ratings but also the number of votes?
11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? */


SELECT * FROM applestore2;

/* ANSWER: 1 */

SELECT DISTINCT prime_genre FROM applestore2;

/* ANSWER: 2 */

SELECT prime_genre, SUM(rating_count_tot) AS Rating_Total
FROM applestore2
GROUP BY prime_genre
ORDER BY Rating_Total DESC
LIMIT 1;

/* ANSWER: 3 */

SELECT prime_genre, COUNT(*) AS Total_Apps
FROM applestore2
GROUP BY prime_genre
ORDER BY Total_Apps DESC
LIMIT 1;

/* ANSWER: 4 */

SELECT prime_genre, COUNT(*) AS Total_Apps
FROM applestore2
GROUP BY prime_genre
ORDER BY Total_Apps ASC
LIMIT 1;

/* ANSWER: 5 */

SELECT track_name, rating_count_tot AS Total_rates
FROM applestore2
ORDER BY total_rates DESC
LIMIT 10;

/* ANSWER: 6 */

SELECT track_name, user_rating
FROM applestore2
ORDER BY user_rating DESC
LIMIT 10;

/* OR WITH user_rating_ver */

SELECT track_name, user_rating_ver
FROM applestore2
ORDER BY user_rating_ver DESC
LIMIT 10;

/* ANSWER: 7, 8 & 9 */

/* Usually the games with most ratings are not going to be on the best rating,
thats because when you have a larger sample it varies more 
Facebook, Instagram and Pandora are widely used apps that have a lot of rates,
but they can't compete with apps with fewer ratings like Smart Matches.
*/

/* ANSWER: 10 */

/* I would create some mathematical formula to take in account the number of voters,
taking into account that some genres may have more critique than others,
with some minimum requirements voters for instance: 

weighted rating (WR) = (v ÷ (v+m)) × R + (m ÷ (v+m)) × C , where:

* R = average for the genre (mean) = (Rating)
* v = number of votes for the app = (votes)
* m = minimum votes required to be listed in the Top 250 (mean votes)
* C = the mean vote across the whole report

So first I would find the mean votes across the whole report: */

SELECT SUM(user_rating)/COUNT(*)
FROM applestore2;

/* 
That is 3.526955675976101 
I would then get the mean for each genre
*/

SELECT prime_genre, SUM(user_rating)/COUNT(*)
FROM applestore2
GROUP BY prime_genre;

/* Games	3.6850077679958573
Productivity	4.00561797752809
Weather	3.5972222222222223
Shopping	3.540983606557377
Reference	3.453125
Finance	2.4326923076923075
Music	3.9782608695652173
Utilities	3.278225806451613
Travel	3.376543209876543
Social Networking	2.9850299401197606
Sports	2.982456140350877
Business	3.745614035087719
Health & Fitness	3.7
Entertainment	3.2467289719626167
Photo & Video	3.8008595988538683
Navigation	2.6847826086956523
Education	3.376379690949227
Lifestyle	2.8055555555555554
Food & Drink	3.1825396825396823
News	2.98
Book	2.4776785714285716
Medical	3.369565217391304
Catalogs	2.1 */

/* Then the average number of voters */

SELECT SUM(rating_count_tot)/COUNT(*)
FROM applestore2;


/* 

That is: 12892.9072

I would then use the formula:

weighted rating (WR) = (v ÷ (v+m)) × R + (m ÷ (v+m)) × C */

/* ANSWER: 11 */

SELECT track_name, price, user_rating
FROM applestore2
ORDER BY user_rating DESC;

/* Seems that most of the top rated apps have lower price, but lets check the number of voters */

SELECT track_name, price, rating_count_tot, user_rating
FROM applestore2
WHERE rating_count_tot > 12892.9072
ORDER BY user_rating DESC
LIMIT 10;

/* And that almost confirms our theory, that the priceless apps are better rated */









