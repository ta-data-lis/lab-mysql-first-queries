# Lab | My first queries

**1. Which are the different genres?**

+Games
+Productivity
+Weather
+Shopping
+Reference
+Finance
+Music
+Utilities
+Travel
+Social Networking
+Sports
+Business
+Health&Fitness
+Entertainment
+Photo & Video
+Navigation
+Education
+Lifestyle
+Food & Drink
+News
+Book
+Medical
+Catalogs

**2. Which is the genre with more apps rated?**

+Social Networking

**3. Which is the genre with more apps?**

+Education, Games and Lifestyle

**4. Which is the one with less?**

+Health & Fitness

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
???Solitaire???
???Sudoku +
"HOOK"
[the Sequence]
100 PICS Coloring - free color in book game app
4x4 Dirt Track Trials Forest Driving Parking Sim
5K Runner: 0 to 5K Run Trainer. Couch potato to 5K
8fit - Workouts, meal plans and personal trainer
A Noble Circle

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

Most famous Social Network (FB, IG, Spotify, Pinterest) received more ratings, probably due to having more users than other apps. On game apps, the most rated where
also, as with social network, the one with a bigger number of users. We can see that most of the most rated apps are the ones available in a larger number of languages, which increases the reach.  

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

Best rated apps are mainly games and health&fitness apps and seem to be more "simple" apps, like Sudoku, a well known game.

**9. Now compare the data from questions 5 and 6. What do you see?**

Most rated apps are not necessarily the best rated, it just means that with more users you will receive more reviews but not necessarily these reviews will be positive.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

By selecting track_name, user_rating and rating_count_tot, group by track_name and order by rating_count_tot desc, limit 3.
Instagram
Clash of Clans
Facebook

**11. Does people care about the price?**
People do seem to care about price.  Besides PacMan that is a very classic game, most of the rated apps are either free or have a low price.