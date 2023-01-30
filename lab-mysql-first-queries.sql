SELECT *
FROM lab1.applestore_windows;

#Q1

SELECT lab1.applestore_windows.prime_genre
FROM lab1.applestore_windows
GROUP BY lab1.applestore_windows.prime_genre;

#Q2

SELECT lab1.applestore_windows.prime_genre, MAX(lab1.applestore_windows.rating_count_ver) as max
FROM lab1.applestore_windows
GROUP BY lab1.applestore_windows.prime_genre ORDER BY max DESC;

#Q3

SELECT lab1.applestore_windows.prime_genre, COUNT(lab1.applestore_windows.prime_genre) as COUNT_GENRE
FROM lab1.applestore_windows
GROUP BY lab1.applestore_windows.prime_genre ORDER BY COUNT_GENRE DESC;

#Q4

SELECT lab1.applestore_windows.track_name, SUM(lab1.applestore_windows.rating_count_tot) as aaa
FROM lab1.applestore_windows
GROUP BY lab1.applestore_windows.track_name
ORDER BY aaa DESC
LIMIT 10;

#Q5

SELECT lab1.applestore_windows.track_name, MAX(lab1.applestore_windows.user_rating) as b
FROM lab1.applestore_windows
GROUP BY lab1.applestore_windows.track_name 
ORDER BY b DESC
LIMIT 10;

#Q6

SELECT lab1.applestore_windows.track_name, MAX(lab1.applestore_windows.user_rating) as a , MAX(rating_count_tot) as b
FROM lab1.applestore_windows
GROUP BY lab1.applestore_windows.track_name ORDER BY a DESC, b DESC
LIMIT 3;

##last question

SELECT  lab1.applestore_windows.price as price, AVG(lab1.applestore_windows.user_rating) as max
FROM lab1.applestore_windows
GROUP BY lab1.applestore_windows.price ORDER BY max DESC, price DESC 
LIMIT 10;

SELECT  lab1.applestore_windows.rating_count_tot as ttvotes, MAX(lab1.applestore_windows.price) as price
FROM lab1.applestore_windows
GROUP BY ttvotes ORDER BY ttvotes DESC, price DESC 
LIMIT 20;