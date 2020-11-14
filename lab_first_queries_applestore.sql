DROP TABLE IF EXISTS `applestore`;
USE mysql_myfirstqueries;
CREATE TABLE applestore (
	empty_col VARCHAR(40) NOT NULL,
    id VARCHAR(40) NOT NULL,
    track_name VARCHAR(40) NOT NULL,
    size_bytes VARCHAR(40) NOT NULL,
    currency VARCHAR(40) NOT NULL,
    price INT NOT NULL,
    rating_count_tot INT NOT NULL,
    rating_count_ver INT NOT NULL,
    user_rating INT NOT NULL,
    user_rating_ver INT NOT NULL,
    ver VARCHAR(40) NOT NULL,
    cont_rating VARCHAR(40) NOT NULL,
    prime_genre VARCHAR(40) NOT NULL,
    sup_devices_num VARCHAR(40) NOT NULL,
    ipadSc_urls_num VARCHAR(40) NOT NULL,
    lang_num VARCHAR(40) NOT NULL,
    vpp_lic VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
); 


LOAD DATA LOCAL INFILE 'C:\Users\chris\lab-mysql-first-queries\AppleStore.csv' 
INTO TABLE applestore 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from applestore;

#Qu 1 Which are the different genres?
select distinct prime_genre as genres 
from applestore;

#Qu 2 Which is the genre with more apps rated?
select prime_genre as genre, count(user_rating) as number_of_ratings
from applestore
group by(prime_genre)
order by number_of_ratings desc;

#Qu 3. Which is the genre with more apps?
select prime_genre as genre, count(id) as no_of_apps
from AppleStore 
group by prime_genre 
order by count(id) desc;

#Qu 4. Which is the genre with less apps?
select prime_genre as genre, count(`id`) 
from AppleStore 
group by genre 
order by count(`id`) asc;

#Qu 5.Take the 10 apps most rated.
select track_name as apps, sum(rating_count_tot) 
from AppleStore
group by apps
order by sum(rating_count_tot) DESC
limit 10;

#Qu6. Take the 10 apps best rated by users.
select track_name, prime_genre, user_rating 
from applestore
order by user_rating DESC
limit 10;

#Qu 7.Take a look on the data you retrieved in the question 5. Give some insights.


#Qu8. Take a look on the data you retrieved in the question 6. Give some insights.

#Qu 9. Now compare the data from questions 5 and 6. What do you see?

#Qu10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name as app, sum(user_rating) as sum_of_userratings, count(rating_count_tot) as no_of_votes
from applestore
group by app
order by sum_of_userratings, no_of_votes desc
limit 3;

#Qu11) Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
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

