![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

'Games', 'Productivity',  'Weather', 'Shopping', 'Reference', 'Finance','Music','Utilities','Travel','Social Networking','Sports','Business','Health & Fitness','Entertainment','Photo & Video','Navigation','Education','Lifestyle','Food & Drink','News','Book','Medical','Catalogs'

**2. Which is the genre with more apps rated?**

Social Networking

**3. Which is the genre with more apps?**

Games

**4. Which is the one with less?**

Catalogs

**5. Take the 10 apps most rated.**

'Temple Run',
'Spotify Music',
'Pinterest',
'Pandora - Music & Radio',
'Instagram',
'Facebook',
'Clash of Clans',
'Candy Crush Saga',
'Bible',
'Angry Birds','824451'

**6. Take the 10 apps best rated by users.**

'Facebook',
'Instagram',
'Clash of Clans',
'Temple Run',
'Pandora - Music & Radio',
'Pinterest',
'Bible',
'Candy Crush Saga',
'Spotify Music',
'Angry Birds'

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

The 10 apps most rated are all social networks, games or music streamers (all within 3 genres


**8. Take a look on the data you retrieved in the question 6. Give some insights.**

The 10 apps best rated are all Games or Education apps with the exception of one which is Music


**9. Now compare the data from questions 5 and 6. What do you see?**

The majority of apps most and best rated are games

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

Order by user_rating and then by rating_count_tot

**11. Do people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

Apps with lower prices have a lot more reviews implying more usage
Even when we remove free apps, the ones with lower prices still have more reviews
The lowest rated apps are also the one with the higher average price indicating that either price does not imply quality or that people are more easily unsatisfied when they pay more

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
