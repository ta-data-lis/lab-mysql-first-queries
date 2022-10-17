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
Head Soccer	5	481564
Plants vs. Zombies	5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	386521
Geometry Dash Lite	5	370370
Infinity Blade	5	326482
Geometry Dash	5	266440
Domino's Pizza USA	5	258624
CSR Racing 2	5	257100
Pictoword: Fun 2 Pics Guess What's the Word Trivia	5	186089
Plants vs. Zombies HD	5	163598

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
Social Media Apps are rated the most, then games. Facebook has nearly 3 million ratings in total and 800.000 more than Instagram on 2nd Place.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
There are only games in the best rated games apart from one Food&Drink app

**9. Now compare the data from questions 5 and 6. What do you see?**
Best rated apps don't have that many ratings, most: 481564, compared to: 2974676
Most rated has more different genres

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
Use GROUP BY

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
conclusion: good rated apps can be paid apps but tend to be very cheap (up to 1,99); most rated and so maybe most used apps are for free --> easier access
most expensive apps have only few ratings and ratings not so good --> users care about the price

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
