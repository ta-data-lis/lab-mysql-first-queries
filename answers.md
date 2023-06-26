![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

There are 23 different genres, namely:
1. Book
2. Business
3. Catalogs
4. Education
5. Entertainment
6. Finance
7. Food & Drink
8. Games
9. Health & Fitness
10. Lifestyle
11. Medical
12. Music
13. Navigation
14. News
15. Photo & Video
16. Productivity
17. Reference
18. Shopping
19. Social Networking
20. Sports
21. Travel
22. Utilities
23. Weather

**2. Which is the genre with more apps rated?**

Games, with 3357 rated apps

**3. Which is the genre with more apps?**

Again, Games, with 3808 apps

**4. Which is the one with less?**

Catalogs, with 10 apps

**5. Take the 10 apps most rated.**
1. Facebook
2. Instagram
3. Clash of Clans
4. Temple Run
5. Pandora - Music & Radio
6. Pinterest
7. Bible
8. Candy Crush Saga
9. Spotify Music
10. Angry Birds

**6. Take the 10 apps best rated by users.**

There are >10 (490) best rated apps (user_rating = 5); I filtered them further by "most rated" (rating_count_tot) as a second criterion, in order to come-up with the 10 shown below:
1. Head Soccer
2. Plants vs. Zombies
3. Sniper 3D Assassin: Shoot to Kill Gun Game
4. Geometry Dash Lite
5. Infinity Blade
6. Geometry Dash
7. Domino's Pizza USA
8. CSR Racing 2
9. Pictoword: Fun 2 Pics Guess What's the Word Trivia
10. Plants vs. Zombies HD

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

Trends in the 10 most rated apps:

- _Gaming is BIG and there is some serious competition in it_: The genre of Games (most apps rated, most apps) finds 4 entries in the top 10 (5.6 M ratings or ~38% of total ratings).

  - The first two Games entries (Clash of Clans, Temple Run) contribute about double the amount of ratings (1.7-2.1 M ratings) as compared to the last two (Candy Crash Saga and Angry Birds; 0.8-1 M ratings).

- _Social dominated by Facebook_: The genre of Social Networking uptakes ~27% of the total ratings, however the first entry (Facebook, ~3 M ratings, the highest in the top 10) clearly wins over the second (Pinterest, 1.1 M ratings).

- _Instagram grows alone_: A single app in the genre of Photo & Video (Instagram, ~2.2 M ratings, the second-highest in the top 10).
  - It is noteworthy that Instagram (16%) equals both apps from Music (Pandora - Music & Radio and Spotify Music, 15%) in terms of total ratings.
  - That percentage is roughly double than the only entry in the Genre of Reference (Bible, #7 of the top 10 with ~7% of the total ratings).

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
/*There are 490 best rated apps, however the 10 most rated of them are included here*/
/*Head Soccer is the best (and most) rated app, followed by Plants vs. Zombies*/
/*The top 5 of the best & most rated apps are not so close from each other (10-15% of their total ratings)*/
**9. Now compare the data from questions 5 and 6. What do you see?**
/*None of the top-10 most rated apps have a "best rated" status (5)*/
/*The most rated app (Facebook) has the lowest user rating (3.5) out of the top-10 most rated apps*/
/*The best rated and most rated app (Head Soccer) only has ~60% of the reviews of the last from the most rated apps (Angry Birds)*/
**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
/*SImilar logic to the one applied in 6.*/
/*Head Soccer, Plants vs. Zombies, Sniper 3D Assassin: Shoot to Kill Gun Game*/
**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
/*Defining "care" as the rating and the total reviews people make*/

/*First check: do people review apps when they like/dislike them equally?*/
/*The majority of reviews (88%) is for apps that are rated between 3.5 and 4.5/

/*Focussing on highly-rated reviews (4.5, 63% of total) and try to find if price plays a role*/
/*45% (1183 out of 2644) of them are paid*/
/*Focussing on badly-rated reviews (3.5, 12% of total) and try to find if price plays a role*/
/*46% (323 out of 697) of them are paid*/

/*What is the average rating of (reviewed) paid and free apps?*/
/*The average rating of (reviewed) paid apps is 4.05, identical to the one of free apps*/

/*Price could matter (a bit) if we define only rating as "care"*/
/*On a more broad definition of "care", that considers rating and number of reviews, no clear conclusion on the influence of price can be made*/

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
