![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

#Lab | My first queries

Please, import the .csv database called *AppleStore.csv*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

#prime_genre
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

'Social Networking', with '2974676' ratings

**3. Which is the genre with more apps?**

'Games', '3808'

**4. Which is the one with less?**

'Catalogs', '10'

**5. Take the 10 apps most rated.**

#track_name, rating_count_tot
'Facebook', '2974676'
'Instagram', '2161558'
'Clash of Clans', '2130805'
'Temple Run', '1724546'
'Pandora - Music & Radio', '1126879'
'Pinterest', '1061624'
'Bible', '985920'
'Candy Crush Saga', '961794'
'Spotify Music', '878563'
'Angry Birds', '824451'

**6. Take the 10 apps best rated by users.**

#track_name, user_rating
':) Sudoku +', '5'
'King of Dragon Pass', '5'
'TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF', '5'
'Plants vs. Zombies', '5'
'Learn to Speak Spanish Fast With MosaLingua', '5'
'Plants vs. Zombies HD', '5'
'The Photographer\'s Ephemeris', '5'
'▻Sudoku +', '5'
'Flashlight Ⓞ', '5'
'Infinity Blade', '5'

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

#track_name, rating_count_tot, prime_genre
'Facebook', '2974676', 'Social Networking'
'Instagram', '2161558', 'Photo & Video'
'Clash of Clans', '2130805', 'Games'
'Temple Run', '1724546', 'Games'
'Pandora - Music & Radio', '1126879', 'Music'
'Pinterest', '1061624', 'Social Networking'
'Bible', '985920', 'Reference'
'Candy Crush Saga', '961794', 'Games'
'Spotify Music', '878563', 'Music'
'Angry Birds', '824451', 'Games'

#facebook is the app that got most ratings, followed by instagram
#three game apps are in this ranking
#we have two music and social networking apps and the bible app under the apps that got the most ratings
#last in this ranking is the game angry birds

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

#track_name, user_rating, prime_genre
':) Sudoku +', '5', 'Games'
'King of Dragon Pass', '5', 'Games'
'TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF', '5', 'Business'
'Plants vs. Zombies', '5', 'Games'
'Learn to Speak Spanish Fast With MosaLingua', '5', 'Education'
'Plants vs. Zombies HD', '5', 'Games'
'The Photographer\'s Ephemeris', '5', 'Photo & Video'
'▻Sudoku +', '5', 'Games'
'Flashlight Ⓞ', '5', 'Utilities'
'Infinity Blade', '5', 'Games'

#there are at least 10 apps with the best rating of 5
#most of the apps are gaming apps (6 out of 10)

**9. Now compare the data from questions 5 and 6. What do you see?**

#the apps that received most ratings are not necessary the apps best rated

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

#track_name, user_rating, rating_count_tot, prime_genre
'PAC-MAN Premium', '4', '21292', 'Games'
'Evernote - stay organized', '4', '161065', 'Productivity'
'WeatherBug - Local Weather, Radar, Maps, Alerts', '3.5', '188583', 'Weather'

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

#it seems like the price does not really matter, people give good or bad ratings for free apps and for apps that you have to buy
#also the frequency of ratings varies a lot and it does not matter if people payed for the app or not


##Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
