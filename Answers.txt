Q1) The genres are:
'Games'
'Education'
'Utilities'
'Entertainment'
'Shopping'
'Reference'
'Sports'
'Photo & Video'
'Social Networking'
'Lifestyle'
'Music'
'Finance'
'News'
'Productivity'
'Weather'
'Travel'
'Health & Fitness'
'Food & Drink'
'Book'
'Business'
'Medical'
'Navigation'
'Catalogs'

Code:
select distinct prime_genre as genres 
from applestore;

Q2) #Which is the genre with more apps rated?

'Games', '3349'

Games are with 3349 ratings

Code:
select prime_genre as genre, count(user_rating) as number_of_ratings
from applestore
group by(prime_genre)
order by number_of_ratings desc;

#Qu 3. Which is the genre with more apps?
Code:
select prime_genre as genre, count(id) as no_of_apps
from AppleStore 
group by prime_genre 
order by count(id) desc;

Again this is Games with 3,349

Qu4) Which is the genre with less apps?

Code:
Catalogues is the genre with the least apps 

select prime_genre as genre, count(`id`) 
from AppleStore 
group by genre 
order by count(`id`) asc;


Q5)Take the 10 apps most rated.
'Facebook', '2974676'
'Instagram', '2161558'
'Clash of Clans', '2130805'
'Temple Run', '1724546'
'Pandora - Music & Radio', '1126879'
'Pinterest', '1061624'
'Bible', '985920'
'Candy Crush Saga', '961794'
'Spotify Music', '878563'
'Angry Birds', '824451'

Code:
select track_name as apps, sum(rating_count_tot) 
from AppleStore
group by apps
order by sum(rating_count_tot) DESC
limit 10;



Qu6)
Take the 10 apps best rated by users:

'Wonder Tactics', '5'
'Moto x3m', '5'
'Find–the–Line', '5'
'Craft The World - Episodes Edition', '5'
'King Tongue', '5'
'Rapala Fishing - Daily Catch', '5'
'Oddworld: Munch\'s Oddysee', '5'
'Plants vs. Zombies™ Heroes', '5'
'Hit the Button Math', '5'
'Picolo drinking game', '5'

Code:
select track_name, prime_genre, user_rating 
from applestore
order by user_rating DESC
limit 10;

There may be more equal with a 5 rating not picked up by the 10 limiting query

Qu 7. Take a look on the data you retrieved in the question 5. Give some insights.

The top two are the two largest social media websites Facebook and Instgram. The rest are more random and personal 


Qu 8. Take a look on the data you retrieved in the question 6. Give some insights.
The hgihest rated apps are mostly games (8/10) with far less users

Qu 9. Now compare the data from questions 5 and 6. What do you see?
The apps with the more ratings are not the highest rated on average. So it's likely the more people rating apps, the less likely you are to have a perfect score of 5.

10. How could you take the top 3 regarding the user ratings but also the number of votes?

Incorrect result coming out but not sure why

Code:
select track_name as app, sum(user_rating) as sum_of_userratings, count(rating_count_tot) as no_of_votes
from applestore
group by app
order by sum_of_userratings, no_of_votes desc
limit 3;

11. Do people care about the price? 

Code:
select id, price, sum(user_rating) as sum_of_userratings
from applestore
group by id, price
order by price asc, sum_of_userratings asc;

select id, price, sum(user_rating) as sum_of_userratings
from applestore
group by id, price
order by price desc, sum_of_userratings desc;

select id, price, avg(user_rating) as average_userrating
from applestore
group by price
order by price asc, average_userrating desc;

The queries show that user_rating and price are not related as many of the top rated apps are free and paid apps have a mixture of price Vs userratting value 

