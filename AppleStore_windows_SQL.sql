SELECT * FROM applestore.applestore_windows;


/* **1. Which are the different genres?***/

select DISTINCT prime_genre from applestore.applestore_windows;

/***2. Which is the genre with more apps rated?**/

select sum(rating_count_tot), prime_genre from applestore.applestore_windows
group by prime_genre
limit 1;


/**3. Which is the genre with more apps?**/
select distinct prime_genre, rating_count_tot from applestore_windows
order by rating_count_tot desc;
 
/**4. Which is the one with less?**/
select distinct prime_genre, rating_count_tot from applestore_windows
order by rating_count_tot asc;
 

/**5. Take the 10 apps most rated.**/
select track_name, rating_count_tot from applestore_windows
ORDER BY rating_count_tot DESC;

/**6. Take the 10 apps best rated by users.**/
select track_name, user_rating from applestore_windows
ORDER BY user_rating DESC;

/**7. Take a look on the data you retrieved in the question 5. Give some insights.
we can see which apps are the most rated by users. There are the most famous apps in the world.
**/


/**8. Take a look on the data you retrieved in the question 6. Give some insights.**
**9. Now compare the data from questions 5 and 6. What do you see?**
We can see which are the apps best rated by users, but it is not a very real data because 
it does not take into account the total number of ratings.**/

/**10. How could you take the top 3 regarding the user ratings but also the number of votes?**/
select track_name, rating_count_tot, user_rating from applestore_windows
ORDER BY rating_count_tot and user_rating DESC;


/**11. Does people care about the price?** Do some queries,
comment why are you doing them and the results you retrieve. What is your conclusion
we can see that the price has an influence because they have much lower ratings than free apps. 
But we can also see that the apps are highly rated by users who pay for them.
 This means that users are satisfied with their purchase and believe it is worth the value for money. **/
select track_name, price, rating_count_tot, user_rating from applestore_windows
order by price desc;

