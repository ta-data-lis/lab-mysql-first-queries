**1. Which are the different genres?**
Games Productivity Weather Shopping Reference Finance Music Utilities Travel Social Networking Sports Business Health & Fitness Entertainment Photo & Video Navigation Education Lifestyle Food & Drink News Book Medical Catalogs

**2. Which is the genre with more apps rated?**
Social Networking with a total rating count of 2.974.676

**3. Which is the genre with more apps?**
Games with a total of 3808 apps.

**4. Which is the one with less?**
Catalogs with 10 apps.

**5. Take the 10 apps most rated.**
Facebook 2.974.676 
Instagram 2.161.558 
Clash of Clans 2.130.805 
Temple Run 1.724.546 
Pandora - Music & Radio 1.126.879 
Pinterest 1.061.624 
Bible 985.920 
Candy Crush Saga 961.794 
Spotify Music 878.563 
Angry Birds 824.451

**6. Take the 10 apps best rated by users.**
PewDiePie: Legend of the Brofist 5 
OPUS: The Day We Found Earth 5 
Fitbod Workout Log: Strength Lifting Bodybuilding 5
??????MT3-????????????????????? ???????????????????????? 5 
Halloween Makeover: Spa, Makeup & Dressup Salon 5 
BlockyTime - Track your time no need to Start/Stop 5 
SenseSleep - Train Your Brain To Sleep Better 5 
[the Sequence] 5 
Color??????????????? 5 
Analog London 5

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
There is a difference of more than 2 million reviews from the top most rated, Facebook to the bottom, Angry Birds

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
We can get different results multiple times with this one since there are a lot more games with a solid 5

**9. Now compare the data from questions 5 and 6. What do you see?**
More ratings does not equal best rating, as tnone of the apops cross
Facebook 2974676 3.5 
Instagram 2161558 4.5 
Clash of Clans 2130805 4.5 
Temple Run 1724546 4.5 
Pandora - Music & Radio 1126879 4 
Pinterest 1061624 4.5 
Bible 985920 4.5 
Candy Crush Saga 961794 4.5 
Spotify Music 878563 4.5 
Angry Birds 824451 4.5

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name, user_rating, rating_count_tot FROM lab1.applestore_windows GROUP BY track_name ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 3;

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT price, user_rating FROM lab1.applestore_windows GROUP BY price ORDER BY price DESC, user_rating DESC; 

SELECT price, user_rating, rating_count_tot FROM lab1.applestore_windows GROUP BY price ORDER BY user_rating DESC, price DESC;

SELECT rating_count_tot, price, user_rating FROM lab1.applestore_windows GROUP BY price ORDER BY rating_count_tot DESC, price DESC;

SELECT price, user_rating, rating_count_tot FROM lab1.applestore_windows GROUP BY price ORDER BY price DESC, user_rating DESC;

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
