#1. Which are the different genres?
select distinct prime_genre from applestore;
#2. Which is the genre with more apps rated?
select prime_genre, sum(rating_count_tot)
from applestore
group by prime_genre
order by sum(rating_count_tot) desc;




select prime_genre, count(id)
from applestore
group by prime_genre
order by count(id) desc;


select prime_genre, count(id)
from applestore
group by prime_genre
order by count(id) asc;


select track_name, rating_count_tot
from applestore
order by rating_count_tot desc
limit 10;

select track_name, user_rating, rating_count_tot
from applestore
order by user_rating desc
limit 10;

select track_name, rating_count_tot
from applestore
order by rating_count_tot desc
limit 500; 

#lets find the best rated apps for the apps that received more than 30k votes
select track_name, user_rating, rating_count_tot
from (select * 
from applestore
where rating_count_tot > 30000) summary
order by user_rating desc
limit 3;
#Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve
select avg(user_rating)
from applestore
where price = 0;

select avg(user_rating)
from applestore
where price > 0;

select avg(rating_count_tot)
from applestore
where price = 0;

select avg(rating_count_tot)
from applestore
where price > 0;