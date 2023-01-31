#0. Teste the table

select* from lab_first_queries.applestore_windows_test limit 10;

#1. Which are the different genres?

select distinct prime_genre from lab_first_queries.applestore_windows_test;

#2. Which is the genre with more apps rated? 

select 
prime_genre
,sum(rating_count_tot) 
from lab_first_queries.applestore_windows_test
group by  1
order by 2 desc
;

#3. Which is the genre with more apps?

select 
prime_genre
,count(id) 
from lab_first_queries.applestore_windows_test
group by  1
order by 2 desc
;

#4. Which is the one with less?

select 
prime_genre
,count(id) 
from lab_first_queries.applestore_windows_test
group by  1
order by 2 
;

#5. Take the 10 apps most rated.

select 
track_name
,sum(rating_count_tot) 
from lab_first_queries.applestore_windows_test
group by  1
order by 2 desc
LIMIT 10
;

#6. Take the 10 apps best rated by users.

select 
track_name
,user_rating
#,rating_count_tot
from lab_first_queries.applestore_windows_test
order by 2 desc
LIMIT 10
;

#10. How could you take the top 3 regarding the user ratings but also the number of votes?

with scenario_rating as(
SELECT 
track_name
,user_rating
,Case when rating_count_tot> 
(
SELECT
avg(rating_count_tot) as average_rating_numbers
from lab_first_queries.applestore_windows_test
)
then 'higher_then_avg' else 'lower_then_avg' end comparison_average
from lab_first_queries.applestore_windows_test
order by 2 desc
)
SELECT* from 
scenario_rating
where 1=1
and comparison_average = 'higher_then_avg';

#11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

with scenario_pricing as(
SELECT 
track_name
,price
,rating_count_tot
,user_rating
,Case when price> 
(
SELECT
avg(price) as median_price
from lab_first_queries.applestore_windows_test
)
then 'higher_then_avg' else 'lower_then_avg' end comparison_average
from lab_first_queries.applestore_windows_test
order by 3 desc
)
SELECT* from 
scenario_pricing
where 1=1
and rating_count_tot> (
SELECT
avg(rating_count_tot) as average_rating_numbers
from lab_first_queries.applestore_windows_test
);