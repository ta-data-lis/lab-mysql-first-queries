![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

prime_genre
'Book'
'Business'
'Catalogs'
'Education'
'Entertainment'
'Finance'
'Food & Drink'
'Games'
'Health & Fitness'
'Lifestyle'
'Medical'
'Music'
'Navigation'
'News'
'Photo & Video'
'Productivity'
'Reference'
'Shopping'
'Social Networking'
'Sports'
'Travel'
'Utilities'
'Weather'



**2. Which is the genre with more apps rated?**

Games with 3357 apps rated.
We assume that we have 1 row per app. 



**3. Which is the genre with more apps?**

Games with 3808 apps.
We assume that we have 1 row per app. 



**4. Which is the one with less?**

Catalogs with 10 apps.
We assume that we have 1 row per app. 



**5. Take the 10 apps most rated.**

'Facebook','2974676'
'Instagram','2161558'
'Clash of Clans','2130805'
'Temple Run','1724546'
'Pandora - Music & Radio','1126879'
'Pinterest','1061624'
'Bible','985920'
'Candy Crush Saga','961794'
'Spotify Music','878563'
'Angry Birds','824451'



**6. Take the 10 apps best rated by users.**

These are some of the apps best rated by users.

'Escape the Sweet Shop Series','5'
'Laurie Hernandez the Human Emoji','5'
'The Very Hungry Caterpillar??? ??? Shapes & Colors','5'
'Room Escape Game - Santa\'s Room','5'
'CTFxCmoji','5'
'4x4 Dirt Track Trials Forest Driving Parking Sim','5'
'VPN Go - Safe Fast & Stable VPN Proxy','5'
'Stickman Base Jumper 2','5'
'DELISH KITCHEN - ????????????????????????????????????','5'
'??????????????? KOTATSU','5'


**7. Take a look on the data you retrieved in the question 5. Give some insights.**

The most represented genre is the games, with 4 most rated apps in the top 10. This is in line with the fact that games is the genre with the highest amount of apps rated (equal to 3357).
Also, the top 10 apps most rated are all free.  



**8. Take a look on the data you retrieved in the question 6. Give some insights.**

If we limit the scope of our SQL query to 10, we see that the query returns an arbitarty set of rows. Accorting to our rows, we see that the most represented genre is the games, with 6 most rated apps in the top 10. This is in line with the fact that games is the genre with the highest amount of apps rated (equal to 3357). Also, the top 10 apps best rated are all free.  
If we extend the scope of our SQL query to the enire dataset by setting as a condition user rating equals to 5, we reaize that we have a total of 490 apps, and the average price is 1.6380612244897994.  


**9. Now compare the data from questions 5 and 6. What do you see?**

There is no overlapping between the two datasets. We assume that is less likely to have a user rating of 5 the more user rating an app receives. If we run the query below, we realize that Facebook, which is the best rated app has a user rating of 3.5. 

SELECT track_name, rating_count_tot, prime_genre, user_rating
FROM SQL_Labs.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

'Facebook','2974676','Social Networking','3.5'
'Instagram','2161558','Photo & Video','4.5'
'Clash of Clans','2130805','Games','4.5'
'Temple Run','1724546','Games','4.5'
'Pandora - Music & Radio','1126879','Music','4'
'Pinterest','1061624','Social Networking','4.5'
'Bible','985920','Reference','4.5'
'Candy Crush Saga','961794','Games','4.5'
'Spotify Music','878563','Music','4.5'
'Angry Birds','824451','Games','4.5'


**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

'Head Soccer','5','481564','Games'
'Plants vs. Zombies','5','426463','Games'
'Sniper 3D Assassin: Shoot to Kill Gun Game','5','386521','Games'


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

'Head Soccer','5','481564','Games','0'
'Plants vs. Zombies','5','426463','Games','0.99'
'Sniper 3D Assassin: Shoot to Kill Gun Game','5','386521','Games','0'



The top 3 applications, which are best rated by users and most rated by users, are either free of charge or costs less than 1 USD.
If we take the entire sample of the best rated applications, we see that the average price is USD 1.6380612244897994 (as opposed to USD '1.6818916269951598' whch is the average price of all applications).
Also, the most voted applications are free of charge.  
 Therefore, people care about the price of an application and they are more likley to use the least expensive ones, as well as to provide rating and rate them better.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
