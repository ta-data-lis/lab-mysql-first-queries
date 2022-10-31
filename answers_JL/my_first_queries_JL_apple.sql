SELECT * FROM apple.applestore_windows;

-- **1. Which are the different genres?** --
SELECT distinct prime_genre
FROM apple.applestore_windows;

-- **2. Which is the genre with more apps rated?**
SELECT distinct prime_genre, sum(rating_count_tot)
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC;

-- **3. Which is the genre with more apps?** // **4. Which is the one with less?**
SELECT distinct prime_genre, count(track_name)
FROM apple.applestore_windows
GROUP BY prime_genre
ORDER BY count(track_name) DESC;

-- **5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot
FROM apple.applestore_windows
order by rating_count_tot DESC
limit 10;

-- **6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating  -- this one is not working the same way when clicking in the main table in "user_rating" column
FROM apple.applestore_windows
order by user_rating desc
Limit 10;

-- **10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name, rating_count_tot, user_rating
FROM apple.applestore_windows
order by user_rating desc, rating_count_tot desc
LIMIT 3;

-- **11. Does people care about the price?**
SELECT rating_count_tot, price
FROM apple.applestore_windows
group by price 
order by rating_count_tot desc;

SELECT price, count(price) as Nr_reps, sum(count(price)) over() as total_Nr_reps
FROM apple.applestore_windows
Group by price
order by Nr_reps desc;

SELECT rating_count_tot, price, sum(rating_count_tot) over() as total_count
FROM apple.applestore_windows
where price > 0 and price < 10
group by price
order by rating_count_tot desc;

select price, AVG(user_rating)
FROM apple.applestore_windows
-- where price > 0
group by price
order by price asc;

select price, AVG(user_rating), avg(user_rating) over() as avg_paid_rate
FROM apple.applestore_windows
where price > 0
group by price
order by price asc;







