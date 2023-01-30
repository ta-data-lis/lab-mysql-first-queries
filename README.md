![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

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

Sea Hero Quest
Puzzlepops!
Five Minute Journal
??????????????????????????????????????? - Music Bank?????????????????????????????????
Bike Traffic Rider an Extreme Real Endless Road Racer Racing Game
[the Sequence]
Analog London
Figure Skater - Girls Makeup & Dressup Salon Game
Color???????????????
Tricky Test 2???: Genius Brain?

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

The answer is, the 10 companies with more ratings

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

The answer is, the 10 companies with better ratings

**9. Now compare the data from questions 5 and 6. What do you see?**

The most rated apps are not the best rated by users. There is no relation between number of ratings to high ratings.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

SELECT lab1.applestore_windows.track_name, MAX(lab1.applestore_windows.user_rating) as a , MAX(rating_count_tot) as b
FROM lab1.applestore_windows
GROUP BY lab1.applestore_windows.track_name ORDER BY a DESC, b DESC
LIMIT 3;

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

I would say that there are some relation between use of an app and the price. Firstly I check the relation between rating and price and I did not see any relationship between those 2. For the higher rated apps we had different prices including free apps. Although, after that I checked the price of the apps with higher number of votes and there I saw that on the tap 10 all the apps were free and on the top 20 only 3 were paid (and even though paid, it was really cheap). For that reason I can say that people care about the price, the cheaper the app more users it will have.  


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
