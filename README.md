![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
Answer -->> 
Weather
Utilities
Travel
Sports
Social Networking
Shopping
Reference
Productivity
Photo & Video
News
Navigation
Music
Medical
Lifestyle
Health & Fitness
Games
Food & Drink
Finance
Entertainment
Education
Catalogs
Business
Book

**2. Which is the genre with more apps rated?**
Answer ->>
        prime_genre, total_rating
        'Games', '52630139'

**3. Which is the genre with more apps?**
Answer ->>
    prime_genre, app_count
    'Games', '3808'

**4. Which is the one with less?**
Answer ->>
   prime_genre, COUNT(track_name)
        'Catalogs', '10'

**5. Take the 10 apps most rated.**
Answer ->>
    # track_name, total_rating
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
Answer ->> 
     track_name, user_rating
    'LINE Moments - Capture Your Fun Moments', '5'
    'Cafe Story - Play Cooking & Farming Game', '5'
    'Grumpy Cat\'s Worst Game Ever', '5'
    'Fitness Sync for Fitbit to Apple Health', '5'
    'Stickman Base Jumper 2', '5'
    'Dungeons of Chaos UNITY EDITION', '5'
    'DELISH KITCHEN - ????????????????????????????????????', '5'
    '????????????IV:????????????', '5'
    'LINE RUSH !', '5'
    'Able Black', '5'


**7. Take a look on the data you retrieved in the question 5. Give some insights.**

 ->> among the top 10 most rated apps, 4 arefrom genre games,  2 from social networking, 2 from music.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

-->> From the retreived data it can say that, games is the one genre that has been rated best by users counting 5 among 10.

**9. Now compare the data from questions 5 and 6. What do you see?**

 If we compare both resulted data that the most rated and best rated genre is games. 
However to reach in that conclusion we need to study more deeply and test the sample size of the ratings number for best rated part of resutl since we dont have common track-name in the both result. The best rated data can be 5 because of small number of ratings sample which might not be sufficient to draw conclusion.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

    track_name, user_rating, total_rating
    'Head Soccer', '5', '481564'
    'Plants vs. Zombies', '5', '426463'
    'Sniper 3D Assassin: Shoot to Kill Gun Game', '5', '386521'
    
**11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?**
->> Answer
# First query with apps with higher price on descending order
     track_name, price, total_rating, user_rating
    'LAMP Words For Life', '299.99', '41', '4'
    'Proloquo2Go - Symbol-based AAC', '249.99', '773', '4'
    'KNFB Reader', '99.99', '71', '4.5'
    'NAVIGON Europe', '74.99', '927', '3.5'
    'Articulation Station Pro', '59.99', '294', '4.5'
    'FineScanner Pro - PDF Document Scanner App + OCR', '59.99', '100', '4'
    'Articulation Test Center Pro', '59.99', '29', '4.5'
    'Cubasis 2 - Mobile Music Creation System', '49.99', '297', '4'
    'VPN Pro | Lifetime Proxy & Best VPN by Betternet', '49.99', '207', '4.5'
    '??????????????????????????????????????????4???????????????????????????3??????', '47.99', '0', '0'
    'KORG Gadget', '39.99', '1297', '4.5'
    'KORG Module', '39.99', '201', '4'
    'Anatomy & Physiology: Body Structures and Function', '34.99', '49', '4.5'
    'Astropad Standard', '29.99', '1439', '4.5'
    'Extreme Landings Pro', '29.99', '647', '4.5'
    'KORG iM1', '29.99', '338', '4.5'
    'Model 15', '29.99', '298', '5'
    'ARP ODYSSEi', '29.99', '110', '4.5'
    'KORG iWAVESTATION', '29.99', '47', '4.5'
    '?????????-??????????????????(VIP???)', '27.99', '1', '4'


# Second query with apps with lower price on descending order. 

'The Weather Channel: Forecast, Radar & Alerts', '0', '495626', '3.5'
'Temple Run', '0', '1724546', '4.5'
'Subway Surfers', '0', '706110', '4.5'
'Spotify Music', '0', '878563', '4.5'
'Solitaire', '0', '679055', '4.5'
'Pinterest', '0', '1061624', '4.5'
'Pandora - Music & Radio', '0', '1126879', '4'
'PAC-MAN', '0', '508808', '3'
'Instagram', '0', '2161558', '4.5'
'Injustice: Gods Among Us', '0', '612532', '4.5'
'Hay Day', '0', '567344', '4.5'
'Facebook', '0', '2974676', '3.5'
'DragonVale', '0', '503230', '4.5'
'CSR Racing', '0', '677247', '4.5'
'Crossy Road - Endless Arcade Hopper', '0', '669079', '4.5'
'Clash of Clans', '0', '2130805', '4.5'
'Candy Crush Saga', '0', '961794', '4.5'
'Calorie Counter & Diet Tracker by MyFitnessPal', '0', '507706', '4.5'
'Bible', '0', '985920', '4.5'
'Angry Birds', '0', '824451', '4.5'


->> If we compare the result of free genre and genre with price, we can see similar pattern in the average user rating, still there is mhch variation in free genre. However we can see drastic difference in total rating count. This data shows that the more expensive the track the less likely to used by the user and also less review. While saying that, we also need to study about the track usability of user and their personal preferences. For example some track are for specific purpose and can only used by specific target customer while on the other hand track like Facebook and Instagram has widely used by almost every people.  


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
