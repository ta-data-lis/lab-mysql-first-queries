select distinct prime_genre from base_de_dados.applestore;

select prime_genre, rating_count_tot from applestore order by rating_count_tot desc;

select prime_genre, count(id) from applestore group by prime_genre order by count(id) desc;
select prime_genre, count(id) from applestore group by prime_genre order by count(id);

select track_name, rating_count_tot from applestore order by rating_count_tot desc limit 10;

select track_name, user_rating from applestore order by user_rating desc limit 10;

select * from applestore;

select track_name, rating_count_tot, prime_genre, price from applestore  order by rating_count_tot desc limit 10;

select track_name, user_rating, prime_genre, price from applestore order by user_rating desc limit 10;

#Comparing
select track_name, rating_count_tot from applestore order by rating_count_tot desc limit 10;
select track_name, user_rating, rating_count_tot from applestore order by user_rating desc limit 10;

#10
select track_name, user_rating, rating_count_tot, prime_genre from applestore where user_rating = 5 
order by rating_count_tot desc limit 3;

#11
select track_name, rating_count_tot, user_rating, price, prime_genre from applestore order by rating_count_tot desc limit 20;
select * from applestore;
