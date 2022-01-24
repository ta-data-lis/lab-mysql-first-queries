![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

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
Social Networking

**3. Which is the genre with more apps?**
Games

**4. Which is the one with less?**
Catalogs

**5. Take the 10 apps most rated.**
Facebook
Instagram
Clash of Clans
Temple Run
Pandora - Music & Radio
Pinterest
Bible
Candy Crush Saga
Spotify Music
Angry Birds

**6. Take the 10 apps best rated by users.**
Escape the Sweet Shop Series
RETSNOM
Cannonfire Concerto
SMILE Inc.
SHERMOJI - Official Richard Sherman Emoji Keyboard
She Works HIS Way
Escape Game: Signs
MOJI TALK by DJ Khaled
Advent Magnificat Companion 2016
Fitness Sync for Fitbit to Apple Health

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
#From this question it is possible to retrieve that 4 out of the 10 most rated apps are Games, and 2 are social networking (this matches question 2 answers).

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
#From this question it is possible to retrieve that 5 out of the 10 BEST rated apps are Games.

**9. Now compare the data from questions 5 and 6. What do you see?**
I see that games are both the most rated apps by the user as well as are the BEST rated apps.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
track_name	                                user_rating	    rating_count_tot
Head Soccer	                                5	            481564
Plants vs. Zombies	                        5	            426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	            386521


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
#SELECT * FROM Lab_MyFirstQueries.applestore2
#Order by USER_RATING DESC, rating_count_tot DESC
#LIMIT 30;

#SELECT MAX(rating_count_tot) FROM Lab_MyFirstQueries.applestore2; /*2 974 676 */
#By looking at the table as a whole and picking all the 5* rated apps and ordering by the amount of votes (rating_count_tot) we can see all except 2 are free apps and the others are cheap (1.99 or 0.99). So I'd say the user does care about the price

