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

**2. Which is the genre with more apps rated?** Games

**3. Which is the genre with more apps?** Games

**4. Which is the one with less?** Catalogs

**5. Take the 10 apps most rated.**
Clash of Clans
Temple Run
Pandora - Music & Radio
Pinterest
Bible
Candy Crush Saga
Spotify Music
Angry Birds

**6. Take the 10 apps best rated by users.**
Advent Magnificat Companion 2016
Demi Lovato - Zombarazzie Adventure
Balvinmoji
Wavemoji
Room Escape Game - Pictures Room Esacpe
NashMoji ™ by Nash Grier
MacMoji ™  by Conor McGregor
大话问仙 - 与众不同的萌派仙侠回合游戏体验(送神器)
Nope Quiz
Snowball!!

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
There is an app called Bible? Wow
Facebook is the app with more ratings
A lot of games and social apps on this top 10.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
There are many more apps with maximum rate so I guess this list limited to 10 is not very useful

**9. Now compare the data from questions 5 and 6. What do you see?**
I do not see any correlation between the two queries.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
ORDER By user rating and rating count:
Head Soccer	5.0	481564
Plants vs. Zombies	5.0	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5.0	386521

**11. Does people care about the price?**
First 10 top rated apps are free so on the first glance this market is really sensible to price. To notice that their ratings are actually good.
If we group by price we confirm that more than half of the apps are free and have most of the rating count. Additionally they have an 3.38 rating average. To conclude, not only people care about price, they are on average actually happy with their free apps.


Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?


## Deliverables
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers.
