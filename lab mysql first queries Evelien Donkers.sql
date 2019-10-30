SELECT * FROM applestore;
#**1. Which are the different genres?**
SELECT prime_genre FROM applestore GROUP BY prime_genre;
#**2. Which is the genre with more apps rated?**
SELECT rating_count_tot, prime_genre FROM applestore;
#**3. Which is the genre with more apps?**
SELECT prime_genre, COUNT(prime_genre) FROM applestore GROUP BY prime_genre;
#**4. Which is the one with less?**
SELECT prime_genre, COUNT(prime_genre) FROM applestore GROUP BY prime_genre;
#**5. Take the 10 apps most rated.**
SELECT rating_count_tot, track_name FROM applestore ORDER BY rating_count_tot DESC LIMIT 10;
#**6. Take the 10 apps best rated by users.**
SELECT user_rating, track_name FROM applestore ORDER BY user_rating DESC LIMIT 10;
#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name FROM applestore ORDER BY user_rating * rating_count_tot DESC LIMIT 3;
#**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
#first look at the highest price and the amount of downloads compaired to the top 10 with size, genre and rating included
SELECT track_name, price, size_bytes, user_rating_ver, prime_genre FROM applestore ORDER BY price DESC LIMIT 10;
#first look at the lowest price (not free) and the amount of downloads compaired to the top 10 with size, genre and rating included
SELECT track_name, price, size_bytes, user_rating_ver, prime_genre FROM applestore WHERE price !=0 ORDER BY price ASC LIMIT 10;
#Look if and which there is a payed app in the top50 then look at the rating for this
SELECT track_name, price, size_bytes, user_rating_ver, prime_genre FROM applestore ORDER BY user_rating DESC LIMIT 10;