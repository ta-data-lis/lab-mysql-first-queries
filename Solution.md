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

Games

**3. Which is the genre with more apps?**

Games

**4. Which is the one with less?**

Catalogs

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

Head Soccer	5.0	481564
Plants vs. Zombies	5.0	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5.0	386521
Geometry Dash Lite	5.0	370370
Infinity Blade	5.0	326482
Geometry Dash	5.0	266440
Domino's Pizza USA	5.0	258624
CSR Racing 2	5.0	257100
Pictoword: Fun 2 Pics Guess What's the Word Trivia	5.0	186089
Plants vs. Zombies HD	5.0	163598

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

Most are social media or games 


**8. Take a look on the data you retrieved in the question 6. Give some insights.**

are mostly games


**9. Now compare the data from questions 5 and 6. What do you see?**

with increased number of ratings it gets harder to stay on a user rating of 5


**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

Group by trackname, order by user_rating, rating_count_tot limit 3


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

People seem to care about the price, free apps are rated more often which leads to the assumption, that they are downloaded  way more often 

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
