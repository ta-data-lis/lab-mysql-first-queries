![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
There are 23 genres


**2. Which is the genre with more apps rated?**
The genre with more apps rated is "Games"


**3. Which is the genre with more apps?**
The genre with more apps is "Sports".


**4. Which is the one with less?**
The genre with less apps is Medical


**5. Take the 10 apps most rated.**
The most rated app:

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
The 10 apps best rated by users are: 

Head Soccer
Plants vs. Zombies
Sniper 3D Assassin: Shoot to Kill Gun Game
Geometry Dash Lite
Infinity Blade
Geometry Dash
Domino's Pizza USA
CSR Racing 2
Pictoword: Fun 2 Pics Guess What's the Word Trivia
Plants vs. Zombies HD


**7. Take a look on the data you retrieved in the question 5. Give some insights.**
All of the most rated apps are free. All the apps have accpetable byte sizes. Facebook and Instagram are the most popular Social Network / Photo & Video communities/campanies, thus justifying why they have so many ratings. Clash of Clans, Temple Run, Candy Crush Saga and Angry Birds are apps with the most popular genre (Games).  

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
The best rated apps are in their majority Games, which are the more rated genre. 

**9. Now compare the data from questions 5 and 6. What do you see?**
The best rated apps have lower _rating_count_tot_, what may cause their rating to go up. The most rated apps have a rating between 3,5 and 4,5. Being more rated, these apps may have a more accurate avaliation of their quality.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

select DISTINCT track_name, user_rating, rating_count_tot  from AppleStore
order by user_rating desc, rating_count_tot desc
limit 3;

**11. Does people care about the price?** 
From the top 10 apps regargind rate and number of rates (of which we infer number of downloads) all are free.
After evaluating the top 10 of the most expensive apps, we can conclude that those apps have very low rating counts (and probably few downloads), although they have good rates (ranging from 4 to 4.5).
In conclusion, yes people seam to care about app prices. 


Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?




## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
