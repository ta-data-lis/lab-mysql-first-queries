CREATE TABLE IF NOT EXISTS apple_store_data (Unnamed INT, id INT PRIMARY KEY ,
track_name TEXT, sizebytes INT, currency VARCHAR(3), price DECIMAL,
rating_count_tot INT,
rating_count_ver INT,
user_rating DECIMAL,
user_rating_ver DECIMAL,
ver VARCHAR(5),
cont_rating VARCHAR (4),
prime_genre VARCHAR(12),
sub_devices INT,
ipadSc_urls INT,
lang INT,
vpp_lic INT
);

#which are the different genres? 
SELECT DISTINCT(`prime_genre`) FROM apple_store_data;

#Which is the genre with more apps rated?
Query : SELECT * FROM apple_store_data ORDER BY rating_count_tot DESC LIMIT 1;


#which is the genre with more apps?
SELECT prime_genre, COUNT(*) FROM apple_store_data GROUP BY prime_genre ;

#which is the one with less?
SELECT prime_genre, COUNT(*) FROM apple_store_data GROUP BY prime_genre ORDER BY COUNT(*) ASC;

#take the 10 apps most rated
SELECT track_name,rating_count_tot FROM apple_store_data ORDER BY rating_count_tot DESC LIMIT 10;

#take the 10 apps best rated by users
SELECT track_name, user_rating FROM apple_store_data ORDER BY user_rating DESC LIMIT 10;

#top 3 apps in user rating and number of votes
SELECT track_name, rating_count_tot, user_rating FROM apple_store_data WHERE user_rating = 5 ORDER BY rating_count_tot DESC LIMIT 3;

#Do people care about the price?
SELECT * FROM apple_store_data ORDER BY price;