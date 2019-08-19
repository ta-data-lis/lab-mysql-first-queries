create database mysql_labs;

# Exercise 1
select distinct prime_genre from mysql_labs.AppleStore
order by prime_genre;

# Exercise 2
select distinct prime_genre, sum(rating_count_tot) from mysql_labs.AppleStore
group by prime_genre
order by sum(rating_count_tot) desc;

# Exercise 3
select distinct prime_genre, count(track_name) from mysql_labs.AppleStore
group by prime_genre
order by count(track_name) desc
limit 1;

# Exercise 4
select distinct prime_genre, count(track_name) from mysql_labs.AppleStore
group by prime_genre
order by count(track_name) asc
limit 1;

# Exercise 5
select distinct track_name, rating_count_tot from mysql_labs.AppleStore
order by rating_count_tot desc
limit 10;

# Exercise 6 - To make it more representive, of the apps with best rating I show the ones that have the highest amount
# of ratings because so many apps have the maximum amount of rating points.
select distinct track_name, user_rating, rating_count_tot from mysql_labs.AppleStore
#where rating_count_tot > 1
order by user_rating desc, rating_count_tot desc
limit 10;

# Exercise 7
# The by far most rated apps are the social media apps facebook and instagram. This indicates that
# these apps are the most used ones. Beyond that the most rated apps are mostly games.

#Exercise 8
# Of the apps with best rating (in my case also ordered by highest ratings) almost all are games. I don't know how
# domino's got a rating of 5... their pizza is really not good enough to rate their app that high.

# Exercise 9
# None of the apps with the maximum rating made it into the top 10 of highest ratings and vice versa respectively. 

# Exercise 10 - Basically what I've done already but only with three in this case.
select distinct track_name, user_rating, rating_count_tot from mysql_labs.AppleStore
order by user_rating desc, rating_count_tot desc
limit 3;

# Exercise 11
select distinct track_name, user_rating, rating_count_tot, price from mysql_labs.AppleStore
#where price > 0 and user_rating > 4 and rating_count_tot > 250000
order by user_rating desc, rating_count_tot desc
limit 15;
# Of the 15 apps with highest rating counts that have the maximum rating, two thirds are for free and only one is more
# expensive than a dollar. This suggests that freeware 'sells' better.  

select distinct track_name, rating_count_tot, price from mysql_labs.AppleStore
#where price > 0 and rating_count_tot > 250000
order by rating_count_tot desc
limit 10;
# The ten most rated apps are all for free. Considering that the amount of ratings corresponds 
# to the amount of downloads this suggests that free apps are way more commonly downloaded and used

# It can be concluded that it is way more likely for an app to go viral and to become popular if it
# is either free or at least not more expensive than a dollar.
