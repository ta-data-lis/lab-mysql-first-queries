#Creating the Database and importing the csv as "Data"
CREATE DATABASE APPLE;

#1. Which are the different genres?
SELECT distinct prime_genre from Data;

#2. Which is the genre with more apps rated?
SELECT prime_genre,sum(rating_count_tot) from Data
group by prime_genre
order by sum(rating_count_tot) desc;

#3. Which is the genre with more apps?
SELECT prime_genre,sum(track_name) from Data
group by prime_genre
order by sum(track_name) desc;

#4. Which is the one with less?
SELECT prime_genre,sum(track_name) from Data
group by prime_genre
order by sum(track_name) asc;

#5. Take the 10 apps most rated.
SELECT id, track_name, rating_count_tot, user_rating from Data
order by rating_count_tot desc
limit 10;

#6. Take the 10 apps best rated by users.
SELECT id, track_name, user_rating, rating_count_tot from Data
order by user_rating desc
limit 10;

#7. Take a look on the data you retrieved in the question 5. Give some insights.
## The app Catholic Bible has received the most ratings out of all the apps in the table (999) followed closely by other apps.

#8. Take a look on the data you retrieved in the question 6. Give some insights.
## All 10 Apps shown have a user rating of 5 (which is the highest possible rating). 

#9. Now compare the data from questions 5 and 6. What do you see?
## The top 10 apps in 5 and in 6 differ from each other. None of the apps with the most ratings are the best rated apps.

#10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot from Data
order by rating_count_tot desc, user_rating desc
limit 3;

#11. Do people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
## Unfortunately there are no number of downloads pprovided, so we will use the user ratings as an indice for price sensitivity, meaning if a higher price leads to a worse outcome in the rating. 

### Which prices exist in the table?
SELECT distinct price from Data;

### Check the best rated apps:
SELECT price,user_rating from Data
order by user_rating desc
limit 20;

### We can calculate the average user rating and group by price to investigate user ratings in each price category:
SELECT price,avg(user_rating) from Data
group by price
order by avg(user_rating) desc;
### We see that the best rated apps actually cost between 13.99 and 99.99 USD.

## Another approach is to look at the total ratings counts since someone must have downloaded an app in order to rate it:
SELECT price, sum(rating_count_tot) from Data
group by price
order by sum(rating_count_tot) desc;

### As expected, free or cheap apps are more likely to be downloaded.

### We can now check in which prices ratings are highest and average rating is above 4:
SELECT price, sum(rating_count_tot),avg(user_rating) from Data
where user_rating>4
group by price
order by sum(rating_count_tot) desc;

# --> User ratings for expensive (between 13.99 and 99.99 USD) apps are very high. Due to the price they are of course less bought than less expensive apps. For less expensive apps the ratings range from very poor to very high. 

