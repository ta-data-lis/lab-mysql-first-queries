![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

Games
Productivity
Weather
Shopping
Reference
Finance
Music
Utilities
Travel
Social Networking
Sports
Business
Health & Fitness
Entertainment
Photo & Video
Navigation
Education
Lifestyle
Food & Drink
News
Book
Medical
Catalogs

**2. Which is the genre with more apps rated?**

Social Networking with a total rating count of 2.974.676

**3. Which is the genre with more apps?**

Games with a total of 3808 apps.

**4. Which is the one with less?**

Catalogs with 10 apps.

**5. Take the 10 apps most rated.**

# track_name	        rating_count_tot
Facebook	            2.974.676
Instagram	            2.161.558
Clash of Clans	        2.130.805
Temple Run	            1.724.546
Pandora - Music & Radio	1.126.879
Pinterest	            1.061.624
Bible	                985.920
Candy Crush Saga	    961.794
Spotify Music	        878.563
Angry Birds	            824.451


**6. Take the 10 apps best rated by users.**

# track_name	                                            user_rating
PewDiePie: Legend of the Brofist	                        5
OPUS: The Day We Found Earth	                            5
Fitbod Workout Log: Strength Lifting Bodybuilding	        5
??????MT3-????????????????????? ????????????????????????	5
Halloween Makeover: Spa, Makeup & Dressup Salon	            5
BlockyTime - Track your time no need to Start/Stop	        5
SenseSleep - Train Your Brain To Sleep Better	            5
[the Sequence]	                                            5
Color???????????????	                                    5
Analog London	                                            5


**7. Take a look on the data you retrieved in the question 5. Give some insights.**

Facebook is the most rated app, and Angry Birds the 10th most rated app.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

The maximum rating possible is 5, and there are more than 10 apps that have a user rating of 5. As such, depending on the column we use to order this query, the outcome will be different.

SELECT count(*)
FROM lab1.applestore_windows
WHERE user_rating = 5;

There are 490 apps with the maximum rating.

**9. Now compare the data from questions 5 and 6. What do you see?**

The apps with more ratings are not the apps wiith the highest average rating:

# track_name	            rating_count_tot	user_rating
Facebook	                2974676	            3.5
Instagram	                2161558	            4.5
Clash of Clans	            2130805	            4.5
Temple Run	                1724546	            4.5
Pandora - Music & Radio	    1126879	            4
Pinterest	                1061624	            4.5
Bible	                    985920	            4.5
Candy Crush Saga	        961794	            4.5
Spotify Music	            878563	            4.5
Angry Birds	                824451	            4.5


**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

SELECT track_name, user_rating, rating_count_tot
FROM lab1.applestore_windows
GROUP BY track_name
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

# track_name	                                user_rating	    rating_count_tot
Head Soccer	                                    5	            481564
Plants vs. Zombies	                            5	            426463
Sniper 3D Assassin: Shoot to Kill Gun Game	    5	            386521


**11. Do people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT price, user_rating
FROM lab1.applestore_windows
GROUP BY price
ORDER BY price DESC, user_rating DESC;

If we take into account only the average rating and order it by price, the rating does not appear to be related to the price as it fluctuates along different price ranges


SELECT price, user_rating, rating_count_tot
FROM lab1.applestore_windows
GROUP BY price
ORDER BY user_rating DESC, price DESC;

SELECT rating_count_tot, price, user_rating
FROM lab1.applestore_windows
GROUP BY price
ORDER BY rating_count_tot DESC, price DESC;

We should also check how representive the sample is across diferent price ranges. Using these last two queries, we are able to see that the sample is larger for lower price ranges.


SELECT price, user_rating, rating_count_tot
FROM lab1.applestore_windows
GROUP BY price
ORDER BY price DESC, user_rating DESC;

This last query confirms the information from the previous queries: the number of reviews is higher for cheaper apps. It also shows that the rating of the apps does not seem to be related by the price, as distinct price range can have similar ratings. 
Nonetheless, as price appears to be related to number of reviews, price is probably an indicator of number of users: the more users an app has, the most likely it is that the app is rated by users.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
