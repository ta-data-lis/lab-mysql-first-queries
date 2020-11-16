# find the different genres 

SELECT DISTINCT prime_genre
FROM AppleStore;

#Which is the genre with most apps
SELECT prime_genre,
	   sum(rating_count_tot) AS total_ratings
FROM AppleStore 
Group by prime_genre
ORDER BY total_ratings DESC
LIMIT 1;

# Which is the genre with more apps?
SELECT prime_genre,
	   COUNT(id) AS n_apps
FROM AppleStore 
Group by 1
ORDER by n_apps DESC
LIMIT 1;

#Which is the one with less?

SELECT prime_genre,
	   COUNT(id) AS n_apps
FROM AppleStore 
Group by 1
ORDER by n_apps ASC
LIMIT 1;

#Take the 10 apps most rated.

SELECT track_name,
	   sum(rating_count_tot) AS total_ratings
FROM AppleStore 
Group by 1
ORDER BY total_ratings DESC
LIMIT 10;

#Take the 10 apps best rated by users.

SELECT track_name,
	   user_rating, 
	   rating_count_tot
FROM AppleStore
ORDER BY user_rating desc, rating_count_tot desc 
limit 10;


-- Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

select price,
	   avg(rating_count_tot) as avg_ratings,
	   avg(user_rating) as avg_user_rating
from AppleStore
group by 1
order by 1;

#Take a look on the data you retrieved in the question 5. Give some insights.
# Most are social media or games 
 
#Take a look on the data you retrieved in the question 6. Give some insights.
# are mostly games

#Now compare the data from questions 5 and 6. What do you see?
# with increased number of ratings it gets harder to stay on a user rating of 5

-- How could you take the top 3 regarding the user ratings but also the number of votes?
# Group by trackname, order by user_rating, rating_count_tot limit 3

-- Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
#People seem to care about the price, free apps are rated more often which leads to the assumption, that they are downloaded  way more often 




