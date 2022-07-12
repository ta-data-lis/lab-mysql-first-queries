# **MySQL First Queries - Lab**

## Ironhack Data Analytics Bootcamp - July 2022
## **Week 2**
<br>

**Answers:**
<br><br>

1. **Which are the different genres?**

    >Games,
    Productivity,
    Weather,
    Shopping,
    Reference,
    Finance,
    Music,
    Utilities,
    Travel,
    Social Networking,
    Sports,
    Business,
    Health & Fitness,
    Entertainment,
    Photo & Video,
    Navigation,
    Education,
    Lifestyle,
    Food & Drink,
    News,
    Book,
    Medical and
    Catalogs.

2. **Which is the genre with more apps rated?**

    >Social Networking.

3. **Which is the genre with more apps?**

    > The genre with more apps is *Games*, with	3808 apps.

4. **Which is the one with less?**

    > The genre with less apps is *Catalogs*, with	10 apps.

5. **Take the 10 apps most rated.**

   > 1. Mr. Robot:1.51exfiltrati0n.ipa
   > 2. Batman - The Telltale Series
   > 3. Hillarymoji
   > 4. EMOJIZI BOOBA
   > 5. VR Horror Maze Walk :Horror Fever For VR Cardboard
   > 6. Web Browser Recorder Pro
   > 7. Slots of Vegas - Play Free Casino slot machines!
   > 8. FeedNews: AI curated social news for productivity
   > 9. Dr. Oz
   > 10. Golden Lotus Slots

6. **Take the 10 apps best rated by users.**

    > 1. Bullet Hell Monday
    > 2. Alternative Girls
    > 3. Highlights Monster Day
    > 4. Dierks Bentley Lyric Keyboard + Emojis	
    > 5. Hidden my game by mom - escape room	
    > 6. Grumpy Cat's Worst Game Ever
    > 7. The interactive Legend of Sleepy Hollow: iIrving
    > 8. Escape the Sweet Shop Series	
    > 9. Frantic Ball	
    > 10. Escape Game: Forgotten	

7. **Take a look on the data you retrieved in the question 5. Give some insights.**
    >The most rated item is an episode of Mr. Robot, and 4 out of 10 of the most rated apps are games. Taking into consideration the whole list, there is no apparent relationship between the items.

8. **Take a look on the data you retrieved in the question 6. Give some insights.**
    >8 out of 10 are games, which makes sense because this genre is the one with the most apps in the catalog. Also, popular games are most likely to have a highly engaged and strong community around them.
9. **Now compare the data from questions 5 and 6. What do you see?**
    >Most rated does not necessarily imply highest rated; none of the items on one list are repeated on the other. For example, the rating can increase if the publishers release a version with a bug. More people will be drawn to write a bad review complaining about that bug. In this case, the number of ratings rises while the score falls.
10. **How could you take the top 3 regarding the user ratings but also the number of votes?**

    >By adding an ORDER BY clause with the user ratings and the number of votes.
    <br> `ORDER BY user_rating DESC, cont_rating DESC`
    ><br>The Top 3 most and best rated items of the catalog are: *Despicable Bear - Top Beat Action Game*, *Bar Oasis 2 Aftertaste 01* and *Akuarella*.

11. **Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?**
    >There are 7142 apps in the database. Free apps represent more than 50% of the catalog (4049 apps), and 3093 apps have prices from $0.99 to $249,99.

    >The most common price for an app is $0.99, and the higher the price, the fewer apps are available. The number of apps drops dramatically from $9,99.

    >People do care about the price, as is reflected in the number of free apps in the catalog. The second most popular group, by a big difference, are the paid apps with the lowest price, $0.99. Therefore, free and low-priced apps are more oriented to a broad audience, while high-priced apps are usually niche and more oriented to a specific audience.