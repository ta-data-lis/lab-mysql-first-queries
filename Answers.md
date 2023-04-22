# Lab | My first queries

It is not possible to import the applestore_mac.csv file due to the following error:

"Error - Unhandled exception: 'ascii' codec can't decode byte 0xe2 in position 1601: ordinal not in range(128)"

I imported the applestore_windows.csv file and answered the questions based on it.

**1. Which are the different genres?**

Games, Productivity, Weather, Shopping, Reference, Finance, Music, Utilities, Travel, Social Networking, Sports, Business, Health & Fitness, Entertainment, Photo & Video, Navigation, Education, Lifestyle, Food & Drink, News, Book, Medical and Catalogs

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

Escape the Sweet Shop Series
Laurie Hernandez the Human Emoji
Room Escape Game - Santa's Room
CTFxCmoji
4x4 Dirt Track Trials Forest Driving Parking Sim
VPN Go - Safe Fast & Stable VPN Proxy
Stickman Base Jumper 2
DELISH KITCHEN - ????????????????????????????????????
??????????????? KOTATSU
Escape a Crepe House

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

The most rated app is Facebook, with 2974676 ratings. The 10 most-rated apps are free (0 USD). The most frequent genre in the 10 most-rated apps is Games.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

It is not possible to get the 10 apps best rated by users, as it is a tie among 490 apps with the maximum rating (5).

**9. Now compare the data from questions 5 and 6. What do you see?**

The 10 most-rated apps do not include any of the 10 best-rated apps by users. This can be due to the lower number of total ratings for the best rated apps, which can lead to the maximum score of 5.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

By ordering rows by user rating in descending order. Then, by ordering the rows with the maximum user rating score (5) by total number of votes in descending order.

Top 3 is the following: 

Head Soccer
Plants vs. Zombies
Sniper 3D Assassin: Shoot to Kill Gun Game

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

First, the relation between the price and the number of ratings was analysed. In fact, the higher the price, the less ratings an app has. Free apps have an average of 19751 ratings, while paid apps have an average of 4063 ratings. This means that the price might have a negative influence on the decision to download/buy an app and, consequently, submitting a rating.

However, when the relation between price and the user ratings is analysed, a negative influence of the price is not observed. Paid apps have a higher average of user ratings (3.73), when compared with free apps (3.38). Moreover, within the paid apps subset, apps that cost more than the average are also rated higher (3.8) than apps that cost less than the average (3.69).

Conclusion: People care about the price, as there are more ratings submitted for free apps than paid apps (the number of ratings decreases with the increase of price). However, in terms of the satisfaction of the users, paid apps have a higher rating than free apps.



