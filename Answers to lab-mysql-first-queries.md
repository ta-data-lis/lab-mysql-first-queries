## Answers to lab-mysql-first-queries

####1. Which are the different genres?
* Games
* Productivity
* Weather
* Shopping
* Reference
* Finance
* Music
* Utilities
* Travel
* "Social Networking"
* Sports
* Business
* "Health & Fitness"
* Entertainment
* "Photo & Video"
* Navigation
* Education
* Lifestyle
* "Food & Drink"
* News
* Book
* Medical
* Catalogs

####2. Which is the genre with more apps rated?
Social Networking.

####3. Which is the genre with more apps?
Games.

####4. Which is the one with less?
Catalogs.

####5. Take the 10 apps most rated.
* Facebook
* Instagram
* "Clash of Clans"
* "Temple Run"
* "Pandora - Music & Radio"
* Pinterest
* Bible
* "Candy Crush Saga"
* "Spotify Music"
* "Angry Birds"

####6. Take the 10 apps best rated by users.
* ":) Sudoku +"
* "King of Dragon Pass"
* "TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF"
* "Plants vs. Zombies"
* "Learn to Speak Spanish Fast With MosaLingua"
* "Plants vs. Zombies HD"
* "The Photographer's Ephemeris"
* "▻Sudoku +"
* "Flashlight Ⓞ"
* "Infinity Blade"

NB. More than 10 apps were given the highest rating 5. 

####7. Take a look on the data you retrieved in the question 5. Give some insights.
Very popular apps like Facebook and Instagram are also given a lot of ratings.

####8. Take a look on the data you retrieved in the question 6. Give some insights.
Most of the best rated apps seem to be games.

####9. Now compare the data from questions 5 and 6. What do you see?
The most rated apps are not the ones with the best rating. 

####10. How could you take the top 3 regarding the user ratings but also the number of votes?
You can retrieve the apps according to their number of ratings in descending order with a condition that they have the highest rating 5. They are:

* "Head Soccer"
* "Plants vs. Zombies"
* "Sniper 3D Assassin: Shoot to Kill Gun Game"

####11. Do people care about the price?
In order to answer this question, we would want to look at the correlation between price and number of ratings, where the number of ratings would suggest that people have downloaded and tested the app. The correlation value is ~0.04, which suggests no correlation. 