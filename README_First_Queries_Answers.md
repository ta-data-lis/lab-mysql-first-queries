![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?** 
The different genres are:
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
Games with 2974676 total rating count

**3. Which is the genre with more apps?**
Games with Count of 3808

**4. Which is the one with less?**
Catalogs with Count of 10

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
PewDiePie: Legend of the Brofist
OPUS: The Day We Found Earth
Fitbod Workout Log: Strength Lifting Bodybuilding
??????MT3-????????????????????? ????????????????????????
Halloween Makeover: Spa, Makeup & Dressup Salon
BlockyTime - Track your time no need to Start/Stop
SenseSleep - Train Your Brain To Sleep Better
[the Sequence]
Color???????????????
Analog London

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
Facebook the app most rated is also the app that got the worst rating out of the  10 most rated apps
The most common prime_genre of the 10 most rated apps was games 
(Compare the rating of these 10 apps with the average rating of all apps)

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
Compared to the average rating count of 12957.3302 the rating count of the 10 best rated apps is way below that

**9. Now compare the data from questions 5 and 6. What do you see?**
the best rated Apps are the ones with less totral rating counts compared the rating of the most rated apps

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
By ordering by ratings AND rating_count descending

Top 3 are: 
Head Soccer
Plants vs. Zombies
Sniper 3D Assassin: Shoot to Kill Gun Game


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

I will try to see if there is correlation between price and ratings 
Payed vs Free Apps Ratio: 3093:4049 

Average rate of most expensive ones compared to free ones 
average user rating payed apps=3.7263174911089556
average user rating free apps=3.377130155593974

It seems like there is no significant difference in the average rating

Let's take into account the number of votes as well: 
Average rating_count payed apps: 4063.2690
Average rating_count free apps: 19751.4352

We can see that payed apps are rated more often than free ones which can have an influence on the rating. To really have a statistical correct correlation between price and rating this should be included as well so it is hard to really make the assumption that people do not care about the price

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
