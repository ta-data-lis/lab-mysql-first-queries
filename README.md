![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
Book
Business
Catalogs
Education
Entertainment
Finance
Food & Drink
Games
Health & Fitness
Lifestyle
Medical
Music
Navigation
News
Photo & Video
Productivity
Reference
Shopping
Social Networking
Sports
Travel
Utilities
Weather

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
All top apps seem to be the most commonly used so it seems reasonable that they are also the one with most ratings.
The more users an app has the more reviews it should receive in theory. 

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
Most of the top rated apps seem to fall on the games genre. 
This is also the genre with the biggest number of apps in general, so if there are more apps inside this genre there should also be more apps in the 5 star review sub-genre. 

**9. Now compare the data from questions 5 and 6. What do you see?**
None of the apps in the two top 10 coincide. This could be because the bigger number of opinions an app receives, the more difficult it is to receive a perfect score. This way none of the top rated belong to the top used (based on number of ratings).

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
Head Soccer	5	481564
Plants vs. Zombies	5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	386521

**11. Do people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

With the queries used on the data, the goal was to check the top genres sum of total numbers of reviews (within the different apps of that genre), for both the paid and unpaid apps. 
Afterwards we can compare the values for paid and unpaid and check if they have a similiar number of reviews since this will also give us an idea of the number of users.
For both tables, the games genre was the top reviewed however, the unpaid apps received around 40 million reviews whereas the paid apps received only around 10 million. 
Another coinciding genre on the table was the photo&video genre. For the unpaid apps we have around 4,5 million reviews whereas the paid apps have only around 0,5 million reviews.
We can deduce from this that users prefer in general the unpaid apps.

top 5 paid
Games	10048763
Photo & Video	458214
Entertainment	415649
Health & Fitness	267995
Productivity	251795

top 5 free
Games	42581376
Social Networking	7590182
Photo & Video	4550732
Music	3784296
Entertainment	3614869

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
