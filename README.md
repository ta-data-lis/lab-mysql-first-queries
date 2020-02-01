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
Games	52877810
Social Networking	7598316
Photo & Video	4998161
Entertainment	4020487

**3. Which is the genre with more apps?**
Games	3857
Entertainment	534
Education	448
Photo & Video	346

**4. Which is the one with less?**

Catalogs	10
Medical	23
Navigation	46
Business	57
Food & Drink	63

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

TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF	5
Flashlight Ⓞ	5
Learn to Speak Spanish Fast With MosaLingua	5
:) Sudoku +	5
The Photographer's Ephemeris	5
King of Dragon Pass	5
Escape the Sweet Shop Series	5
Infinity Blade	5
Plants vs. Zombies HD	5
Plants vs. Zombies	5

There are others with rating 5

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
- Four of the most rated apps are Games
- all of them are for free
- eight of them have a user rating of 4.5; 1 has 3.5, 1 has 4 --> max is 4.5
- average rating: 4.35
- the top 10 have in total 14830816 ratings

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

Games	6
Business	1
Utilities	1
Education	1
Photo & Video	1
- 6 of the best rated apps are games
- Price: only two of the apps are for free; all of the prices are .99:-), most expensive is 9.99 (King of Dragon Pass)
- in average they have 1088385 ratings
- most rated:
Plants vs. Zombies	426463
Infinity Blade	326482
Plants vs. Zombies HD	163598
Flashlight Ⓞ	130450
TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF	28388
:) Sudoku +	11447

**9. Now compare the data from questions 5 and 6. What do you see?**
most and best rated Apps are mostly games 
Average price for the best game is higher


**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
Head Soccer	481564	5
Plants vs. Zombies	426463	5
Sniper 3D Assassin: Shoot to Kill Gun Game	386521	5
Geometry Dash Lite	370370	5
Infinity Blade	326482	5
Geometry Dash	266440	5
Domino's Pizza USA	258624	5
CSR Racing 2	257100	5
Pictoword: Fun 2 Pics Guess What's the Word Trivia	186089	5
Plants vs. Zombies HD	163598	5

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

average user Ratings for apps with prices up to 5 USD are higher than for free apps. Also apps with a pricer higher than 10 USD are ranked worse.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
