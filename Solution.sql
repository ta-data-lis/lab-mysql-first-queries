USE lab_mysql_first_queries;  

# 0. Viewing the table
SELECT *
FROM lab_mysql_first_queries.applestore2;


# 1. Which are the different genres?
SELECT DISTINCT prime_genre
FROM lab_mysql_first_queries.applestore2;

# 2. Which is the genre with more apps rated?
SELECT prime_genre, sum(rating_count_tot)
FROM lab_mysql_first_queries.applestore2
GROUP BY prime_genre
LIMIT 1;

# 3. Which is the genre with more apps?**
SELECT prime_genre, count(id)
FROM lab_mysql_first_queries.applestore2
GROUP BY prime_genre
ORDER BY count(id) DESC
LIMIT 1;

# 4. Which is the genre with less apps?**
SELECT prime_genre, count(id)
FROM lab_mysql_first_queries.applestore2
GROUP BY prime_genre
ORDER BY count(id) ASC
LIMIT 1;

#5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot
FROM lab_mysql_first_queries.applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;

#6. Take the 10 apps best rated by users.** 
SELECT AppleStore2.track_name, AppleStore2.user_rating, AppleStore2.rating_count_tot
FROM lab_mysql_first_queries.applestore2
GROUP BY AppleStore2.track_name, AppleStore2.user_rating, AppleStore2.rating_count_tot
ORDER BY AppleStore2.user_rating DESC , AppleStore2.rating_count_tot DESC
LIMIT 10;

# 7. Take a look on the data you retrieved in the question 5. Give some insights.
SELECT AppleStore2.track_name, AppleStore2.rating_count_tot, AppleStore2.prime_genre, AppleStore2.price
FROM lab_mysql_first_queries.applestore2
GROUP BY AppleStore2.track_name, AppleStore2.rating_count_tot, AppleStore2.prime_genre, AppleStore2.price
ORDER BY AppleStore2.rating_count_tot DESC
LIMIT 10;

# All of the app are free (price =0), 
# 2 are "Social Networking", 4 are "Games", 2 are for listening "Music", 1 is linked with "Religion" and 1 with "Photo & Video"

#8. Take a look on the data you retrieved in the question 6. Give some insights.**
SELECT AppleStore2.track_name, AppleStore2.user_rating, AppleStore2.rating_count_tot, AppleStore2.prime_genre, AppleStore2.price
FROM lab_mysql_first_queries.applestore2
GROUP BY AppleStore2.track_name, AppleStore2.user_rating, AppleStore2.rating_count_tot, AppleStore2.prime_genre, AppleStore2.price
ORDER BY AppleStore2.user_rating DESC , AppleStore2.rating_count_tot DESC
LIMIT 10;

# 1 app is for ordering "Pizzas" and 9 are "Games".
# People like gammes and;
# Perhaps game players like to eat pizza while playing the games.

#9. Now compare the data from questions 5 and 6. What do you see?**
#Games are the most popular genre in both. But app related with social networking tend also to be popular

#10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT AppleStore2.track_name, AppleStore2.user_rating, AppleStore2.rating_count_tot
FROM lab_mysql_first_queries.applestore2
GROUP BY AppleStore2.track_name, AppleStore2.user_rating, AppleStore2.rating_count_tot
ORDER BY AppleStore2.user_rating DESC , AppleStore2.rating_count_tot DESC
LIMIT 3;

#11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

select AppleStore2.price, avg(AppleStore2.rating_count_tot)
from lab_mysql_first_queries.applestore2
group by AppleStore2.price
order by AppleStore2.price asc
limit 10;

#From questions 7 and 8 we can conclude by analysing prices that:
# the 10 apps most rated are all free
# 6 of the app best rated are free

# we also can observe, by looking to this last query (generated in point 11) that lower prices are related with upper average top ratings and vice-versa.

# So I conclude that "price" is an important variable to be taken in consideration.

