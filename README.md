![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. 

Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

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

Games	49505858

**3. Which is the genre with more apps?**

Games	2154

**4. Which is the one with less?**

Catalogs	7

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

Papers, Please	5
Tap the Frog	5
Kingdom Rush Frontiers HD	5
Memrise: learn languages	5
Learn English quickly with MosaLingua	5
Endless Alphabet	5
CARROT To-Do - Talking Task List	5
HB2 PLUS	5
Memorado Brain Training for Memory & Mindfulness	5
BeautyCam - AR Carnie selfie	5

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

It could be added the genre and the user rating

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

It shows a lot of five star ratings, but it does not show the relevance of the apps

**9. Now compare the data from questions 5 and 6. What do you see?**

When we compare both, we precisely miss this correlation

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

select track_name, user_rating, rating_count_tot
from applestore_windows
order by user_rating desc, rating_count_tot desc
limit 3;

**11. Does people care about the price?** 
Do some queries, comment why are you doing them and the results you retrieve. 
What is your conclusion?

The average between Free Apps and Paid Apps is not so different, 
but certainly the amount of free apps downloaded is bigger.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
