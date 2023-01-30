SELECT DISTINCT prime_genre
FROM apple.applestore;

SELECT prime_genre, rating_count_tot
FROM apple.applestore 
ORDER BY rating_count_tot DESC
LIMIT 1;

#works but there should be easier way(?)

SELECT COUNT(*), prime_genre
FROM apple.applestore
GROUP BY prime_genre
ORDER BY COUNT(*) DESC;


SELECT COUNT(*), prime_genre
FROM apple.applestore
GROUP BY prime_genre
ORDER BY COUNT(*) ASC;

SELECT track_name, rating_count_tot
FROM apple.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating
FROM apple.applestore
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name, rating_count_tot
FROM apple.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

#Social media, games and music dominate the top 10. The two at the top are from the same mother company. 

SELECT track_name, user_rating, prime_genre
FROM apple.applestore
ORDER BY user_rating DESC
LIMIT 10;

#Mostly games dominate the list of best rated apps, with 7 representatives in the top 10.

#None of the top 10 most downloaded apps appear in the top 10 rating list. Games have a strong presence on both lists. 

SELECT track_name, user_rating, prime_genre, rating_count_tot
FROM apple.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

SELECT track_name, user_rating, prime_genre, rating_count_tot, price
FROM apple.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 50;

#Out of the 50 top and most rated, only 12 are not free. 

SELECT track_name, rating_count_tot, price
FROM apple.applestore
ORDER BY rating_count_tot DESC
LIMIT 50;

#Out of the 50 most rated, only 6 are not free. 

#Considering those two, I believe it's fair to say price do matters and people engage easier with apps that are free. 
