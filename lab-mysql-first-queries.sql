select * from applestore;

select distinct prime_genre from applestore;

select distinct prime_genre, count(prime_genre) from applestore 
where rating_count_tot > 0
group by prime_genre 
order by count(prime_genre) desc;

select distinct prime_genre, count(prime_genre) from applestore 
group by prime_genre 
order by count(prime_genre) desc;

select distinct prime_genre, count(prime_genre) from applestore 
group by prime_genre 
order by count(prime_genre) asc;

select track_name, rating_count_tot from applestore
order by rating_count_tot desc 
limit 0,10;

select track_name from applestore
where rating_count_tot > 0
order by user_rating desc 
limit 0,10;

# best for price = 0 
SELECT NTILE(4) OVER (ORDER BY rating_count_tot DESC) AS Quartiles, AVG(rating_count_tot) as "Average Ratings Given", avg(user_rating) as "Average User Rating Category"
FROM applestore
where price = 0 and  rating_count_tot > 1310;
# the 1310 referes to the top quartile for total rating counts

# best for price > 0 
SELECT AVG(rating_count_tot) as "Average Ratings Given", avg(user_rating) as "Average User Rating Category"
FROM applestore
where price > 0  and rating_count_tot > 1310;
# the 1310 referes to the top quartile for total rating counts