SELECT * FROM applestore.applestore;

#**1. Which are the different genres?**
select distinct prime_genre from applestore.applestore;

#**2. Which is the genre with more apps rated?**
select distinct prime_genre, count(prime_genre)
from applestore.applestore
where rating_count_tot != 0
group by prime_genre;
 
 #Or since I can't understand what the exercise asks i also have this solution
SELECT distinct prime_genre, sum(rating_count_tot)
FROM applestore.applestore
group by prime_genre;

#**3. Which is the genre with more apps?**
select distinct prime_genre, count(prime_genre) as more_apps
from applestore.applestore
group by prime_genre
order by more_apps desc;

#**4. Which is the one with less?**
select distinct prime_genre, count(prime_genre) as less_apps
from applestore.applestore
group by prime_genre
order by less_apps asc;

#**5. Take the 10 apps most rated.**
select track_name, rating_count_tot, prime_genre from applestore.applestore
order by rating_count_tot desc
limit 10;

#**6. Take the 10 apps best rated by users.**
select track_name, user_rating, user_rating_ver, rating_count_tot, prime_genre from applestore.applestore
order by user_rating desc , user_rating_ver desc, rating_count_tot desc
limit 10;

#**7. Take a look on the data you retrieved in the question 5. Give some insights.**
# As we can see the app with the most votes is Facebook following that is instagram and clash of clans
# We can also see that this leaderboard as 4 Games, 2 social Networking Apps (possibly 3 with instagram), 2 Music Apps and 1 Reference
# with that in mind we can see that are the games that dominate the market with user/share

#**8. Take a look on the data you retrieved in the question 6. Give some insights.**
#Once again we can see tha most of the apps that has the best reviews and most rating counts are games, we have on the leaderboard 7 game apps, 1 photo and video, 1 shopping and 1 finace 

#**9. Now compare the data from questions 5 and 6. What do you see?** 
#I can see that there is not one commun app that has the best review and highest ratings
#We can see that games dominate both queries 

#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
#as I have done in exercise 6 we Can see the top 3 regarding this are Head Soccer, Sniper 3D Assassin: Shoot to Kill Gun Game and Infinity Blade
# all 3 are games 

#**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
#Querie n1
select track_name, user_rating, user_rating_ver, rating_count_tot, prime_genre, price from applestore.applestore
order by user_rating desc , user_rating_ver desc, rating_count_tot desc
limit 100;
#Querie n2 
select track_name, user_rating, user_rating_ver, rating_count_tot, prime_genre, price from applestore.applestore
where rating_count_tot != 0
order by price desc, user_rating desc , user_rating_ver desc, rating_count_tot desc
limit 100;

# By the queries i have done we can see that if games has a high price, user dont tend to review them and most likely not purchase them, as we can see the last query i have done.
# We can see on querie n2 that education, productivity, music and bussiness has the most expensive apps with reviews, most likely working apps
# when prices are higher we can see less people purchasing, even more when the genre is games 

















 



