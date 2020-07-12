/* Different genres (Q1)
A:The different genres are: games, productivity, weather,shopping,reference,finance,music,utilities,travel,social networking,sports,business, health& fitness, entertainment, photo& video, navigation, education, lifestyle. food & drinks, news, book, medical and catalogs.*/
select a.prime_genre
from lab.applestore as a
group by a.prime_genre;

/* Genre more apps rated (Q2) 
A:The genre with more apps rated is Games*/
select a.prime_genre, sum(a.rating_count_tot) as "Total nº ratings"
from lab.applestore as a
group by a.prime_genre
order by sum(a.rating_count_tot) desc;

/* Genre with more/less apps (Q3,4)
Q3:The genre with more apps is Games
Q4:The genre with less apps is Catalogs*/
select a.prime_genre, count(a.prime_genre) as "Nº Apps"
from lab.applestore as a
group by a.prime_genre
order by count(a.prime_genre) desc;

/* Most rated apps (Q5)
A:The 10 apps with most rated are: Facebook, instagram, clash of clans, temple run, pandora, pinterest,bible, candy crush saga, spotify music and agry birds*/
select a.track_name, a.rating_count_tot
from lab.applestore as a
order by a.rating_count_tot desc
limit 10;

/* Best rated apps (Q6)
A: simple Camera, fitness,...*/
select a.track_name, a.user_rating
from lab.applestore as a
order by a.user_rating desc;

/* Best rated apps (Q7)
A: It makes sense that the top ten apps are some of the most used ones, given that more users leads to more ratings that in turn lead to more users */

/* Best rated apps (Q8)
A: Given that the scale of possible rating is relatively small and that the average rating of an app will depend on how many people rate it
we end up with a lot of apps (>10) that have the max rating (=5) and so there isn't necessarily a 10 best rated*/

/* Best rated apps (Q9)
A: We see that the most rated apps aren't necessarily the best rated ones, in matter of fact as many user use them it makes sense that the value will never be exactily 
5 while an app rated by a single person if it is rated 5 will have an average rating of 5*/

/* Best rated apps (Q10)
A: Head Soccer, Plant vs Zombies, Sniper...*/
select a.track_name, a.user_rating, a.rating_count_tot
from lab.applestore as a
where user_rating = 5
order by a.rating_count_tot desc
limit 3;

/* Best rated apps (Q11)
A: Assuming that the people who coment on the app are the ones that use it and so have paid for it (being that they only rate it after purchasing), we can see that the 
10 most expensive apps have a low rating count (despite being most above average in ratings) which shows that people do care about the price, at least to some extent.
 Moreover, with the second querie we can see that if it's free there is clearly more comments and people using the game (also in part due to more games available at that price),
 and that from then on up until 3.99£ there is a decreasing amount of comments which shows some degree of price sensitivity. However from that point forward the nº of users fluctuates quite a bit
  (at least until 15.99£, beyond which point most people aren't willing to pay). All in all, people do seem to care about price, though in certain intervals 
  of price a diffrence of 1 £ doesn't seem to be a big deterrent (e.g: 5.99 ot 6.99)*/
select a.track_name, a.price, a.rating_count_tot, a.user_rating
from lab.applestore as a
order by a.price desc
limit 10;

select a.price, sum(a.rating_count_tot), (sum(a.rating_count_tot)/count(a.track_name)), avg(a.user_rating)
from lab.applestore as a
group by a.price
order by a.price asc;

select avg(a.price) 
from lab.applestore as a
group by a.price
order by a.price asc;

select avg(a.rating_count_tot), avg(a.user_rating), avg(a.price)
from lab.applestore as a
limit 10;
