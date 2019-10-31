##1. Which are the different genres?
select distinct prime_genre
from AppleStore;

##2. Which is the genre with more apps rated?
select prime_genre, count(user_rating)
from AppleStore
group by prime_genre;

##3. Which is the genre with more apps?
##4. Which is the one with less?
select prime_genre, count(prime_genre) as number_apps
from AppleStore
group by prime_genre
order by number_apps desc;

##5. Take the 10 apps most rated.
##7. Take a look on the data you retrieved in the question 5. Give some insights.
select track_name, rating_count_tot, prime_genre
from AppleStore
order by rating_count_tot desc
limit 10;

##6. Take the 10 apps best rated by users.
##8. Take a look on the data you retrieved in the question 6. Give some insights.
select track_name, user_rating, prime_genre
from AppleStore
order by user_rating desc
limit 10;


#10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name, user_rating, rating_count_tot, prime_genre
from AppleStore
order by user_rating desc,rating_count_tot desc
limit 3;


##11. Does people care about the price?

##Since it could be assumed that total number of ratings is a good proxy for the number of downloads,
##it is imteresting to compare the results of Query at quesiton 5 with the top 10 most expensive Apps;
##also keeping the genre in order to check on which cathergory of Apps
##people are more prone to spend.
select track_name, rating_count_tot, prime_genre, price
from AppleStore
where price > 0
order by price desc
limit 10;

##Then it could be checked how this varies if checking the top 10 most popupar, non-free Apps
select track_name, rating_count_tot, prime_genre, price
from AppleStore
where price > 0
order by rating_count_tot desc
limit 10;

##Then it could be investigated what are the most expensive 10 Apps with a significant number of proxy users
## (ex: 100000)  to verify that actually the trend above is confirmed.
select track_name, rating_count_tot, prime_genre, price
from AppleStore
where rating_count_tot > 100000
order by price desc
limit 10;

##Finally it could be interesting to see, in which cathegories of Apps people tend to spend the most
##on average and the associated average number of estimated users:
select prime_genre, avg(rating_count_tot) as avg_ratings, avg(price) as avg_price 
from AppleStore
where price > 0
group by prime_genre
order by avg_price desc
limit 10;