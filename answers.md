![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

**2. Which is the genre with more apps rated?**

**3. Which is the genre with more apps?**

**4. Which is the one with less?**

**5. Take the 10 apps most rated.**

**6. Take the 10 apps best rated by users.**

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

**9. Now compare the data from questions 5 and 6. What do you see?**

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

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






## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
