![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

Games, Productivity, Weather, Shopping, Reference, Finance, Music, Utilities, Travel, Social Networking, Sports, Business, Health & Fitness, Entertainment, Photo & Video, Navigation, Education, Lifestyle, Food & Drink, News, Book, Medical, Catalogs

**2. Which is the genre with more apps rated?**
Games

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
LINE Moments - Capture Your Fun Moments
Cafe Story - Play Cooking & Farming Game
Grumpy Cat's Worst Game Ever
Fitness Sync for Fitbit to Apple Health
Stickman Base Jumper 2
Dungeons of Chaos UNITY EDITION
DELISH KITCHEN - ????????????????????????????????????
????????????IV:????????????
LINE RUSH !
Able Black

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
The most rated apps are also app with propbably the most amount of users/downloads.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
There are several apps with the same maximum rating, 5. THese apps also have probably less downloads , which affects the the average score.

**9. Now compare the data from questions 5 and 6. What do you see?**
The app with the best rates are not the apps with better rates. Apps that are less known, with less downloads and consenqutly less reviews can have an average rate higher than the 10 most rated apps. One insight to take is the average rate is not enought to analyse the quality of the app and other aspects like the number of downloads shoud be taken in consideration.


**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
I would filter by maximum rating (5) and then order by DESC
Head Soccer
Plants vs. Zombies
Sniper 3D Assassin: Shoot to Kill Gun Game

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
Yes, people do care about price. Looking at the apps with the best rating and the highest number of reviews, the top 20, show apps that are free and the fee that are paid cost less than 2 usd. 
ORdering the app just by price is possible to see that the most expensive apps have few reviews and the user rating is less than 5 for the top 10 apps. The top 10 most rated apps are all free.

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
