SELECT * FROM apple_store.store_info;

#**1. Which are the different genres?**
SELECT DISTINCT prime_genre
FROM apple_store.store_info;

#**2. Which is the genre with more apps rated?**
SELECT DISTINCT prime_genre, cont_rating
FROM apple_store.store_info
ORDER BY cont_rating DESC;

SELECT DISTINCT prime_genre, rating_count_tot
FROM apple_store.store_info
ORDER BY rating_count_tot DESC;
#answer: Social Networking

#**3. Which is the genre with more apps?**
SELECT DISTINCT prime_genre, `sup_devices.num`
FROM apple_store.store_info
ORDER BY `sup_devices.num` DESC;
#answer: Education

#**4. Which is the one with less?**
SELECT DISTINCT prime_genre, `sup_devices.num`
FROM apple_store.store_info
ORDER BY `sup_devices.num` ASC;
#answer: Health & Fitness



#**5. Take the 10 apps most rated.*
SELECT DISTINCT track_name, rating_count_tot
FROM apple_store.store_info
ORDER BY rating_count_tot DESC
limit 10;

#**6. Take the 10 apps best rated by users.**
SELECT DISTINCT track_name, user_rating
FROM apple_store.store_info
where track_name is not null
ORDER BY user_rating DESC
limit 10;

SELECT DISTINCT track_name, prime_genre, user_rating 
FROM apple_store.store_info
where apple_store.store_info.track_name not like '%?????%'
ORDER BY user_rating DESC
limit 10;


#**7. Take a look on the data you retrieved in the question 5. Give some insights.**
#Most famous Social Network (FB, IG, Spotify, Pinterest) received more ratings, probably due to having more users than other apps. On game apps, the most rated where
#also, as with social network, the one with a bigger number of users. We can see that most of the most rated apps are the ones available
#in a larger number of languages, which increases the reach.  

#**8. Take a look on the data you retrieved in the question 6. Give some insights.**
#Best rated apps are mainly games and health&fitness apps.

#**9. Now compare the data from questions 5 and 6. What do you see?**
#Most rated apps are not necessarily the best rated, it just means that with more users you will receive more reviews but not necessarily these reviews will be positive.

#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT DISTINCT track_name, rating_count_tot, user_rating
FROM apple_store.store_info
order by rating_count_tot desc
limit 3;

select track_name, max(user_rating), max(rating_count_tot)
from apple_store.store_info
order by user_rating desc
limit 3;

#*11. Does people care about the price?** 
SELECT track_name, max(price), user_rating, max(rating_count_tot)
from apple_store.store_info
order by rating_count_tot desc;
#check the app wich costs the most and has more ratings

SELECT track_name, price, user_rating, rating_count_tot
from apple_store.store_info
order by price desc;
#check number of ratings on the app that has a higher price
#people do seem to care about price. Besides PacMan that is a very classic game, most of the rated apps are either free or have a low price.