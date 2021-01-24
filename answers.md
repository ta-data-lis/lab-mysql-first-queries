**1. Which are the different genres?**
Games
Productivity
Weather
Shopping
Reference
Finance
Music
Utilities
Travel
Social Networking
Sports
Business
Health & Fitness
Entertainment
Photo & Video
Navigation
Education
Lifestyle
Food & Drink
News
Book
Medical
Catalogs

**2. Which is the genre with more apps rated?**
Games	52630139

**3. Which is the genre with more apps?**
Games	3808

**4. Which is the one with less?**
Catalogs	10

**5. Take the 10 apps most rated.**
Games	52630139
Social Networking	7598316
Photo & Video	5008946
Entertainment	4030518
Music	3980199
Shopping	2271070
Health & Fitness	1784371
Utilities	1702228
Sports	1599070
Weather	1597034

**6. Take the 10 apps best rated by users.**
Color•多彩手帐	5
Egg, Inc.	5
Super Sharp	5
街机格斗王	5
Pan Book 3: Key to the Capitol	5
parkOmator – for Apple Watch meter expiration timer, notifications & GPS navigator to car location	5
Dungeons of Chaos UNITY EDITION	5
Video Smith - A Powerful video editing tool set	5
The 7 Second Challenge	5
Mon Espace - Pôle emploi	5

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
By far, Games is the genre that most people use while they are on their phones folowed by social networking. 
With this info we can assume that creating a game could be for a phone could be a good investment.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
With this data we can see that a lot of games take place in this table. Like in question 7 we can assume that investing in a good game could be a good interest.

**9. Now compare the data from questions 5 and 6. What do you see?**
We can see that games is a good genre to make an investment.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name, user_rating, rating_count_tot AS number_votes, prime_genre
FROM applestore.applestore
WHERE user_rating = 5
ORDER BY number_votes DESC
LIMIT 3;

RESULT:
Head Soccer	5	481564
Plants vs. Zombies	5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	386521

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
QUERY:
SELECT price, currency, sum(rating_count_tot)
FROM applestore.applestore
GROUP BY price
ORDER BY sum(rating_count_tot) DESC
LIMIT 10;

COMMENTS:
This query was made to retrieve the number of ratings each price tag has in the applestore.
It was limited by the first 10 rows to see if there where any expensive price tag at the top of the table.

CONCLUSION:
People care about the price. As we can see in the table that was created all the 10 prices that had the most ratings are below 10 USD.
So we can assume that the cheapest apps are the ones that create more traffic in the Apple Store.
