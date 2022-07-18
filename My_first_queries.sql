-- Lab | My first queries --


-- Q1 --
SELECT DISTINCT prime_genre
FROM Lab1.applestore_windows;

/* Answer:
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
'Catalogs' */


-- Q2 --

SELECT prime_genre, SUM(rating_count_tot) as total_ratings
FROM Lab1.applestore_windows
GROUP BY prime_genre
ORDER BY total_ratings DESC
LIMIT 10;

 -- Answer: Games: 52630139 -- 


-- Q3 -- 

SELECT prime_genre, COUNT(*) AS num_apps
FROM Lab1.applestore_windows
GROUP BY prime_genre
ORDER BY num_apps DESC
LIMIT 1;

-- Answer: Games: 3808 -- 

-- Q4 -- 

SELECT prime_genre, COUNT(*) AS num_apps
FROM Lab1.applestore_windows
GROUP BY prime_genre
ORDER BY num_apps ASC
LIMIT 1;

-- Answer: Catalogs - 10 --

-- Q5 --

SELECT track_name, rating_count_tot
FROM Lab1.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;


/* Answer:
'Facebook','2974676'
'Instagram','2161558'
'Clash of Clans','2130805'
'Temple Run','1724546'
'Pandora - Music & Radio','1126879'
'Pinterest','1061624'
'Bible','985920'
'Candy Crush Saga','961794'
'Spotify Music','878563'
'Angry Birds','824451' */ 


-- Q6 --

SELECT track_name, user_rating
FROM Lab1.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

/* Answer:
'Escape the Sweet Shop Series','5'
'Laurie Hernandez the Human Emoji','5'
'The Very Hungry Caterpillar??? ??? Shapes & Colors','5'
'Room Escape Game - Santa\'s Room','5'
'CTFxCmoji','5'
'4x4 Dirt Track Trials Forest Driving Parking Sim','5'
'VPN Go - Safe Fast & Stable VPN Proxy','5'
'Stickman Base Jumper 2','5'
'DELISH KITCHEN - ????????????????????????????????????','5'
'??????????????? KOTATSU','5' */

-- Q7 --

/* Answer:
The top 10 most rated apps is easy to find, and we get a clear answer with that query.
We are counting the number of ratings so we have a revealing number for each of the top 10 most 
rated apps. /*


-- Q8 --

/* Answer: Here we get a set of apps based only on the user rating, whose max value goes up to 5.
Many other apps with rating 5 don't show because we filtered for 10 only. 
Also the query doesn't take into account the number of total ratings, so we can't draw any good insights from this query.
 */
 
 -- Q9 -- 
 
 -- All apps are different --
 
 
-- Q10 -- 

SELECT track_name, user_rating, rating_count_tot as total_ratings 
FROM Lab1.applestore_windows
ORDER BY user_rating DESC, total_ratings DESC
LIMIT 3;
 
 /* Answer:
'Head Soccer','5','481564'
'Plants vs. Zombies','5','426463'
'Sniper 3D Assassin: Shoot to Kill Gun Game','5','386521' */

-- Q11 --  11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT AVG(price)  -- Calculating the average price of all games --
FROM Lab1.applestore_windows;

SELECT track_name, rating_count_tot -- filtering the games where price is above average, then ordering by rating_count_tot,
FROM Lab1.applestore_windows		-- which I think is the only indicator of how popular an app is --
WHERE price > (SELECT AVG(price) 
FROM Lab1.applestore_windows)
ORDER BY rating_count_tot DESC;

SELECT track_name, rating_count_tot -- filtering the games where price is below average, then ordering by rating_count_tot --
FROM Lab1.applestore_windows
WHERE price < (SELECT AVG(price) 
FROM Lab1.applestore_windows)
ORDER BY rating_count_tot DESC;
 
/* If we compare both queries, the numbers tell us that the cheap/free most rated apps are downloaded a lot more times 
than the most rated apps that cost money. We are not considering many other factors, like why companies might make these 
hugely popular apps free in the first place \*



