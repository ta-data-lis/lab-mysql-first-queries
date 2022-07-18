SELECT distinct prime_genre
FROM my_sql_lab.applestore_windows;

SELECT prime_genre, count(rating_count_ver)
FROM my_sql_lab.applestore_windows
GROUP BY prime_genre
ORDER BY count(rating_count_ver) DESC Limit 1;

SELECT distinct prime_genre, count(*) as freq
FROM my_sql_lab.applestore_windows;

Select prime_genre, count(*) as freq
FROM my_sql_lab.applestore_windows
group by prime_genre
ORDER BY freq ASC LIMIT 1;

SELECT distinct track_name, count(rating_count_tot) as rating_freq
FROM my_sql_lab.applestore_windows
GROUP BY track_name
ORDER BY count(rating_count_tot) DESC Limit 10;

SELECT distinct track_name, avg(user_rating)
FROM my_sql_lab.applestore_windows
Group BY track_name
Order By AVG(user_rating) DESC Limit 10;

/* 7. The results generated dont have any names and only appear as a string of question marks. perhaps the data type is not compatible with MYSQL
8. with the limit provided (both in the length of the table as well as the rating system) we are unable to see the true, best app
9. even though the data in question 5 has unclear app names, the rating frequency better portrays the popularity of the app, since the values are unique, line by line. 
question 6 has data that is visible however they are all shown to be 5 stars so it is unclear which is truly the best app */ 

SELECT distinct track_name, avg(user_rating), count(*)
FROM my_sql_lab.applestore_windows
Group BY track_name
Order By AVG(user_rating),count(*) DESC ;


