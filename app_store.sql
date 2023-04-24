SELECT * 
FROM lab1.applestore_windows;

#1 Which are the different genres?

SELECT DISTINCT prime_genre
FROM lab1.applestore_windows;

#2 Which is the genre with more apps rated?

SELECT prime_genre, SUM(rating_count_tot) AS total_ratings
FROM lab1.applestore_windows
GROUP BY prime_genre;

#3 Which is the genre with more apps?

SELECT prime_genre, COUNT(*) AS num_apps
FROM lab1.applestore_windows
GROUP BY prime_genre
ORDER BY num_apps DESC;

#4 Which is the one with less?

SELECT prime_genre, COUNT(*) AS num_apps
FROM lab1.applestore_windows
GROUP BY prime_genre
ORDER BY num_apps ASC;

#5 Take the 10 apps most rated

SELECT track_name, rating_count_tot
FROM lab1.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 10;

#6 Take the 10 apps best rated by users

SELECT track_name, user_rating
FROM lab1.applestore_windows
ORDER BY user_rating DESC
LIMIT 10;












