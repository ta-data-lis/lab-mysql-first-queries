

/*1. Which are the different genres? ANSWER :
'Games'
'Productivity'
'Weather'
'Shopping'
'Reference'
'Finance'
'Music'
'Utilities'
'Travel'
'Social Networking'
'Sports'
'Business'
'Health & Fitness'
'Entertainment'
'Photo & Video'
'Navigation'
'Education'
'Lifestyle'
'Food & Drink'
'News'
'Book'
'Medical'
'Catalogs'*/

SELECT distinct prime_genre
FROM applestore;

/*2. Which is the genre with more apps rated?* ANSWER :  Games = 52630139 */

SELECT prime_genre, sum(rating_count_tot) AS total_rate 
FROM applestore
GROUP BY prime_genre
ORDER BY total_rate DESC
LIMIT 1;

/*3. Which is the genre with more apps? ANSWER 'Games', '3808'*/
SELECT prime_genre, COUNT(rating_count_tot) AS more_apps
FROM applestore
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

/*4. Which is the one with less? ANSWER: CATALOGS 10 */
SELECT prime_genre, COUNT(prime_genre) AS less_apps
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
LIMIT 1;

/*5. Take the 10 apps most rated.*/
SELECT track_name, rating_count_tot, user_rating
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/* Facebook = 2974676
Instagram = 2161558
Clash of Clans = 2130805
Temple Run = 1724546
Pandora - Music & Radio = 1126879
Pinterest = 1061624
Bible = 985920
Candy Crush Saga = 961794
Spotify Music = 878563
Angry Birds = 824451 */

/*6. Take the 10 apps best rated by users
ANSWER : 
Simple Camera - Fast Minimal Design	5
Fitness - Gym and Home Workout,my Exercise Journal	5
Seattle GameDay Sports Radio – Seahawks and Mariners Edition	5
Lanota	5
ぷちドラシル 〜ゆるドラ外伝〜	5
Slots: DoubleUp Free Slot Games - Slot Machines	5
Steelers Live GameDay Nation Radio - Pittsburgh Football & Sports App Edition	5
Dungeons of Chaos UNITY EDITION	5
诸神战纪IV:战神崛起	5
Boston GameDay Radio for Live New England Sports, News, and Music – Patriots and Celtics Edition	5 */

SELECT track_name, user_rating
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;


/*7. Take a look on the data you retrieved in the question 5. Give some insights.
"Answer: It's a information about which were most apps  rated by the users, without not approuch how many stars they receive, so this a basically analysis!
Popular apps and known to the public, has great space in reviews, because the frequent use of users always requires improvements in the experience which means more reviews, more rates!
*/
/*8. Take a look on the data you retrieved in the question 6. Give some insights.
Give us the information about the apps from the store which received the best ratings by the users, meaning the highest ones, starting to 0 to 5 'stars'
it's important to see that the number of times that each user rated it's not evaluated. 
We cannot make analyzes based on the grade alone! The applications have different genres and as far as I am informed from different countries. However, their interaction is effective enough that in the evaluations received they have a 5-star rating.
*/

/*9. Now compare the data from questions 5 and 6. What do you see?
Answer : We didn't query both important 2 things for 1 simples question: What the most rated app (ammount of times) and whats the rating.
The analysis it's at least poor without this two values together and we just query one of them. If you look at the applications that have been evaluated the most, you have a lower average. Due to the constancy of the user experience that,
 due to experimenting several times the application ends up finding points that in his opinion could be improved
 On the other hand, we see applications without relevance in the number of votes, but which in the few times that they were evaluated did well.
 
 We can also observe that apps with less ratings and possibly a lower number of downloads than the most voted apps have their titles (names) excessively long.
 It can be seen that the apps are effective and therefore have a good producer. But they definitely need to work in marketing, requiring a better analysis to understand if this application creates or meets a need for your type of consumers. Understand the business, among other things!
 
 */

SELECT track_name, rating_count_tot, user_rating
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
WITH T1 AS (SELECT track_name,
				   user_rating,   
				   rating_count_tot
			  FROM applestore 
		  ORDER BY rating_count_tot DESC
			 LIMIT 10)
SELECT track_name AS app,
	   user_rating
  FROM T1
  ORDER BY user_rating DESC
  LIMIT 3;

/*11. Does people care about the price? 
Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/

#A simple price analysis that can be done is!
#Free APPS with content related to games and social networks has the highest number of rates, however it has a higher number of votes which can mean several things.
#In the first 20 queries (top 20) We can see that most apps are free or in the case of Minecraft - Poker Edition an extremely reasonable price of 6.99.
SELECT track_name AS 'APP',
	   SUM(price) AS 'Price',
       SUM(user_rating) AS 'rating',
       SUM(rating_count_tot) AS 'Total of Rates',
       prime_genre AS 'Genre'
  FROM applestore
GROUP BY 1
ORDER BY 4 DESC
LIMIT 20
#In the first 20 consultations We can also observe that the most expensive applications are linked to Education, Business and productivity, 
#being relatively well evaluated in terms of grade (between 3.5 and 4.5) but with a total number of rates much lower than the table above.

SELECT track_name,
	   user_rating, 
	   rating_count_tot, 
	   price, 
	   prime_genre
  FROM applestore
ORDER BY 4 DESC, 
		 2 DESC, 
         3 DESC
  LIMIT 20;
  
#So ! Yes people call the free character of the products they consume from the internet, but I also don't believe that through real interest they stop consuming! However, in my opinion the main issue is that of the genre. Games and social networks have a captive space in entertainment as a whole, 
#which makes successful applications in this field widely used and consequently evaluated.




