select *
from newlabs.applestore;

# 1. Which are the different genres?
/* the genres are:
Games
Productivity
Weather
Shopping
Reference
Finance
Music
Utilities
Travel
Social Networking
Sports
Business
Health & Fitness
Entertainment
Photo & Video
Navigation
Education
Lifestyle
Food & Drink
News
Book
Medical
Catalogs
*/
select distinct prime_genre
from newlabs.applestore;

# 2. Which is the genre with more apps rated?
# - Games
select prime_genre, sum(rating_count_tot) as total_ratings_count
from newlabs.applestore
group by prime_genre
order by total_ratings_count desc;

# 3. Which is the genre with more apps?
# - Games
select prime_genre, count(track_name) as count_of_titles
from newlabs.applestore
group by prime_genre
order by count_of_titles desc;


# 4. Which is the one with less?
# - Catalogs
select prime_genre, count(track_name) as count_of_titles
from newlabs.applestore
group by prime_genre
order by count_of_titles asc;

# 5. Take the 10 apps most rated.
/* the 10 apps are:
Social Networking
Music
Reference
Shopping
Book
Weather
Productivity
Sports
Finance
Food & Drink
*/
select track_name as App_title, rating_count_tot
from newlabs.applestore
order by rating_count_tot desc
Limit 10;


# 6. Take the 10 apps best rated by users.
select track_name as Apps_title, avg(user_rating) as avg_user_rating
from newlabs.applestore
group by Apps_title
order by avg_user_rating desc
Limit 10;

# 7. Take a look on the data you retrieved in the question 5. Give some insights.
# - Social apps take the two first positions followed by 2 games and one music app, but in the top 10
# - we have 4 Games accounting for arround 38% of all the rating counts
select track_name as App_title, rating_count_tot, prime_genre
from newlabs.applestore
order by rating_count_tot desc
Limit 10;


# 8. Take a look on the data you retrieved in the question 6. Give some insights.
# - we have 3 games in the best rating by user, but also we have other genres that even though
# - they are not the most popular, in average they have a great rating
select track_name as Apps_title, avg(user_rating) as avg_user_rating, prime_genre
from newlabs.applestore
group by Apps_title
order by avg_user_rating desc
Limit 10;

# 9. Now compare the data from questions 5 and 6. What do you see?
# - Games are with no doubt the most popular genre, however comparing total rating with avg rating
# - does not allow an direct relation only the confirmation Games genre as the most popular

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name as Apps_title, rating_count_tot,  avg(user_rating) as avg_user_rating
from newlabs.applestore
group by Apps_title
order by rating_count_tot desc, avg_user_rating desc
Limit 3;

# 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
# - the apps with more rating are indeed free, so in my analysis people prefer free apps
select track_name as Apps_title, rating_count_tot,  avg(user_rating) as avg_user_rating, price
from newlabs.applestore
group by Apps_title
order by rating_count_tot desc, avg_user_rating desc;
