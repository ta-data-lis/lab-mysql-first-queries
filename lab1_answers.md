LAB 1 - ANSWERS TO QUESTIONS

1. Which are the different genres?
Games, Productivity, Weather, Shopping, Reference, Finance, Music, Utilities, Travel, Social Networking, Sports, Business, Health & Fitness, Entertainment, Photo & Video, Navigation, Education, Lifestyle, Food & Drink, News, Book, Medical, Catalogs.

2. Which is the genre with more apps rated?
Games -> 52630139 reviews in total.

3. Which is the genre with more apps?
Games -> 3808 apps.

4. Which is the one with less?
Catalogs -> 10 apps.

5. Take the 10 apps most rated.
The 10 apps most rated are: Facebook, Instagram, Clash of Clans, Temple Run, Pandora-music & radio, Pinterest, Bible, Candy Crush Saga, Spotify Music, Angry Birds.

6. Take the 10 apps best rated by users.
The 10 apps best rated (score 5) are: Escape the Sweet Shop Series, Laurie Hernandez the Human Emoji, The Very Hungry Caterpillar??? ??? Shapes & Colors, Room Escape Game-Santa's Room, CTFxCmoji, 4x4 Dirt Track Trials Forest Driving Parking Sim, VPN Go- Safe & Stable VPN Proxy, Stickman Base Jumper 2, DELISH KITCHEN - ????????????????????????????????????, ??????????????? KOTATSU.

7. Take a look on the data you retrieved in the question 5. Give some insights.
The apps with most rates are all applications by well-known brands, and they are all either games or social media apps.

8. Take a look on the data you retrieved in the question 6. Give some insights.
The apps with the highest rates are not well-known. In most cases, the number of reviews is extremely low (e.g. the top application only has 3 reviews, and Kotatsu only has 1). With the exception of 3 apps, most of the top ranked have fewer than less than reviews. Thus, with such a low volume of reviews that could be fake, the rates are not reliable.

9. Now compare the data from questions 5 and 6. What do you see?
Looking at the top 10 results only, there is not a clear relationship between number of reviews and the scores. This is likely caused by the problem stated in question 8: the apps with highest scores have few reviews, which may be fake.

10. How could you take the top 3 regarding the user ratings but also the number of votes?

(See the query in .sql file)

Combining the 2 attributes we get a different result: out of the apps with a user rating of 5, the 3 most reviewed apps (all with more than 38,000 votes) are games: Head Soccer, Plants vs. Zombies, Sniper 3D Assassin: shoot to kill gun game.

The combination of the 2 attributes provides more reliable insights.

11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

Q1+Q2: How many paid apps are there? How many free apps are there?

There are 3093 paid apps.
There are 4049 free apps.

We can't infer much from this question, but we see that there is a balance between paid and free apps in the store.

Q3+Q4: What is the avg score of paid apps? What is the avg score of free apps?

The avg. rating of paid apps is 3.73
The avg. rating of free apps is 3.38

Therefore, it seems that the attribute price does not have a direct effect on the level of users' satisfaction.

Q5: Are there any paid apps among the top popular (highest scores, most rated) apps?

75% of the top 50 apps are free, and the remaining 25% are paid apps, with prices that rank between 0.99 and 4.99 USD. Whereas this is not conclusive, it seems that free apps have a higher likelihood of becoming more popular.

Q6: Can the top most expensive apps get high scores? How do they compare with the avg scores in the app store?

The top 50 most expensive apps (excluding those with less than 50 reviews) have high scores, usually above 4.0. This means they perform better than the average for both paid and free apps. Therefore, users do not seem to give lower scores when they pay for the apps.

FINAL ANSWER: this is just a small sample of the analysis we could perform with this database. We could perform more queries (e.g. compare within each genre).
Moreover, to get more conclusive results, we would need to access more data (e.g. get access about number of downloads, compare free and paid versions of the same apps if they exist, or compare the performance of apps that provide similar services and have different prices).
As a tentative answer, pending to be validated with more data, it seems that price does impact the likelihood of apps to become popular and get more reviews (this is probably linked to the fact that free apps may be downloaded by more users). However, price does not seem to directly influence users' satisfaction, and paid apps can perform as well as free apps in terms of scores.
