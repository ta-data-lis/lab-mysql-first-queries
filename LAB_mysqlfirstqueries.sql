select * from lab1.applestore_windows;

/**1. Which are the different genres?**/

select distinct prime_genre 
from lab1.applestore_windows;

/**2. Which is the genre with more apps rated?**/

select sum(rating_count_tot), prime_genre 
from lab1.applestore_windows
group by prime_genre;

/**3. Which is the genre with more apps?**/
/**4. Which is the one with less?
same code as question 3, just organize data starting on the lowest number**/

select prime_genre, count(prime_genre)
from lab1.applestore_windows
group by prime_genre;

/**5. Take the 10 apps most rated.**/
select track_name, rating_count_tot
from lab1.applestore_windows
order by rating_count_tot desc
limit 10;

/**6. Take the 10 apps best rated by users.**/

select track_name, user_rating
from lab1.applestore_windows
order by user_rating desc
limit 10;


/**9. Now compare the data from questions 5 and 6. What do you see?**/

select track_name, user_rating, prime_genre
from lab1.applestore_windows
order by user_rating desc
limit 10;

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?**/

select track_name, user_rating, rating_count_tot
from lab1.applestore_windows
order by user_rating desc, rating_count_tot desc
limit 3;

/**11. Do people care about the price?** 
Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?**/

select distinct prime_genre, sum(rating_count_tot)
from lab1.applestore_windows
where applestore_windows.price > 0
group by prime_genre
order by sum(rating_count_tot) desc
limit 5;

select distinct prime_genre, sum(rating_count_tot)
from lab1.applestore_windows
where applestore_windows.price = 0
group by prime_genre
order by sum(rating_count_tot) desc
limit 5;