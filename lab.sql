select *
from apps.applestore as apple;

/* Question #1 */
select distinct(prime_genre)
from apps.applestore as apple;

/* Question #2 */
select prime_genre, max(rating_count_tot)
from applestore;

/* Question #3 and #4 */
select prime_genre, count(track_name) as count
from applestore
group by prime_genre
order by count desc;

/* Question #5 */
select track_name, rating_count_tot, prime_genre, price, user_rating
from applestore
order by rating_count_tot desc
limit 10;

/* Question #6 */
select track_name, user_rating, rating_count_tot, prime_genre, price
from applestore
order by user_rating desc, rating_count_tot desc
limit 10;

/* let's see first if there's any conclusion I can come up with about the main variables when sorting by price */
select track_name, price, prime_genre, user_rating, rating_count_tot
from applestore
order by price desc;

/* seems that we don't have too many different prices, it might be useful to group by price and check the count of rating_cout_tot as well as the average rating scores */
select price, sum(rating_count_tot) as Ratings_sum, format(avg(user_rating), 2) as Avg_rating
from applestore
group by price
order by price asc;