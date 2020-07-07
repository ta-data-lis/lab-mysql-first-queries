/*1. Which are the different genres?*/
SELECT prime_genre FROM applestore
GROUP BY prime_genre;


/*2. Which is the genre with more apps rated?*/
/*I've done this this way because a game that has rating_count_tot 0 means that it wasn't rated, so we shouldn't be counted
we should only count the apps that were at least rated once! */
SELECT  prime_genre,  COUNT(prime_genre) 
FROM applestore
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
LIMIT  1;


/*3. Which is the genre with more apps?*/
SELECT prime_genre, COUNT(prime_genre) AS 'tot' FROM applestore
GROUP BY prime_genre
ORDER BY tot DESC
LIMIT  1;


/*4. Which is the one with less?*/
SELECT prime_genre, COUNT(prime_genre) AS 'tot' FROM applestore
GROUP BY prime_genre
ORDER BY tot ASC
LIMIT  1;


/*5. Take the 10 apps most rated.*/

SELECT  track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot DESC
LIMIT  10;


/*6. Take the 10 apps best rated by users.*/
/*You should take into considiration the amount of times the app was rated, otherwise you might have a random top 10 while only having into consideration the rating*/
SELECT  track_name, user_rating, rating_count_tot
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT  10;


/*7. Take a look on the data you retrieved in the question 5. Give some insights.*/
/*
The question 5 gave the answer of what where the top 10 app's that were rated more times by user's
this could mean those apps had more engagement then the others becaused they received more feedback from their users.
But this doesn't mean they were the best rated or the best app's, it just means that they received more user submissions for rating them regardlss
of the rated value by each user
*/

/*8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/*
From the exercise 6 we retrieved the data about the top 10 best rated app's
Well this meant that those were the apps that received the best rating by users, we could perhaps say that these 
are the apps that need the lowest amount of polish and that provide the best experience to users.

On a side note, I decided to take into account the amount of times the app's were rated because an app that was rated 1 time with the value of 5
and an app that is rated 5 bu was rated X amount of times are completly different. Because one has a bigger sample size, we could say that
that number is an more accurate representation of the truth.
*/

/*9. Now compare the data from questions 5 and 6. What do you see?*/
/* 
We can see that the question 5 we were only asked to take into account the sheer amount of times an application was rated regardless of the rating value.
We could say that those apps had a bigger feedback engagement from user's.
On the other hand in question 6 we were asked to take into account the the avg value of the rating and the number of times those were rated, so we 
could say those apps are the best evaluated apps from the bunch.

We can also say that theres not a direct connection between the ammount of times an app was rated and the rating she has, so an app
being rated more times doesn't mean that its the best app.
*/


/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
/*Well i previosly took into consideration the number of votes when asked to give the top 10 best rated app's 
because has I previously stated, an app that has a rating value of 5 but has a bigger smple then an app that
has the same rating but a lower sample has a more accurate rating value.*/

SELECT  track_name, user_rating, rating_count_tot
FROM applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT  3;


/*11. Does people care about the price?*/
/* Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/
/*Where the current table doesn't give us the amount of times an application was downloaded
So I decided to assume that the amount of times an application was rated is a representation of the amount of times an application was downloaded.
Ill do 2 queries to see the amount of times payed applications were rated and then do the same for the free applications, I think is safe to
assume that if the number of times each were downloaded is a good indicator if the peoplo care about the price of apps, because I think
we can assume that the one that has more feedback has more users.
*/
/*This querie will give me the amount of times free apps were rated(ignore the name of the app)*/
SELECT  track_name,  SUM(rating_count_tot) 
FROM applestore
WHERE price = 0
GROUP BY track_name
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1;

/*This querie will give me the amount of times paid apps were rated(ignore the name of the app)*/
SELECT  track_name,  SUM(rating_count_tot) 
FROM applestore
WHERE price > 0
GROUP BY track_name
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1;

/* We can see that free apps were rated 2974676 times, and the paid ones 698516 times. So I think that is
safe to say that at some point in time those apps had those users engaging activly with those apps.
Having said this I would risk to say that users take price into consideration, since that perhaps there were less users using paid apps. */


/*An other way to get a metric that could say this to us is sorting paid apps regarding price and see if the number of rates changes 
according the price. Let's see...*/
SELECT  price, rating_count_tot
FROM applestore
WHERE price > 0
ORDER BY price DESC;

/*Well if we use the rating total of each app as an representative of user's that have used the app we can see that the more expensive a 
application gets the less users it will have, so we could dare and say that users take into account the price of the app.*/

