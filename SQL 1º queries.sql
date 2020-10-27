SELECT * 
FROM apps.applestore;


/* 1. WHICH ARE THE DIFFERENT GENRES? */
/* with GROUP BY, instead of showing up the repeated genres (ORDER BY), they show up in a unique/distinct way */
SELECT prime_genre
FROM apps.applestore
GROUP BY prime_genre;


/* 2. WHICH IS THE GENRE WITH MORE APPS RATED? */
SELECT prime_genre, count(rating_count_tot)
FROM apps.applestore
GROUP BY prime_genre
ORDER BY count(rating_count_tot) DESC;

/* OR 
SELECT prime_genre, SUM(track_name OR id)
FROM apps.AppleStore
GROUP BY prime_genre
LIMIT 1; */


/* 3. WHICH IS THE GENRE WITH MORE APPS? */
SELECT prime_genre, count(id)
FROM apps.applestore
GROUP BY prime_genre
ORDER BY count(id) DESC
LIMIT 1;  


/* 4. WHICH IS THE ONE (GENRE) WITH LESS? */
SELECT prime_genre, count(id)
FROM apps.applestore
GROUP BY prime_genre
ORDER BY count(id) ASC
LIMIT 1;


/* 5. Take the 10 apps most rated */
SELECT track_name, rating_count_tot
FROM apps.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;


/* 6. Take the 10 apps best rated by users */
SELECT track_name, rating_count_tot, user_rating 
FROM apps.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;


/* 7. TAKE A LOOK ON THE DATA YOU RETRIEVED IN THE QUESTION 5. GIVE SOME INSIGHTS */

/* We retrieved the most rated 10 Apps in terms of quantity, not quality. 
If this was the case, we'll have to sum(rating_count_tot)/ sum(user_rating) = avg_rating. 
And this will be in fact a better and most accurate way to determine the best rated App. */


/* 8. TAKE A LOOK ON THE DATA YOU RETRIEVED IN THE QUESTION 6. GIVE SOME INSIGHTS. */

/* It follows the logic of what i i've explained in Question 7.
In this case, we've sum the number of users that rated 5, but still not as accurate as a avg_rating. */


/* 9. NOW COMPARE THE DATA FROM QUESTION 5 AND 6. WHAT DO YOU SEE? */

/* explained in the previous 2 questions (7 and 8) */


/* 10. HOW COULD YOU TAKE THE TOP 3 REGARDING THE USER RATINGS BUT ALSO THE Nº OF VOTES? */
SELECT track_name, user_rating, rating_count_tot
FROM apps.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


/* 11. DOES PEOPLE CARE ABOUT THE PRICE? Do some queries, comment why are you doing them and the results you retrieve. 
What is your conclusion? */

SELECT price, AVG(user_rating), SUM(rating_count_tot)
FROM apps.applestore
GROUP BY price
ORDER BY sum(rating_count_tot) DESC;
/*Yes, people care very much about price. The cheapest apps (or free) are much more used than the expensive ones. 
So, we can see a correlation between price and purchases (that follows a certain pattern) 
and understand the influence that the price has on people's purchases. */

