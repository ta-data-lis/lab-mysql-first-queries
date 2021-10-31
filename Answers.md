

# Lab | My first queries



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

In question 5 we have the apps that had the highest amount of ratings. Probably since they were the ones where users rated the most, they are also the most downloaded apps as well. All of them are very solified in the market and known for most of people.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

In question 6 the results we had are quite different from the ones we got from question 5 since these are the apps with highest user votes. But these results may not be very accurate since we didn't do any filter regarding the number of user votes. So if the app has only one vote, with 5 rating it wil lbe automaticly in the top rated apps and that's not very consistent.

**9. Now compare the data from questions 5 and 6. What do you see?**

I did a Query regarding a group by of first `lab6-query`.applestore2.rating_count_tot DESC
WHERE user_rating = 5 and limited just by the top 5 resultss: 

Head Soccer	5	481564
Plants vs. Zombies	5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	386521
Geometry Dash Lite	5	370370
Infinity Blade	5	326482

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

I did it in the question before:

 SELECT `lab6-query`.applestore2.track_name , `lab6-query`.applestore2.user_rating, `lab6-query`.applestore2.rating_count_tot
 FROM `lab6-query`.applestore2
 WHERE `lab6-query`.applestore2.user_rating = 5.0
 ORDER BY `lab6-query`.applestore2.rating_count_tot DESC
 LIMIT 5;

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?


I looked what was the avg(rating_user) grouping by the price of the app and got these results:

18.99	5
29.99	4.583333333333333
99.99	4.5
21.99	4.5
34.99	4.5
59.99	4.333333333333333
19.99	4.333333333333333
39.99	4.25
49.99	4.25
13.99	4.25
8.99	4.166666666666667
15.99	4.125
6.99	4.006172839506172
299.99	4
27.99	4
249.99	4
16.99	4
2.99	3.891336270190896
4.99	3.8255208333333335
3.99	3.7934782608695654
17.99	3.75
1.99	3.734248788368336
9.99	3.716417910447761
7.99	3.689655172413793
74.99	3.5
0.99	3.463498622589532

We can also look by sorting the table by price ascending, there is a correlation on when the price increases, the user rating increases as well:

0	3.377130155593974
0.99	3.463498622589532
1.99	3.734248788368336
2.99	3.891336270190896
3.99	3.7934782608695654
4.99	3.8255208333333335
5.99	3.4215686274509802
6.99	4.006172839506172

This can bring the insight that FREE Apps may not be that well testes and come with errors or mal-functionings as well as their utility may not be very good or useful in day to day activities.