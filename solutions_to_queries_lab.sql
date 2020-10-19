#1
select prime_genre
from applestore
group by prime_genre;

#2
select prime_genre, avg(rating_count_tot) as avg_rating_count
from applestore
group by prime_genre
order by avg_rating_count desc
limit 1;

#3
select prime_genre, count(prime_genre)
from applestore
group by prime_genre
order by count(prime_genre) desc
limit 1;

#4
select prime_genre, count(prime_genre)
from applestore
group by prime_genre
order by count(prime_genre) asc
limit 1;

#5
select track_name as App, rating_count_tot as total_rating
from applestore
order by total_rating desc
limit 10;

#6
select track_name as App, user_rating 
from applestore
order by user_rating desc
limit 10;

#7
#Here it seems that facebook has the most number of ratings
#followed by instagram. The last of the 10 is angry birds.
#It seems as though social media and games dominate this category


#8
#Here it seems that the highest rated are all 5 star and therefore
#cannot be distinguished from eachother as they are all have the max rating

#9
#None of the apps in these lists are in common. This implies
#that the highest rated apps are probably those with very few reviews
#, so essentially the apps with 1 five star review are coming up as top of the list. This isn't entirely useful.

#10
#We can instead use the total_rating_count and user rating to order the list, as this takes into account both rating and no of ratings
select track_name as App, rating_count_tot, user_rating
from applestore
order by user_rating desc, rating_count_tot desc
limit 10;

#11

#first i am comparing the price of each app with
#the average number of ratings ordered by price to determine if there is a link between popularity
#and price. Then i order it by ratingand look at the prices
select track_name as App, price, rating_count_tot
from applestore
order by price desc
limit 20;

select track_name as App, price, rating_count_tot
from applestore
order by rating_count_tot desc
limit 20;

#I do the same process again here, but i instead use the sorting tool from 
#question 10 to get a better indication of popularity connected with price

select track_name as App, price, user_rating, rating_count_tot
from applestore
order by price desc
limit 20;

select track_name as App, price, user_rating, rating_count_tot
from applestore
order by user_rating desc, rating_count_tot desc
limit 20;

#Looking at all these figures it is fairly conlusive that cheaper apps tend to be more popular,
#and more expensive apps,less popular, as none of the most expensive apps are also the most popular and vice-versa