SELECT *
FROM lab.applestore2;


/*1.Which are the different genres?*/
SELECT distinct prime_genre
FROM lab.applestore2;

/**2. Which is the genre with more apps rated?**/
select prime_genre, sum(rating_count_tot) AS Total_RaTing
FROM lab.applestore2
group by prime_genre
LIMIT 1;

/**3. Which is the genre with more apps?**/
select prime_genre, count(prime_genre) as applications
FROM lab.applestore2
group by prime_genre
order by count(prime_genre) desc
limit 1;

/**4. Which is the one with less?**/
select prime_genre, count(prime_genre) as applications
FROM lab.applestore2
group by prime_genre
order by count(prime_genre) asc
limit 1;

/**5. Take the 10 apps most rated.**/
select rating_count_tot, track_name
from lab.applestore2
order by rating_count_tot desc
limit 10;

/**6. Take the 10 apps best rated by users.**/
select user_rating, rating_count_tot, track_name
from lab.applestore2
order by user_rating desc, rating_count_tot desc 
limit 10;


/**7. Take a look on the data you retrieved in the question 5. Give some insights.**/

/* If we just use the column of user_rating its not fair comparision, because can have applications whit just one review and others whith thousands reviews*/  

/**8. Take a look on the data you retrieved in the question 6. Give some insights.**/

/* If we just use the column of user_rating its not fair comparision, because can have applications whit just one review and others whith thousands reviews*/

/**9. Now compare the data from questions 5 and 6. What do you see?**/

/* If we just use the column of user_rating its not fair comparision, because can have applications whit just one review and others whith thousands reviews*/

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?**/

select track_name, user_rating, rating_count_tot
from lab.applestore2
order by user_rating desc, rating_count_tot desc
limit 3;

/**# 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?**/
select price, rating_count_tot,track_name, avg(user_rating) 
from lab.applestore2
group by price
order by  price asc
limit 10;

/* Seen loke this i can understand that the number of user are bigger when its free, so the price matters*/