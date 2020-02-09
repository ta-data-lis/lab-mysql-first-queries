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
The most rated apps are the most known/used ones.


**8. Take a look on the data you retrieved in the question 6. Give some insights.**
The best rated apps seems very specific and are probably the best in the respective subject.


**9. Now compare the data from questions 5 and 6. What do you see?**
There is only one app in common (Bible), meaning it is the most used one and the best one.


**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
By combining the two criteria (multiplication) and selecting the top 3.

Facebook
Instagram
Clash of Clans


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
I've done a comparison between the free apps (price = 0) and the payed apps (price > 0) using the average rating count and the average user rating.
There are much more rating counts in the free apps that in the paied ones, and the user ratings are not much different.
This indicates that yes people do care about the price.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
