/* first question */
select prime_genre
from applestore
group by prime_genre;

/*second question*/
select prime_genre, sum(rating_count_tot) as tot
from applestore
group by prime_genre;

/*third question*/
select count(track_name) as app, prime_genre
from applestore
group by prime_genre
order by app desc; 

/*fourth question*/
select count(track_name) as app, prime_genre
from applestore
group by prime_genre
order by app asc; 

/*fifth question*/
select track_name as app, 
rating_count_tot as rates
from applestore 
group by app
order by rates desc
limit 10;

/*sixth question*/
select track_name as app, 
user_rating as rates
from applestore 
group by app
order by rates desc
limit 10;

/*seventh, eighth and nineth questions: please, see the answer in .txt file */

/*tenth question*/
select track_name, rating_count_tot, user_rating
from applestore 
order by rating_count_tot desc, user_rating desc
limit 3;

/*eleventh question*/
select track_name, price
from applestore 
order by price desc
limit 10;

select track_name, price, rating_count_tot
from applestore 
order by price desc
limit 10;

select track_name, price, user_rating
from applestore
order by price desc
limit 10;






