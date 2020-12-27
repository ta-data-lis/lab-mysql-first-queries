SELECT * FROM apps.applestore;

#Which are the different genres?
SELECT distinct prime_genre 
from apps.applestore;

#Which is the genre with more apps rated?
SELECT prime_genre, rating_count_tot,rating_count_ver
from apps.applestore
group by prime_genre
order by rating_count_tot desc
limit 1;

#Which is the genre with more apps?
SELECT prime_genre, count(track_name) as 'Number of Apps'
from apps.applestore
group by prime_genre
order by count(track_name) desc
limit 1;

#Which is the one with less?
SELECT prime_genre, count(track_name) as 'Number of Apps'
from apps.applestore
group by prime_genre
order by count(track_name) asc
limit 1;

#Take the 10 apps most rated.
SELECT track_name, prime_genre,rating_count_tot,rating_count_ver,user_rating_ver
from apps.applestore
order by rating_count_tot desc
limit 10;

#Take the 10 apps best rated by users.
#PS: I sorted with average user rating for current version
SELECT track_name,prime_genre,user_rating_ver,user_rating,rating_count_tot
from apps.applestore
order by user_rating_ver desc
limit 10;

#Take a look on the data you retrieved in the question 5. Give some insights.

#- The genre most rated is Games, having 4 apps on the top10.
#- Then Music and Social Netowrking are tied having 2 apps both
#- Number 1 app most rated has 3 times more rates than Number 10


#Take a look on the data you retrieved in the question 6. Give some insights.

#- Genre Games is without a doubt the genre best rated,
#- There is no Social Networking on the top 10 best rated


#Now compare the data from questions 5 and 6. What do you see?
# The best rated apps for current version have very few rating comparing to the most rated
# those having hundreds of thousands rates and the best rated having 
# under 100 the majority

#10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name,user_rating_ver, rating_count_ver
FROM applestore
order by user_rating_ver desc, rating_count_ver desc
limit 3;

#11. Does people care about the price?
SELECT track_name, user_rating_ver, rating_count_ver,price
from applestore
order by price desc, user_rating_ver desc, rating_count_ver desc
limit 10;

SELECT track_name, user_rating_ver, rating_count_ver,price
from applestore
having rating_count_ver > 500
order by price asc, user_rating_ver desc, rating_count_ver desc
limit 10;

SELECT track_name, user_rating_ver, rating_count_ver,price
from applestore
where price between 0 and 20
having rating_count_ver > 500
order by price desc, user_rating_ver desc, rating_count_ver desc
limit 20;


select count(track_name)
from applestore
where user_rating_ver >= 4 and price=0 and rating_count_ver >200;


select count(track_name)
from applestore
where user_rating_ver >= 4 and price between 0.5 and 8 and rating_count_ver >200;


select count(track_name)
from applestore
where user_rating_ver >= 4.5 and price=0 and rating_count_ver >200;


select count(track_name)
from applestore
where user_rating_ver >=4.5 and price between 0.5 and 8 and rating_count_ver >200;


# Yes, people do care about the price. 
#Knowing that i only took in consideration apps with more than 200 ratings,
# 	there is 670 apps with a rating higher or equal than 4.5 with price 0,
#   For apps with price between 0.5€ and 8€ there are only 374.

#




