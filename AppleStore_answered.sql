select *
from applestore;

#1st question
select prime_genre
from applestore
group by prime_genre;

#2nd question
select prime_genre, sum(rating_count_tot) AS TOT 
from applestore
group by prime_genre
order by TOT DESC
limit 10;

#3rd question
select COUNT(prime_genre) AS total_games, prime_genre
from applestore
GROUP BY prime_genre
order by total_games DESC
limit 1;

#4rd question
select COUNT(prime_genre) AS total_games,prime_genre
from applestore
GROUP BY prime_genre
order by total_games ASC
limit 1;

#5th question 
select track_name, rating_count_tot
from applestore
order by rating_count_tot DESC
limit 10;

#6th question
select track_name, user_rating
from applestore
order by user_rating DESC
limit 10;

/*
#Question7
These are the most popular/downloaded apps. we expected these results

#Question8/9
We obtained the apps with the best rating in this db. We observe
that none of these apps appears in list of 10 most popular, that 
means the rating doesnt necessarily means quality, as we expect
a quality app to be popular */

#10 question
select track_name, user_rating, rating_count_tot
from applestore
order by user_rating DESC, rating_count_tot desc;

#11th question
select track_name, price, user_rating, rating_count_tot
from applestore
order by rating_count_tot DESC;
/*People do care about the price, if we order by total count of votes, we can see that almost every app is free.
Paid apps are less likely to be download but also have usually a higher user_rating