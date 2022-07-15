
-- Watch the entire data

SELECT *
FROM apple.applestore_windows;



-- Question 1

SELECT DISTINCT prime_genre
FROM apple.applestore_windows;

-- Answer 1 -- Games, Productivity, Weather, Shopping, Reference, Finance, Music, Utilities, Travel, Social Networking, Sports, Business, Health & Fitness, Entertainment, Photo & Video, Navigation, Education, Lifestyle, Food & Drink, News, Book, Medical, Catalogs




-- Question 2

SELECT prime_genre,sum(rating_count_tot) AS Number_of_rates
FROM apple.applestore_windows
GROUP BY prime_genre;

-- Answer 2 - Games with 52630139 rating counters




-- Question 3

SELECT prime_genre,count(*) AS Number_of_apps
FROM apple.applestore_windows
GROUP BY prime_genre;

-- Answer 3 - Games with 3808 apps




-- Question 4

SELECT prime_genre,count(*) AS Number_of_apps
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY count(*) ASC
LIMIT 1;

-- Answer 4 - Catalogs with 10 apps





-- Question 5

SELECT track_name, sum(rating_count_tot) as Number_of_ratings
FROM apple.applestore_windows
GROUP BY track_name
ORDER BY sum(rating_count_tot) DESC
LIMIT 10;

-- Answer 5 - Facebook, Instagram, Clash of Clans, Temple Run, Pandora - Music & Radio, Pinterest, Bible, Candy Crush Saga, Spotify Music, Angry Birds







-- Question 6

SELECT track_name,user_rating
FROM apple.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

-- Answer 6 - 'Escape the Sweet Shop Series',Laurie Hernandez the Human Emoji, The Very Hungry Caterpillar??? ??? Shapes & Colors, Room Escape Game - Santa's Room, CTFxCmoji, 4x4 Dirt Track Trials Forest Driving Parking Sim, VPN Go - Safe Fast & Stable VPN Proxy, Stickman Base Jumper 2, DELISH KITCHEN - ????????????????????????????????????, ??????????????? KOTATSU






-- Question 7

-- Answer 7 - 10 most rated apps correspond to the most common apps that users tend to have in their phones



-- Question 8

-- Answer 8 - 10 best rated apps are apps with extremly low user numbers, only a very specific type of users download this apps, which makes the rates very biased







-- Question 9

-- Answer 9 -  The difference between datas is the number of ratings and number of users. 





-- Question 10

SELECT track_name,user_rating,rating_count_tot
FROM apple.applestore_windows
ORDER BY  user_rating DESC, rating_count_tot DESC 
LIMIT 3;

-- Answer 10 - Head Soccer,Plants vs. Zombies,Sniper 3D Assassin: Shoot to Kill Gun Game





-- Question 11

SELECT track_name,price,rating_count_tot,user_rating
FROM apple.applestore_windows
ORDER BY rating_count_tot DESC;

SELECT track_name,price,rating_count_tot,user_rating
FROM apple.applestore_windows
ORDER BY price DESC;

SELECT track_name,price,rating_count_tot,user_rating
FROM apple.applestore_windows
ORDER BY price ASC, rating_count_tot DESC;


-- Yes, peolpe care about price. The most expensive apps tend to have low to none users. Unlike free apps, that tend to have the most users. The most used apps tend to be free.
-- This way we can conclude that price is a very important factor to have in consideration