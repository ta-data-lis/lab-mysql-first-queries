/* 1st question */
SELECT prime_genre FROM applestore
GROUP BY prime_genre;

/* 2st question */
SELECT prime_genre, COUNT(rating_count_tot)
FROM applestore 
GROUP BY prime_genre;

/* 3st question */

SELECT prime_genre, COUNT(*) as counts
FROM applestore 
GROUP BY prime_genre
ORDER BY counts DESC;

/* 4st question */

SELECT prime_genre, COUNT(*) as counts
FROM applestore 
GROUP BY prime_genre
ORDER BY counts ASC;

/* 5st question */

SELECT rating_count_tot , track_name 
FROM applestore 
ORDER By rating_count_tot DESC
LIMIT 10;

/* 6st question */

SELECT user_rating , track_name 
FROM applestore 
ORDER By user_rating DESC
LIMIT 10;

/* 7st question */

/*Rating count doesn't give any information about the rating quality. The more people rate, doesn't give info if they rated pos/neg, it just gives info about which app received attention */

/* 8st question */

/* The increment of the rating is only 0.5, which means there will be a lot of ratings with 5. How to choose which one of those are the important 10 to display? Best is to take an */
/* additional parameter into consideration that lets us decide about the improtance of the ratings i.e. the rating count. Taking into consideration both rating value and count, we can */
/* decide that the most important ratings with 5 are those who also have the highest rating count.

/* 9st question */

/* Sorting according to both criteria would be the crucial step */

/* 10st question */

SELECT user_rating ,rating_count_tot, track_name 
FROM applestore 
ORDER By user_rating DESC , rating_count_tot DESC
LIMIT 3;

/* 11st question */
/* People care about the price but not necessarily the most expenive is the top rated. People care about cost vs. beneffit  */
SELECT user_rating ,price, track_name 
FROM applestore 
WHERE user_rating >= 4.5
ORDER By price DESC , user_rating DESC
LIMIT 10;

SELECT user_rating ,price, track_name 
FROM applestore 
WHERE user_rating >= 4.5
ORDER By user_rating DESC , price DESC
LIMIT 10;





