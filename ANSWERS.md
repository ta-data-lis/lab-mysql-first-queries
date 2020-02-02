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
Mileage Log | Fahrtenbuch
Juxtaposer
:) Sudoku +
Escape the Sweet Shop Series
Bible
Hurricane Pro
Period Tracker Deluxe
iQuran
PCalc - The Best Calculator
FreeCell


**7. Take a look on the data you retrieved in the question 5. Give some insights.**
Seems to be the apps that are most used by users, since we have social media, games and music streaming in there.


**8. Take a look on the data you retrieved in the question 6. Give some insights.**
Seems like a very eclectic range of apps. Not necessarily the most popular I guess?


**9. Now compare the data from questions 5 and 6. What do you see?**
Seems like the apps that have the most ratings are not necessarily the highest rated ones.


**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
Instagram	5	2161558
Clash of Clans	5	2130805
Temple Run	5	1724546


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
If we get the first 10 values from the price column and the avg of the rating total we get:
0	19749.8047
1	7145.6552
2	3811.8615
3	2805.5315
4	1660.5523
5	3242.2030
6	926.1538
7	5458.3795
8	4266.8788
9	1546.7778

So we can see that the free apps have a lot more ratings than the paid ones. However, it seems like the free apps are not the ones that have the highest user rating, which seems understandable, as one would expect a paid app to perform better than a free one.
