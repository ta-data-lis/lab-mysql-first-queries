select * from applestore;

#q1 Which are the different genres?
select distinct a.prime_genre 
from applestore a;

#q2 Which is the genre with more apps rated?
SELECT a.prime_genre, sum(a.rating_count_tot) as "sum_"
from applestore a
group by a.prime_genre order by "sum_" desc limit 1;

#q3 Which is the genre with more apps?
select a.prime_genre, count(a.id)
from applestore a
group by a.prime_genre
order by count(a.id) desc limit 1;

#q4 Which is the genre with less apps?
select a.prime_genre, count(a.id)
from applestore a
group by a.prime_genre
order by count(a.id) asc limit 1;

#q5 Take the 10 apps most rated
select a.track_name ,a.rating_count_tot from applestore a
order by a.rating_count_tot desc limit 10;

#q6 Take the 10 apps best rated by users
select a.track_name ,a.user_rating from applestore a
order by a.user_rating desc limit 10;

#Q7 Give some insights about q5
select a.track_name ,a.rating_count_tot, a.prime_genre
 from applestore a
order by a.rating_count_tot desc limit 10;

#Q8 Give some insights about q6
select a.track_name ,a.user_rating from applestore a
where a.user_rating >= 5
order by a.user_rating;

#Q9 Compare Q5 and Q6
select a.track_name ,a.rating_count_tot, a.user_rating 
from applestore a
order by a.rating_count_tot desc limit 10;

#Q10 take the top 3 w/ user ratings + number of votes
select a.track_name ,a.rating_count_tot, a.user_rating 
from applestore a
where a.user_rating >= 5
order by a.rating_count_tot desc limit 3;

#Q11 Does people care about the price? 
#rate 5 only goes up until 29,99USD
select a.track_name , a.user_rating , a.price
from applestore a
where a.user_rating >= 5
order by a.price desc;
select a.track_name , a.user_rating , a.price
from applestore a
where a.price > 29.99
order by a.price desc;

#check avg and compare w/ user ratings
select a.user_rating, avg(a.price)
from applestore a
group by a.user_rating
order by a.user_rating desc;

#why avg is so low? count zeros
select a.user_rating, count( a.price)
from applestore a
where a.price =0
group by a.user_rating
order by a.user_rating desc;