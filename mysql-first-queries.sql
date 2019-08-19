SELECT * FROM mysql_labs.AppleStore;
select distinct prime_genre from AppleStore;

# **1. Which are the different genres?**
select count(distinct prime_genre) from AppleStore;

# **2. Which is the genre with more apps rated?**
select prime_genre, SUM(rating_count_tot) from AppleStore
GROUP BY prime_genre
order by SUM(rating_count_tot) desc
limit 10;

# **3. Which is the genre with more apps?**
select prime_genre, SUM(track_name) from AppleStore
GROUP BY prime_genre
order by SUM(track_name) desc limit 0,1;

# **4. Which is the one with less?**
select prime_genre, count(track_name) from AppleStore
GROUP BY prime_genre
order by count(track_name) asc;

# **5. Take the 10 apps most rated.**
select track_name, rating_count_tot, user_rating from AppleStore
order by rating_count_tot desc
limit 0,10;

# **6. Take the 10 apps best rated by users.**
select track_name, user_rating, rating_count_tot from AppleStore
order by user_rating desc, rating_count_tot desc
limit 0,10;

# **7. Take a look on the data you retrieved in the question 5. Give some insights.**
select track_name, rating_count_tot, price, size_bytes, prime_genre from AppleStore
order by rating_count_tot desc
limit 10;

select distinct prime_genre, sum(rating_count_tot) from AppleStore
GROUP BY prime_genre
order by sum(rating_count_tot) desc limit 0,10;

select track_name, sum(size_bytes) from AppleStore
GROUP BY track_name
order by sum(size_bytes) desc limit 0,10;

# **8. Take a look on the data you retrieved in the question 6. Give some insights.**
select DISTINCT prime_genre, avg(user_rating), sum(rating_count_tot) from AppleStore
GROUP BY prime_genre
order by  sum(rating_count_tot) desc, avg(user_rating) desc
limit 0,10;

select DISTINCT track_name, prime_genre, user_rating, rating_count_tot from AppleStore
order by user_rating desc, rating_count_tot desc
limit 0,10;


#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
select DISTINCT track_name, user_rating, rating_count_tot  from AppleStore
order by user_rating desc, rating_count_tot desc
limit 3;

# **11. Does people care about the price?** 
select DISTINCT track_name, user_rating, rating_count_tot, price from AppleStore
order by rating_count_tot desc, user_rating desc, price desc
limit 10;

select DISTINCT track_name, user_rating, rating_count_tot, price from AppleStore
order by price desc, rating_count_tot desc, user_rating desc, price desc
limit 10;