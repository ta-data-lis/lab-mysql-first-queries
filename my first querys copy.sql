/*1. Which are the different genres?*/
select distinct prime_genre
From applestore2;

/*2. '''''''''''Which is the genre with more apps rated?*/
/*select prime_genre, rating_count_tot
from  applestore2
order by rating_count_tot desc;''''''''''''*/


/**3. Which is the genre with more apps?**/
select  max(prime_genre)
from applestore2;


/**4. Which is the one with less?**/
select  min(prime_genre)
from applestore2;


/**5. Take the 10 apps most rated.**/
select  applestore2.track_name, max(rating_count_ver) as best_related
from applestore2
group by track_name
order by best_related DESC
limit 10;

/**6. Take the 10 apps best rated by users.**/
select applestore2.track_name,  max(user_rating_ver) as user_rating
from applestore2
group by track_name
order by user_rating DESC 
limit 10;

/**7. Take a look on the data you retrieved in the question 5. Give some insights.**/
/* First i selected the track name and the max of rating_count_ver which i named as best_reated from applestore2
than i group them by track name and orderd them descend with a limit of 10*/

/**8. Take a look on the data you retrieved in the question 6. Give some insights.**/
/* in 6 i did the same as in 5 but with the column user rating ver

/**9. Now compare the data from questions 5 and 6. What do you see?**/
/*Nothing special*/

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?**/
select max(rating_count_tot), max(user_rating_ver)
from applestore2.rating_count_tot
inner join aapplestore2.user_rating_ver
on applestore2.rating_count_tot = applestore2.user_rating_ver;


/**11. Does people care about the price?**/

select avg(user_rating_ver)
from applestore2
where price > 0;

select avg(user_rating_ver)
from applestore2
where price = 0;

/*I would say, that people dont care about the price*/







