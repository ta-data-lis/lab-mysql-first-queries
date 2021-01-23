SELECT * FROM apple_data_labs.applestore;

-- 1. Which are the different genres?
Select distinct(prime_genre)
from apple_data_labs.applestore;


-- 2. Which is the genre with more apps rated?
select prime_genre, rating_count_ver
from apple_data_labs.AppleStore
order by rating_count_ver desc
limit 1;

-- 3. Which is the genre with more apps?
select prime_genre, rating_count_tot
from apple_data_labs.AppleStore
order by rating_count_tot desc
limit 1;


 -- 4. Which is the one with less?
select prime_genre, rating_count_tot
from apple_data_labs.AppleStore
order by rating_count_tot asc
limit 1;



-- 5. Take the 10 apps most rated.
select track_name,prime_genre,rating_count_tot
from apple_data_labs.AppleStore
order by rating_count_tot desc
limit 10;

-- 6. Take the 10 apps best rated by users.
Select track_name, prime_genre,user_rating, rating_count_tot
from apple_data_labs.AppleStore
order by user_rating desc
limit 10;


-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
/* From the data retrieved is possible to conclude without surprises that Facebook is the most rated app in apple store, being as influential
as it is in our times it was something expected as well as instagram being the second. To companies from the same powerfull group. The presence
of games genres apps is also natual, also generating more money than the cineme industry for instance.
Something in comum that all apps in the top 10 have is that all are entertainement apps.*/



-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
/*The game industry apps is dominant is the best rated apps having 7 out of 10. A rank with the game "Escape the sweet Shop Series".
In the middle of all games is "KQ MiniSynth" a music app and the 2 others honorable are from educational apps.
These data can loose meaning depending on the point of view because the amount of reviews are quite low. The number one on the rank has been rated
e times only. For better analysis would be better to cut these apps from the results or define a minimun amount of user ratings. */





-- 9. Now compare the data from questions 5 and 6. What do you see?
/* The top 10 of best rated apps is very different from the most rated apps. From best rated apps we notice the absence of the 
social apps such as Facebook and Instagram proving our love/hate relashionship with these genres.
The dominance of the games apps in the most rated is amazing making 7 out of 10 best rated apps.
Although the most rated apps are dominated by powerfull and influencial apps, they are not the best rated apps being these the apps beloging to the gam industry.*/


-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
Select track_name, prime_genre,rating_count_tot,user_rating
from apple_data_labs.AppleStore
order by user_rating desc, rating_count_tot desc
limit 3;


-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

-- This query returns the count of apps that charge a price. This is intend to know the size of the relative sample.
Select count(price)
from apple_data_labs.AppleStore
where price != 0;

-- This qyery returns the total apps in the apple store. This was done to show the absolute amount of apps in the apple store.
Select count(id)
from apple_data_labs.AppleStore;

-- On the 10 most rated apps we can see that there is not a single paid app and we need to go down untill 12th position to see a paid app.
-- Altough doesnt mean anything it could be a indication of lack of volume(downloads).
select track_name,prime_genre,rating_count_tot, price
from apple_data_labs.AppleStore
order by rating_count_tot desc
limit 15;


-- This query shows the distribuition of total apps per price, so that it was possible to understand how the price was related to the amount of ratings.
select count(rating_count_tot) as total_app, price
from apple_data_labs.AppleStore
Group by price
limit 50;


-- This query returns the top 10 best rated apps and also the price of each app.
Select track_name, prime_genre,user_rating,price
from apple_data_labs.AppleStore
order by user_rating desc
limit 10;

-- From the data available we could see that the most rated apps are also the ones that are free or are a low cost.
-- Although the in the top 10 best rated apps mos of them are paid the volume and prices are a good indication that free of at least cheap apps are important to people.
