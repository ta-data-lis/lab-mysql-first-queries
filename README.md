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
:) Sudoku +
King of Dragon Pass
TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF
Plants vs. Zombies
Learn to Speak Spanish Fast With MosaLingua
Plants vs. Zombies HD
The Photographer's Ephemeris
▻Sudoku +
Flashlight Ⓞ
Infinity Blade

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
Those apps seem to be the most popular apps that people use

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
All those apps have the same average rating of 5 starts. 
Maybe they have rating counts and every user that rated them gave them 5 stars.
Or maybe the ratings are being rounded up to 5, so can't really distinguish their ratings

**9. Now compare the data from questions 5 and 6. What do you see?**
Those 2 lists don't intersect

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
I can sort by the user_rating as before, but also sort by number of votes so that we get from the apps with 5 stars the most voted

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
The top 10 apps with the most ratings are free and out of the top 100 only 11 are paid, 
which points to price being an important factor

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
