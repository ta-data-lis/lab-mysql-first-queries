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
Facebook	2974676


**3. Which is the genre with more apps?**
Sun - weather forecast powered by Dark Sky	Weather
**4. Which is the one with less?**
	Book
**5. Take the 10 apps most rated.**
Facebook	2974676
Instagram	2161558
Clash of Clans	2130805
Temple Run	1724546
Pandora - Music & Radio	1126879
Pinterest	1061624
Bible	985920
Candy Crush Saga	961794
Spotify Music	878563
Angry Birds	824451
**6. Take the 10 apps best rated by users.**
PewDiePie: Legend of the Brofist	5
OPUS: The Day We Found Earth	5
Fitbod Workout Log: Strength Lifting Bodybuilding	5
??????MT3-????????????????????? ????????????????????????	5
Halloween Makeover: Spa, Makeup & Dressup Salon	5
BlockyTime - Track your time no need to Start/Stop	5
SenseSleep - Train Your Brain To Sleep Better	5
[the Sequence]	5
Color???????????????	5
Analog London	5
**7. Take a look on the data you retrieved in the question 5. Give some insights.**
From the data we have in the question 5.at least what makes clear facebook is the most rated app,and instagram second.As a person which is obivious,people love to hang around in social media rather than bible.
**8. Take a look on the data you retrieved in the question 6. Give some insights.**
Here,when we look on the questions 6, what we get to know is people love to play game.and the game app name "PewDiePie: Legend of the Brofist" has the highest rating,similarly second one also a game.


**9. Now compare the data from questions 5 and 6. What do you see?**
while comparing data from question 5 & 6.what makes clear is that people are more fond of entertainment.Either it is social media or game.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
To take top 3 in MySQl i select track name and user_rating then find out out the sum of totalrating count from data set apple windows store,then group by track name and order by user rating and last limit by 3.
Head Soccer	5	481564
Plants vs. Zombies	5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	386521


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
Higher the price lower the votes. people do care about the price at the same time they do care about the other factors as well.Below here, we can see the examples as well.
track_name                   rating num_of_votes   price
KNFB Reader	                     4.5	71	        99.99
Proloquo2Go - Symbol-based AAC	 4	   773	       249.99
LAMP Words For Life         	4     	41         	299.99

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
