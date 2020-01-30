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
Games	3400

**3. Which is the genre with more apps?**
Games	3862

**4. Which is the one with less?**
Catalogs	10

**5. Take the 10 apps most rated.**
284882215	Facebook	2974676
389801252	Instagram	2161558
529479190	Clash of Clans	2130805
420009108	Temple Run	1724546
284035177	Pandora - Music & Radio	1126879
429047995	Pinterest	1061624
282935706	Bible	985920
553834731	Candy Crush Saga	961794
324684580	Spotify Music	878563
343200656	Angry Birds	824451

**6. Take the 10 apps best rated by users.**
286070473	Mileage Log | Fahrtenbuch	5
292628469	Juxtaposer	5
285994151	:) Sudoku +	5
1188375727	Escape the Sweet Shop Series	5
282935706	Bible	5
291430598	Hurricane Pro	5
289084315	Period Tracker Deluxe	5
285946052	iQuran	5
284666222	PCalc - The Best Calculator	5
284862767	FreeCell	5

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
Most rated apps are most "known" very popular apps.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
Actually App Rating is integer so there are many apps with 5, list is not representative...

**9. Now compare the data from questions 5 and 6. What do you see?**
No common elements, as 6. is just a subset of best rated AppleStore

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT id, track_name, user_rating,rating_count_tot
FROM Apple
ORDER BY user_rating DESC,rating_count_tot DESC LIMIT 3;

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
Users don´t seem to care much about price when reviewing since avg price isince rates 0, 2, 3 have the lower price mean.
Review average does not vary much between free and expensive apps (around 3.7 vs 3.8-3.9 depending on threshold for expensive apps), so price is not a big factor.


## Deliverables
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers.
