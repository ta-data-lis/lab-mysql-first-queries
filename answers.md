![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
'Games'
'Productivity'
'Weather'
'Shopping'
'Reference'
'Finance'
'Music'
'Utilities'
'Travel'
'Social Networking'
'Sports'
'Business'
'Health & Fitness'
'Entertainment'
'Photo & Video'
'Navigation'
'Education'
'Lifestyle'
'Food & Drink'
'News'
'Book'
'Medical'
'Catalogs'


**2. Which is the genre with more apps rated?**
Games with 3357 apps rated.

**3. Which is the genre with more apps?**
Games with a total of 3808 apps.

**4. Which is the one with less?**
Catalogs with just 10 apps.

**5. Take the 10 apps most rated.**
'Facebook'
'Instagram'
'Clash of Clans'
'Temple Run'
'Pandora - Music & Radio'
'Pinterest'
'Bible'
'Candy Crush Saga'
'Spotify Music'
'Angry Birds'

**6. Take the 10 apps best rated by users.**
'MOJI TALK by DJ Khaled'
'Fitness Sync for Fitbit to Apple Health'
'Epic Jackpot Slots: Slot Machines & Bonus Games'
'Arthur\'s Adventures-Road of Glory:Pocket Edition'
'Dungeon Warfare'
'PS Deals+ - Games Price Alerts for PS4, PS3, Vita'
'??????????????????Cottage'
'Pettson\'s Inventions 3'
'LINE Moments - Capture Your Fun Moments'
'Despicable Bear - Top Beat Action Game'

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
These user ratings are the most accurate because the amount of ratings is the greatest.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
Some of the apps retrieved have a small count of ratings and therefore the rating has less value.

**9. Now compare the data from questions 5 and 6. What do you see?**
When it is asked for the best rated apps, the only field evaluated is user_rating, without any regard for the others. It's easier to get a perfect 5 when only a few users rated the app.
On the other hand, the top 10 most rated apps, are likely the most important apps of the whole app store. They can only get all these reviews because they have even more users. Also, they are likely used often by their users, because not everyone wants to spend time rating apps, and the fact that the user_rating is not so high points to the possibility that many of the reviews are complaints. This shows, once again, how these apps are important, because the users preferred to write a bad review instead of replacing these apps with similar ones.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
We can set a minimum number of ratings and then get the top user_ratings.

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

Apps that aren't free have significantly less ratings. However, some of the most popular apps are paid. 

I believe that buying an app has a higher risk than just installing and then removing it. And therefore, having a paid app is a strategy that is better suited for apps that already have a valuable brand.

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
