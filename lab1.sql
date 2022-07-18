SELECT DISTINCT applestore_windows.prime_genre
FROM labs_week2.applestore_windows;

SELECT prime_genre, SUM(rating_count_tot) as total_ratings
FROM labs_week2.applestore_windows
GROUP BY prime_genre
ORDER BY total_ratings DESC
LIMIT 10;

SELECT prime_genre, COUNT(*) AS Genre_Apps
FROM labs_week2.applestore_windows
GROUP BY prime_genre
ORDER BY Genre_Apps DESC
LIMIT 1;

SELECT prime_genre, COUNT(*) AS Genre_Apps
FROM labs_week2.applestore_windows
GROUP BY prime_genre
ORDER BY Genre_Apps ASC
LIMIT 1;

SELECT track_name, rating_count_tot
FROM labs_week2.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating
FROM labs_week2.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;

#7. Top 10 most rated apps dominated by the most popular social media, game and music streaming apps

#8. Difficult to take much valuable information from only this ass many apps have the top rating but from this alone we cannot tell if its valuable as
#we do not know how many people rated it, for example there could be apps that have only been voted once and given a 5 so they would have the top mark

SELECT track_name, rating_count_tot, user_rating
FROM labs_week2.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;
#9 because so many people rated the most popular apps , as they sometimes have some negative ratings from users they do not have top marks but as we see below..
SELECT track_name, rating_count_tot, user_rating
FROM labs_week2.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;
#...the top 10 rated apps have very little amount of ratings with the number one only having one rating

SELECT applestore_windows.track_name, applestore_windows.rating_count_tot, applestore_windows.user_rating
FROM labs_week2.applestore_windows
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3;

-- 11. Answer:
SELECT AVG(price)  
FROM labs_week2.applestore_windows;
SELECT track_name, rating_count_tot 
FROM labs_week2.applestore_windows		
WHERE price > (SELECT AVG(price)
FROM labs_week2.applestore_windows)
ORDER BY rating_count_tot DESC;
SELECT track_name, rating_count_tot
FROM labs_week2.applestore_windows
WHERE price < (SELECT AVG(price)
FROM labs_week2.applestore_windows)
ORDER BY rating_count_tot DESC;

-- We can see that the cheaper apps are dowloaded more times
-- this does not neccesseraly mean the reason why they are more downloaded is because they are cheaper, it could be becuase they are more popular