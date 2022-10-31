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
Games	52630139

**3. Which is the genre with more apps?**
Games	3808

**4. Which is the one with less?**
Catalogs	10

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
LINE Moments - Capture Your Fun Moments	5
Cafe Story - Play Cooking & Farming Game	5
Grumpy Cat's Worst Game Ever	5
Fitness Sync for Fitbit to Apple Health	5
Stickman Base Jumper 2	5
Dungeons of Chaos UNITY EDITION	5
DELISH KITCHEN - ????????????????????????????????????	5
????????????IV:????????????	5
LINE RUSH !	5
Able Black	5

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
Assuming that the ammount of rates is proporcional with the ammount of downloads, once almost everyone with access to internet has a facebook and/or instagram profile, not surprisingly those are as well the most rated apps. Accordingly, most famous games for smartphones and music streamming services are also present in this top 10.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
Best rated apps are mainly games, made to entertain the user. Also an app to track health parameters while exercising. 

**9. Now compare the data from questions 5 and 6. What do you see?**
Quantity doesn't mean quality - not the most rated apps, are the best rated ones. People tend to give better rates to games, than to social media.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
Head Soccer	481564	5
Plants vs. Zombies	426463	5
Sniper 3D Assassin: Shoot to Kill Gun Game	386521	5

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
From a Universe where there are 4049 free apps and 3093 payed apps:
- there are 161065 ratings for free apps, against 317976 paid ones --> people tend to rate more a paid app, than a free one;
- from 0.1-10$ we have rating count of 303768, which represents 95,5% of all the ratings given to paid apps: 
        if we consider that the ammount of rates is proporcional with the ammount of downloads -> this means that 95,5% of people that pay for an app, prefer to download apps are under 10$;

- the answer is: Yes, people care about the price

- Other curiosities:
    - the average rate for a free app is 3.377
    - the average rate for a paid app is 4.014
    
    - people tend to give better rates to paid apps.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
