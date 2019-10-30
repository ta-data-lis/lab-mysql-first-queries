1.
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

SELECT DISTINCT prime_genre
FROM applestore;


2. Games = 52630139

SELECT prime_genre, sum(rating_count_tot)
FROM applestore
GROUP BY prime_genre 
ORDER BY sum(rating_count_tot) DESC
LIMIT 1;


3. Games = 3808

SELECT prime_genre, COUNT(prime_genre)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
LIMIT 1;


4. Catalogs = 10

SELECT prime_genre, COUNT(prime_genre)
FROM applestore
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
LIMIT 1;


5. 

Facebook = 2974676
Instagram = 2161558
Clash of Clans = 2130805
Temple Run = 1724546
Pandora - Music & Radio = 1126879
Pinterest = 1061624
Bible = 985920
Candy Crush Saga = 961794
Spotify Music = 878563
Angry Birds = 824451

SELECT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;


6. 

:) Sudoku + = 5
King of Dragon Pass = 5
TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF = 5
Plants vs. Zombies = 5
Learn to Speak Spanish Fast With MosaLingua = 5
Plants vs. Zombies HD = 5
The Photographer's Ephemeris = 5
▻Sudoku + = 5
Flashlight Ⓞ = 5
Infinity Blade = 5

SELECT track_name, user_rating
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;


7. It displays the apps from the store which were most rated by the users, not caring for the amount of 'stars' given by the users.

8. It displays the apps from the store which received the highest ratings by the users, from 0 to 5 'stars', not caring for the number of times the users rated them.

9. No apps are both in the top 10 rating and the top 10 most rated. It's important to compare the rating of the app with the amount of times it was rated, to efficiently measure the apps 'success'. If an app has a high rating, but it was rated by very few people, it doesn't really mean it's a good app. It seems that it is 'easier' to please fewer people.

SELECT track_name, rating_count_tot, user_rating
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot
FROM applestore
ORDER BY user_rating DESC
LIMIT 10;


10. 

Head Soccer = 5 = 481564
Plants vs. Zombies = 5 = 426463
Sniper 3D Assassin: Shoot to Kill Gun Game = 5 = 386521

SELECT track_name, user_rating, rating_count_tot
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

11. People care about price.

First I examined the top 15 rated apps that where also most rated, where I found out that they were mostly free or less then $2.00 apps.

SELECT track_name, user_rating, rating_count_tot, price
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 15;

Then I calculated the sum of those ratings, which totalled: 3796756

SELECT SUM(rating_count_tot)
FROM (SELECT track_name, user_rating, rating_count_tot, price
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 15)
AS Total;

Second I examined the 15 most expensive apps, and found that none of them were games, and were more related to productivity and education, and less related with entertainment. 

SELECT track_name, user_rating, rating_count_tot, price, prime_genre
FROM applestore
ORDER BY price DESC, user_rating DESC, rating_count_tot DESC
LIMIT 15;

Then I calculated the sum of those ratings, which totalled: 6023

SELECT sum(rating_count_tot)
FROM (SELECT track_name, user_rating, rating_count_tot, price, prime_genre
FROM applestore
ORDER BY price DESC, user_rating DESC, rating_count_tot DESC
LIMIT 15)
AS Total;

Comparing the total ratings from the top 15 high rated / most rated apps with the total ratings from the 15 most expensive apps, I noticed that the top 15 high rated / most rated where more than 3000000 more rated by the users, which probably means they were download more frequently and had more users.

Lastly, I examined the least priced apps, to check the ratings and ratings count.

SELECT track_name, user_rating, rating_count_tot, price
FROM applestore
ORDER BY price ASC, user_rating DESC, rating_count_tot DESC
LIMIT 15;