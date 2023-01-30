![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

Games, Productivity, Weather, Shopping, Reference, Finance, Music, Utilities, Travel, Social Networking, Sports, Business, Health & Fitness, Entertainment, Photo & Video, Navigation, Education, Lifestyle, Food & Drink, News, Book, Medical and Catalogs.

**2. Which is the genre with more apps rated?**

Social Networking.

**3. Which is the genre with more apps?**

Games with 3808 apps.

**4. Which is the one with less?**

Catalogs with 10 apps.

**5. Take the 10 apps most rated.**

Facebook, Instagram, Clash of Clans, Temple Run, Pandora - Music & Video, Pinterest, Bible, Candy Crush Saga, Spotify Music and Angry Birds.

**6. Take the 10 apps best rated by users.**

Escape the Sweet Shop Series, Laurie Hernandez the Human Emoji, The Very Hungry Catterpilar, Room Escape Game - Santa's Room, CTFxCMoji, 4x4 Dirt Track, VPN Go, Stickman Base Jumper 2, Delish Kitchen and Kotasu.

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

Social media, games and music dominate the top 10. The two at the top are from the same mother company. 

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

Mostly games dominate the list of best rated apps, with 7 representatives in the top 10.

**9. Now compare the data from questions 5 and 6. What do you see?**

None of the top 10 most downloaded apps appear in the top 10 rating list. Games have a strong presence on both lists. 

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

Adding the rating total count in the select statement and also using it in the order by section.

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

Out of the 50 top and most rated, only 12 are not free. Out of the 50 most rated, regardless of score, only 6 are not free. Considering those two pieces of data, I believe it's fair to say price do matters and people engage easier with apps that are free. 

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
