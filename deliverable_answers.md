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
Social Networking

**3. Which is the genre with more apps?**
Games

**4. Which is the one with less?**
Catalogs

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
'Escape the Sweet Shop Series'
'Laurie Hernandez the Human Emoji'
'The Very Hungry Caterpillar??? ??? Shapes & Colors'
'Room Escape Game - Santa\'s Room'
'CTFxCmoji'
'4x4 Dirt Track Trials Forest Driving Parking Sim'
'VPN Go - Safe Fast & Stable VPN Proxy'
'Stickman Base Jumper 2'
'DELISH KITCHEN - ????????????????????????????????????'
'??????????????? KOTATSU'

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
They are the apps with more ratings overall in the app store which does not necessarely mean
that they are the users favorites.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
These are the users favorite apps. 

**9. Now compare the data from questions 5 and 6. What do you see?**
I see that there is no app that is in both lists. 

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
'Escape the Sweet Shop Series'
'Laurie Hernandez the Human Emoji'
'Room Escape Game - Santa\'s Room'


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT track_name, rating_count_tot, price
FROM apple.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;
-- did this query to see if the most rated apps are free 
-- the most rated apps are free
SELECT track_name, user_rating, price
FROM apple.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;
-- did this query to see if the users favorites are free
-- the users favorite apps are also free
SELECT track_name, user_rating, price
FROM apple.applestore_windows
ORDER BY user_rating ASC
LIMIT 10;
-- did this query to see if the least favorite apps are free or paid.
-- there are 3 apps in the top 5 least rated by users that are not free.