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

Prime_genre	Total_rates
Games	2221443

**3. Which is the genre with more apps?**

Prime_genre	Total_apps
Games	6416

**4. Which is the one with less?**

Prime_genre	Total_apps
Weather	0

**5. Take the 10 apps most rated.**

TrackName	Rating_Count_tot
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

TrackName	User_Tating
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

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

The most rated apps are the ones generaly more popular amog people.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

I can't conlued much  beacuse even if we observed the 20 best rated apps they would all have 5 rating since the rantig isn't a decimal value, and is round to the unity.

**9. Now compare the data from questions 5 and 6. What do you see?**

The user rating is an average of all total ratings. 
But we dont have any of the top 10 most rated apps within the top 10 rated apps. so we might say that with more votes the less the app rate.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

TrackName	Rating_Count_tot	User_Tating
Facebook	2974676	3.5
Instagram	2161558	4.5
Clash of Clans	2130805	4.5

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

People dont care about price when they are rating.
the average rating for free apps is 3.3771280532938563 and the average for apps with price biger that 20 is 3.625. Althoug as the querryies beffore we conclued this if we dont take into consideration the number of ratings. If we consider the number of ratings from a certain threshold the only ones taht are relevant we dont have comparison for apps that cost more taht 10 euros.
but apps that cost more that 2 euros we see that people ratings dont differ from the ratings for free apps.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
