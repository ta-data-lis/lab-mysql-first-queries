**1. Which are the different genres?**
Games, Productivity, Weather,Shopping, Reference
Finance,Music, Utilities, Travel, Social, Networking, Sports, Business, Health & Fitness, Entertainment, Photo & Video, Navigation, Education, Lifestyle, Food & Drink, News Book, Medical, Catalogs.

**2. Which is the genre with more apps rated?**
SocialNetworking with a total of 2974676 ratings made

**3. Which is the genre with more apps?**
The genre with more app is Games, with 3,808 apps

**4. Which is the one with less?**
The genre with less apps is Catalogs, with 10 apps

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
:) Sudoku +	5
King of Dragon Pass	5
TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF	5
Plants vs. Zombies	5
Learn to Speak Spanish Fast With MosaLingua	5
Plants vs. Zombies HD	5
The Photographer's Ephemeris	5
▻Sudoku +	5
Flashlight Ⓞ	5
Infinity Blade	5

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
- The top 10 doesn't surpass the 4.5 rating
- 4 apps are from the Games genre
- 2 apps are from the Social Networking genre
- All of the apps are free to download
- The app with most supported devices is Candy crush Saga, with 43 device
**8. Take a look on the data you retrieved in the question 6. Give some insights.**
- There are 6 apps in the Games genre, 1 in Business, 1 in Education, 1 in Photo & Video and 1 in Utilities
- Only 1 app is free to download
- The apps with most supported devices is Infinity Blade and King of Dragon Pass, with 43 device
- The app with least supported devices is Plants vs. Zombies HD, with 24 devices
**9. Now compare the data from questions 5 and 6. What do you see?**
- Both of them has the Games genre
- Both datasets has the same maximum number of supported devices
- There is a significant gap between the most rated apps in the datasets 5 and 6 
**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
Combining the code from the questions 5 and 6 the WHERE method should go first to filter the highest rated ones and then ordering by the most rated ones

Head Soccer	481564	5
Plants vs. Zombies	426463	5
Sniper 3D Assassin: Shoot to Kill Gun Game	386521	5

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
We have to consider first that rating_count_tot is when a user downloads the app and then after using it, decides to rating it

a.) I choose this columns since they are the ones that makes an actual impact in the desicion of downloading the app and then rating it, id and track_name are to identify the app. 

b.) I want to get the 5 most rated apps that are free (b.1) to download and the ones with price(b.2)
b.1 insights:
- The average of the ratings are 2,023,692.8 in the top 5 list
- The average of user rate is 4.2 in the top 5 list
- There are 2 apps in Games genre
- The most rated app is Facebook in the Social Networking genre

b.2 insights:
- The average of user rate is 4.6 in the top 5 list
- All of the most rated app with price are in the Games genre
- The average prize is 2.39 USD
- The most expensive app is Minecraft
- The average of the ratings are 516,789

c.) I want to use the same filter in point b, but in this time I want to get the most rated ones in each genre
c.1 insights:
- The most rated app is Facebook in the Social Networking genre
- Te average of user rate is 3.63
- The genre with the lowest maximum user rate is the Medical 
- The average of the ratings are 631,948.7
- The average of user rate is 3.7 in the list

c.2 insights: 
- The average price is 3.9 USD
- The most expensive apps are PCalc - The Best Calculator and RadarScope at 9.99 USD
- The average of user rate is 3.6 in the list
- The most rated app is PAC-MAN Premium in Games genre
- The cheapest apps are Election 2016 Map, Big Day - Event Countdown, Fantasy Football Manager - FFM for FPL, Bowitter for iPhone at 0.99 USD

With this information we can conclude that pepole care by the price of the apps depending on the genre of the application, we can see that in all the datasets Games has been present, but their way to sell the apps is completely different from the other genres, this is thanks to it's advantage of the external promotions in different platforms.

Also doing a direct comparison with the most rated app in the same genre in the b.1 and b.2 we can see that there is a significant difference in the ratings. i.e: In the Music genre the free app most rated has 1,126,879 and the paid app most rated has 71,609.
