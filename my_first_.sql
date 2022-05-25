SELECT * FROM labs.applestore;

#SELECT * FROM publications.authors;
#.1Which are the different genres?
SELECT DISTINCT prime_genre FROM labs.applestore;

#2. Which is the genre with more apps rated?
SELECT prime_genre FROM labs.applestore where rating_count_tot = ( SELECT MAX(rating_count_tot) FROM labs.applestore);

#3. Which is the genre with more apps?
SELECT a.prime_genre FROM (SELECT prime_genre, COUNT(prime_genre) mycount FROM labs.applestore 
GROUP BY prime_genre) as a where a.mycount = (SELECT MAX(a.mycount) FROM (SELECT prime_genre, COUNT(prime_genre) mycount FROM labs.applestore 
GROUP BY prime_genre) as a);

#4. Which is the one with less?
SELECT a.prime_genre FROM (SELECT prime_genre, COUNT(prime_genre) mycount FROM labs.applestore 
GROUP BY prime_genre) as a where a.mycount = (SELECT MIN(a.mycount) FROM (SELECT prime_genre, COUNT(prime_genre) mycount FROM labs.applestore 
GROUP BY prime_genre) as a);


#5. Take the 10 apps most rated.
SELECT track_name from labs.applestore order by rating_count_tot desc LIMIT 10;

#6. Take the 10 apps best rated by users.
SELECT track_name from labs.applestore order by user_rating_ver desc LIMIT 10;

#7. Take a look on the data you retrieved in the question 5. Give some insights.
# The most rated ones are social networking sites and the famous group games and are related to facebook games and products


#8. Take a look on the data you retrieved in the question 6. Give some insights.
# All are gaming apps

#9. Now compare the data from questions 5 and 6. What do you see?
# In 5 we got social networking sites and games mostly associated with facebook but in 6 we only got games.

#10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT * from labs.applestore order by user_rating, rating_count_tot desc LIMIT 3;

#11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. 
# What is your conclusion?
SELECT * from labs.applestore order by user_rating, price  asc LIMIT 5;
# people don't seems to be worried about the price if the genre is games.

