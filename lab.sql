SELECT * FROM labs.applestore_windows;
# 1. Which are the different genres?
SELECT DISTINCT prime_genre as genre FROM labs.applestore_windows;

# 2. Which is the genre with more apps rated?
SELECT prime_genre, count(rating_count_tot) AS Apps_rated 
FROM labs.applestore_windows 
GROUP BY prime_genre 
ORDER BY apps_rated 
DESC LIMIT 	1;
# 3. Which is the genre with more apps?
SELECT prime_genre, COUNT(*) AS Total_apps 
FROM labs.applestore_windows 
GROUP BY prime_genre 
ORDER BY Total_apps DESC
LIMIT 1;
# 4. Which is the one with less??
SELECT prime_genre, COUNT(*) AS Total_apps 
FROM labs.applestore_windows 
GROUP BY prime_genre 
ORDER BY Total_apps ASC
LIMIT 1;

SELECT * FROM labs.applestore_windows;
#5. Take the 10 apps most rated
SELECT track_name, rating_count_tot FROM labs.applestore_windows ORDER BY rating_count_tot DESC LIMIT 10;

#6. Take the 10 apps best rated by users.
SELECT track_name, user_rating  FROM labs.applestore_windows ORDER BY user_rating DESC LIMIT 10;

# 7. Take a look on the data you retrieved in the question 5. Give some insights.
SELECT track_name, rating_count_tot FROM labs.applestore_windows ORDER BY rating_count_tot DESC LIMIT 10;

SELECT 
	AVG(rating_count_tot)
FROM
	(SELECT track_name, rating_count_tot 
	FROM labs.applestore_windows 
	ORDER BY rating_count_tot 
	DESC LIMIT 10) as most_rated;
    
SELECT prime_genre, COUNT(prime_genre) AS Genre_count
FROM
	(SELECT track_name, rating_count_tot, prime_genre 
	FROM labs.applestore_windows 
	ORDER BY rating_count_tot 
	DESC LIMIT 10) as genre
GROUP BY prime_genre
ORDER BY Genre_count DESC;
#8
SELECT prime_genre, COUNT(prime_genre) AS Genre_count
FROM
	(SELECT track_name, user_rating, prime_genre  FROM labs.applestore_windows ORDER BY user_rating DESC LIMIT 10) as genre
GROUP BY prime_genre
ORDER BY Genre_count DESC;

#10

SELECT track_name,rating_count_tot, user_rating
FROM labs.applestore_windows
Order by user_rating DESC, rating_count_tot DESC
LIMIT 3;
#11 

SELECT avg(user_rating)
From labs.applestore_windows
Where price > 0;

SELECT avg(user_rating)
From labs.applestore_windows
Where price = 0;

SELECT avg(price)
From labs.applestore_windows
Where price != 0;

SELECT avg(user_rating)
From labs.applestore_windows
Where price > (SELECT avg(price)
				From labs.applestore_windows
					Where price != 0);

SELECT avg(user_rating)
From labs.applestore_windows
Where price < (SELECT avg(price)
				From labs.applestore_windows
					Where price != 0);
