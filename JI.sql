/*1. Which are the different genres?*/
select distinct(prime_genre)
from sql_lab.applestore;

/*2. Which is the genre with more apps rated?*/
select prime_genre, sum(rating_count_tot) as sum_ratings
from sql_lab.applestore
group by prime_genre
order by sum_ratings desc
limit 1;

/*3. Which is the genre with more apps?*/
select prime_genre, count(distinct(id)) as more_apps
from sql_lab.applestore
group by prime_genre
order by more_apps desc
limit 1;

/*4. Which is the one with less?*/
select prime_genre, count(distinct(id)) as more_apps
from sql_lab.applestore
group by prime_genre
order by more_apps asc
limit 1;

/*5. Take the 10 apps most rated.*/
select track_name, rating_count_tot as ratings
from sql_lab.applestore
order by ratings desc
limit 10;

/*6. Take the 10 apps best rated by users.*/
select track_name, user_rating as ratings, rating_count_tot as votes
from sql_lab.applestore
order by ratings desc, votes desc
limit 10;

/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/*Facebook is the app with most votes with where the genre moslty voted in the Top10 are Games*/ 

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/* In order to have a more relevant insight more then querying the user ratins I've also queried the rating _count.
Overall the Top 10 is dominated with Games with Dominos being the outsider.*/

/*9. Now compare the data from questions 5 and 6. What do you see?*/
/* There is not a single app common to the 2 tables i.e. having a lot of votes is not equal to good ratings*/

/* 10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
select track_name, user_rating as ratings, rating_count_tot as votes
from sql_lab.applestore
order by ratings desc, votes desc
limit 3;

/*11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve.
What is your conclusion?*/
/*For these analysis the best columns to be querying would be the total downloads vs price but downloads column does not exist*/
select track_name, user_rating as ratings, rating_count_tot as votes, price, prime_genre
from sql_lab.applestore
order by ratings desc, votes desc
limit 10;
/*Looking at the five stars most voted apps around 33% are paid apps. And from these paid ones most of them are games*/