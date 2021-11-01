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

'Social Networking', '2974676'


**3. Which is the genre with more apps?**

'Games', '3808'


**4. Which is the one with less?**

'Catalogs', '10'

**5. Take the 10 apps most rated.**

'Facebook','2974676','Social Networking'
'Instagram','2161558','Photo & Video'
'Clash of Clans','2130805','Games'
'Temple Run','1724546','Games'
'Pandora - Music & Radio','1126879','Music'
'Pinterest','1061624','Social Networking'
'Bible','985920','Reference'
'Candy Crush Saga','961794','Games'
'Spotify Music','878563','Music'
'Angry Birds','824451','Games'



**6. Take the 10 apps best rated by users.**
(I included the rating_count as a parameter in the user_rating, otherwise it is impossible to select the top 10 best?).

'481564','5','Head Soccer'
'426463','5','Plants vs. Zombies'
'386521','5','Sniper 3D Assassin: Shoot to Kill Gun Game'
'370370','5','Geometry Dash Lite'
'326482','5','Infinity Blade'
'266440','5','Geometry Dash'
'258624','5','Domino\'s Pizza USA'
'257100','5','CSR Racing 2'
'186089','5','Pictoword: Fun 2 Pics Guess What\'s the Word Trivia'
'163598','5','Plants vs. Zombies HD'


**7. Take a look on the data you retrieved in the question 5. Give some insights.**

Social Media apps are the most rated, followed by Games and Music. Interesting to see the Bible in there as well. I guess it makes sense since it is the most widely read book in the world. 

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

9 out of the best 10 rated apps are Games. 

'481564','5','Head Soccer','Games'
'426463','5','Plants vs. Zombies','Games'
'386521','5','Sniper 3D Assassin: Shoot to Kill Gun Game','Games'
'370370','5','Geometry Dash Lite','Games'
'326482','5','Infinity Blade','Games'
'266440','5','Geometry Dash','Games'
'258624','5','Domino\'s Pizza USA','Food & Drink'
'257100','5','CSR Racing 2','Games'
'186089','5','Pictoword: Fun 2 Pics Guess What\'s the Word Trivia','Games'
'163598','5','Plants vs. Zombies HD','Games'


**9. Now compare the data from questions 5 and 6. What do you see?**

In general, people tend to rate the 'Games' apps often and they also have a high ranking. But Social Media has more counts on ratings and ranks lower.

**10. How could you take the top 3 regarding the user ratings but also the number of votes**

Oh haha, I already did that...

'481564','5','Head Soccer'
'426463','5','Plants vs. Zombies'
'386521','5','Sniper 3D Assassin: Shoot to Kill Gun Game'

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

Yes, people seem to care about the price since 9/10 of the best rated apps are less than the average cost of all the apps. Only one app is more expensive: 'Geometry Dash Lite' at 1.99.

Average price of all apps is: '1.6818916269951598'


'481564','5','Games','Head Soccer','0'
'426463','5','Games','Plants vs. Zombies','0.99'
'386521','5','Games','Sniper 3D Assassin: Shoot to Kill Gun Game','0'
'370370','5','Games','Geometry Dash Lite','0'
'326482','5','Games','Infinity Blade','0.99'
'266440','5','Games','Geometry Dash','1.99'
'258624','5','Food & Drink','Domino\'s Pizza USA','0'
'257100','5','Games','CSR Racing 2','0'
'186089','5','Games','Pictoword: Fun 2 Pics Guess What\'s the Word Trivia','0'
'163598','5','Games','Plants vs. Zombies HD','0.99'


