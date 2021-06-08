SELECT * FROM Apps.applestore2;

USE Apps;

#**1. Which are the different genres?**

SELECT DISTINCT prime_genre
FROM applestore2;

#**2. Which is the genre with more apps rated?**

SELECT prime_genre,id, rating_count_tot FROM applestore2
GROUP BY prime_genre
ORDER BY rating_count_tot DESC;

#R: Social Networking


#**3. Which is the genre with more apps?**
SELECT prime_genre,COUNT(prime_genre) FROM applestore2
GROUP BY prime_genre
ORDER BY Count(prime_genre) DESC;

#R:Games

#**4. Which is the one with less?**
SELECT prime_genre,COUNT(prime_genre) FROM applestore2
GROUP BY prime_genre
ORDER BY Count(prime_genre) ASC;

#R:Catalogs


#**5. Take the 10 apps most rated.**
SELECT track_name,rating_count_tot, user_rating
FROM applestore2 
ORDER BY rating_count_tot DESC
LIMIT 10;




#**6. Take the 10 apps best rated by users.**
SELECT track_name,user_rating,rating_count_tot
FROM applestore2 
ORDER BY user_rating DESC
LIMIT 10;





#**7. Take a look on the data you retrieved in the question 5 (Take the 10 apps most rated.**). Give some insights.**

/* The 10 apps most rated are Facebook, Instagram, Clash of Clans, Temple Run, Pandora, Pinterest, Bible, Candy Crush, Spotify and Angry Birds
Social Networking, Music and Reference are among the most rated genres


#**8. Take a look on the data you retrieved in the question 6. Give some insights.#**6. Take the 10 apps best rated by users.****
The best rated apps aren't the apps that are most rated
they tend to have low rating count totals

#**9. Now compare the data from questions 5 and 6. What do you see?**
The best rated apps aren't the apps that are most rated. The best rated apps have low rating count and the most rated apps have lower user rating*/

#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name,user_rating,rating_count_tot
FROM applestore2 
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

#R: Head Soccer, Plants VS Zombies and Sniper 3D Assassin


#**11. Do people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT track_name,price, user_rating,rating_count_tot
FROM applestore2 
ORDER BY price DESC
LIMIT 10;

SELECT track_name,price, user_rating,rating_count_tot
FROM applestore2 
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name,price, user_rating,rating_count_tot
FROM applestore2 
ORDER BY  rating_count_tot DESC
LIMIT 10;

#R: inutitively yes. high priced tracks have low rating count
#Top 10 by user rating are all free
#Top 10 rating_count total are also all free
