/* my first sql query */
select *
From sakila.film;

select title
from sakila.film;



select * from sakila.film limit 20;

/*challenge :select from the table address the column address,district and phone.Show the first 5 rows*/
select address, district,phone from sakila.address limit 5;
/* to check the distinct values in a particular column*/
select distinct rental_duration from sakila.film;

select distinct rental_duration,rating from sakila.film;

/*check the longest movie */
select title,length,rental_rate from sakila.film order by length desc;

/*check the longest movie,tiebreak y most expensive rental */
select title ,length,rental_rate from sakila.film order by length desc,rental_rate desc limit 1;

/*aliasing */
select title,rental_rate as cost, length from sakila.film;

/*computations and aliasing */
select title,rental_rate/length as price_per_min from sakila.film order by price_per_min asc;

/*string computatiom */
select concat(title,", rating:", rating) as descriptor from sakila.film;

select* from sakila.film where sakila.film.rental_duration=6;

select* from sakila.film where sakila.film.rental_duration <> 6;

select* from sakila.film where sakila.film.rental_duration >= 6;

select* from sakila.film where sakila.film.rental_duration in(4,5,6);

select* from sakila.film where sakila.film.rental_duration between 4 and 6;

select* from sakila.film where sakila.film.special_features="Deleted Scenes";

select* from sakila.film where sakila.film.special_features like "%Deleted Scenes%";

select* from sakila.film where sakila.film.special_features  not like "%Deleted Scenes%";

/*samples aggregations */
select count(*) from sakila.film where sakila.film.special_features like "%Deleted Scenes%" ;

select max(rental_duration) from sakila.film where sakila.film.special_features like "%Deleted Scenes%";

select count(*),  max(rental_duration),avg(rental_duration) from sakila.film where sakila.film.special_features like "%Deleted Scenes%";

/*group by*/
select rating,count(*), avg (rental_rate) from sakila.film group by sakila.film.rating;

select rating,rental_duration,count(*),avg(rental_rate) from sakila.film group by rating,rental_duration;

#challenge : for each category in special_features  ,compute the average length,rental_rate and max rental duration

select  special_features,avg(length),avg(rental_rate),max(rental_duration) from sakila.film group by special_features;

/* joins */

select *  from sakila.film inner join sakila.film_actor on film.film_id=film_actor.film_id;

select film_actor.film_id,title,actor_id from sakila.film inner join sakila.film_actor on film.film_id=film_actor.film_id;

select sakila.actor.first_name as fname,sakila.actor.last_name as lname,sakila.film_actor.film_id
from sakila.actor
inner join sakila.film_actor
on sakila.actor.actor_id=sakila.film_actor.actor_id;

/* average length of all movies */

select avg (length) from sakila.film;

/* movies with length greater or equal to average length */
select * from sakila.film where length >= (select avg(length) from sakila.film);

/* list of actors wich starred in movies with lengths higher or equal to the avg length for all movies */
select * from sakila.film where length >= (select avg(length) from sakila.film);

select actor_id from sakila.film_actor
inner join sakila.film
on film_actor.film_id = film.film_id
where length >= (select avg(length) from sakila.film);

select distinct actor_id from sakila.film_actor
inner join sakila.film
on film_actor.film_id = film.film_id
where length >= (select avg(length) from sakila.film);

/* list of actors wich starred in movies with lengths higher or equal to the avg length for all movies */

(select *
from sakila.actor
inner join 
(select distinct actor_id from sakila.film_actor
inner join sakila.film
on film_actor.film_id = film.film_id
where length >= (select avg(length) from sakila.film)) selected_actors
on actor.actor_id=selected_actors.actor_id
 
 distinct concat(actor.first_name," ",actor.last_name) as fullname
from sakila.film
inner join sakila.film_actor
on film.film_id=film_actor.film_id
inner join sakila.actor
on sakila.actor.actor_id=sakila.film_actor.actor_id;


