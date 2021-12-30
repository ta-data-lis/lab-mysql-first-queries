
# Lab | My first queries

Running the `.sql` file  the *AppleStore.csv* need to be inserted in the folder of database.

**1. Which are the different genres?**

The genres present in the dataset are: 
- Games
- Productivity
- Weather
- Shopping
- Reference
- Finance
- Music
- Utilities
- Travel
- Social Networking
- Sports
- Business
- Health & Fitness
- Entertainment
- Photo & Video
- Navigation
- Education
- Lifestyle
- Food & Drink
- News
- Book
- Medical
- Catalogs

**2. Which is the genre with more apps rated?**

The genre with more apps rated is "Games" with 3400 apps rated.

**3. Which is the genre with more apps?**

The genre with more apps is "Games" with 3862 apps.

**4. Which is the one with less?**

The genre with less apps is "Catalogs" with 10 apps.

**5. Take the 10 apps most rated.**

The 10 most rated apps are:
- Facebook
- Instagram
- Clash of Clans
- Temple Run
- Pandora - Music & Radio
- Pinterest
- Bible
- Candy Crush Saga
- Spotify Music
- Angry Birds

**6. Take the 10 apps best rated by users.**

The 10 apps best rated by users are:
- Day One Journal
- Watch OWN
- Gemini - A Journey of Two Stars
- Loop & Dot
- Smash Fu - Endless Arcade Smasher
- Into the Dim
- Wave
- Vlogger Go Viral - Clicker Game & Vlog Simulator
- Flipominos
- Inquire by Tamper

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

Considering the top 10 of apps most rated, the maximum is for Facebook, with 2,974,676 ratings, and the minimum is for Angry Birds, with 824,451 ratings. The mean inside of this group of apps is 1,483,081.6, which is above the number of ratings of app in fifth position, that is Pandora - Music & Radio with 1,126,879 ratings. The standard deviation and variance are 729,207.25 and 531,743,218,124.27, respectively.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

There are 3155 apps with a rate of 5 (highest rate possible). Actually, the answer provided in question 6 is not correct. Since, the number of best rated apps is above 10, if we add different columns to the query, the obtained values may vary.
Around 44 % of the apps present in Apple Store have the highest rate possible (5).

**9. Now compare the data from questions 5 and 6. What do you see?**

The data obtained in question 5 is numerical and ratio. On the other hand, the data obtained in question 6 is categorical and ordinal. It can be observed that, considering the 10 most rated apps, 20 % have a rate of 4 and 80 % have a rate of 5. 
The correlation between the rate of apps and its number of votes is practically 0 (around 0.09). So, the fact that an app with many ratings does not imply that its rating is high.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

The top 3 apps regarding the user ratings and also the number of votes are:
- Instagram with a rating of 5 and 2,161,558 rarings
- Clash of Clans with a rating of 5 and 2,130,805 ratings
- Temple Run with a rating of 5 and 1,724,546 ratings


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

In order to answer this question the correlation between price and the number of ratings, the rating and the size of the apps will be computed. The idea was to compute this statistical relation between these variables.
Evaluating the correlation between the price of apps and their number of rating, it can be observed that the correlation is negative and near to zero (-0.039). The highest the price, the smallest the number of rating but the relation is far away from linear. 
Now, considering the relation between the price and the rating of each variable, it was obtained a value positive but near to zero (0.0437). The highest the price, the highest the rating but the relation is far away from linear.
Finally, considering the relation between the price and the size of app, it was obtained a value positive and low (0.18), however, it was not so near to zero like the previous correlations. The highest the price, the highest the rating and despite of not being linear, the values are more similar to a straight line comparing to the relations analysed previously.